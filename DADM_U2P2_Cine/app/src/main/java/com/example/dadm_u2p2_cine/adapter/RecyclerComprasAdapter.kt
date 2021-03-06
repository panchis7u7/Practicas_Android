package com.example.dadm_u2p2_cine.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.example.dadm_u2p2_cine.R
import com.example.dadm_u2p2_cine.model.Compra
import com.example.dadm_u2p2_cine.module.GlideApp
import com.google.android.material.imageview.ShapeableImageView

class RecyclerComprasAdapter(val context: Context, val compras: List<Compra>):
RecyclerView.Adapter<RecyclerComprasAdapter.ItemHolder>(){

    inner class ItemHolder(itemView: View): RecyclerView.ViewHolder(itemView){
        val textViewTitulo: TextView = itemView.findViewById(R.id.textViewTitulo)
        val imageViewCover: ShapeableImageView = itemView.findViewById(R.id.imageViewCover)
        val textViewHora: TextView = itemView.findViewById(R.id.textViewHora)
        val textViewTotal: TextView = itemView.findViewById(R.id.textViewTotal)
        val textViewAsientos: TextView = itemView.findViewById(R.id.textViewAsientos)

        init {

        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ItemHolder {
        return ItemHolder(LayoutInflater.from(parent.context).inflate(R.layout.recycler_compra_item_layout, parent, false))
    }

    override fun onBindViewHolder(holder: ItemHolder, position: Int) {
        val pelicula: Compra = compras.get(position)
        holder.textViewTitulo.text = pelicula.pelicula.titulo
        GlideApp.with(context)
            .load(pelicula.pelicula.cover)
            .into(holder.imageViewCover)
        holder.textViewHora.text = pelicula.hora
        holder.textViewTotal.text = "$" + pelicula.total.toString() + "0 MXN"
        holder.textViewAsientos.text = pelicula.asientos
    }

    override fun getItemCount(): Int = compras.size

}