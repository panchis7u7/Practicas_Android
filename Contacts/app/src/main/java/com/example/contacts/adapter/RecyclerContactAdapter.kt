package com.example.contacts.adapter

import android.content.Context
import android.content.Intent
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.animation.AnimationUtils
import android.widget.LinearLayout
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.contacts.ContactActivity
import com.example.contacts.MessageActivity
import com.example.contacts.R
import com.example.contacts.model.Contact
import com.google.android.material.floatingactionbutton.FloatingActionButton

class RecyclerContactAdapter(val context: Context, val contactos: List<Contact>):
RecyclerView.Adapter<RecyclerContactAdapter.ItemHolder>(){

    inner class ItemHolder(itemView: View): RecyclerView.ViewHolder(itemView){
        var isOpen: Boolean = false
        val fabOpen = AnimationUtils.loadAnimation(context, R.anim.fab_open_animation)
        val fabClose = AnimationUtils.loadAnimation(context, R.anim.fab_close_animation)
        val textViewName: TextView = itemView.findViewById(R.id.textViewContactName)
        val textViewNumber: TextView = itemView.findViewById(R.id.textViewContactNumber)
        val floatingActionOptions: FloatingActionButton = itemView.findViewById(R.id.floatingActionOptions)
        val floatingActionMessage: FloatingActionButton = itemView.findViewById(R.id.floatingActionMessage)
        val floatingActionDelete: FloatingActionButton = itemView.findViewById(R.id.floatingActionDelete)
        val floatingActionEdit: FloatingActionButton = itemView.findViewById(R.id.floatingActionEdit)
        val floatingActionCall: FloatingActionButton = itemView.findViewById(R.id.floatingActionCall)
        val linearLayoutOpciones: LinearLayout = itemView.findViewById(R.id.linearLayoutOpciones)

        init {

        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ItemHolder {
        return ItemHolder(LayoutInflater.from(parent.context).inflate(R.layout.item_contact_layout, parent, false))
    }

    override fun onBindViewHolder(holder: ItemHolder, position: Int) {
        val contact = contactos.get(position)
        holder.textViewName.text = contact.name
        holder.textViewNumber.text = contact.celphone
        holder.floatingActionOptions.setOnClickListener {
            if (holder.isOpen){
                holder.linearLayoutOpciones.visibility = View.GONE
                holder.floatingActionDelete.startAnimation(holder.fabClose)
                holder.floatingActionEdit.startAnimation(holder.fabClose)
                holder.floatingActionCall.startAnimation(holder.fabClose)
                holder.isOpen = false
            } else {
                holder.linearLayoutOpciones.visibility = View.VISIBLE
                holder.floatingActionDelete.startAnimation(holder.fabOpen)
                holder.floatingActionEdit.startAnimation(holder.fabOpen)
                holder.floatingActionCall.startAnimation(holder.fabOpen)
                holder.isOpen = true
            }

        }
        holder.floatingActionMessage.setOnClickListener {
            context.startActivity(Intent(context, MessageActivity::class.java)
                .putExtra("contact", contact))
        }

        holder.floatingActionEdit.setOnClickListener {
            context.startActivity(Intent(context, ContactActivity::class.java)
                .putExtra("contact", contact))
        }
    }

    override fun getItemCount(): Int = contactos.size

}