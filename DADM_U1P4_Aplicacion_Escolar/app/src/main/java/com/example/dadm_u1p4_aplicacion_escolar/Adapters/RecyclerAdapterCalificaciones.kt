package com.example.dadm_u1p4_aplicacion_escolar.Adapters

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.dadm_u1p4_aplicacion_escolar.Models.Materia
import com.example.dadm_u1p4_aplicacion_escolar.Models.ReporteSemestral
import com.example.dadm_u1p4_aplicacion_escolar.R

class RecyclerAdapterCalificaciones (private var context: Context,
                                     private var registros: MutableList<ReporteSemestral>) :
RecyclerView.Adapter<RecyclerAdapterCalificaciones.ItemHolder>(){
    inner class ItemHolder(itemView: View) : RecyclerView.ViewHolder(itemView){
        val textViewPromedio: TextView = itemView.findViewById(R.id.textViewPromedio)
        val textViewCreditos: TextView = itemView.findViewById(R.id.textViewCreditos)
        val recyclerView: RecyclerView = itemView.findViewById(R.id.recyclerCalificaciones)
        init {

        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ItemHolder {
        val itemHolder = LayoutInflater.from(parent.context).inflate(R.layout.recycler_calificaciones_item_layout,
        parent, false)

        return  ItemHolder(itemHolder)
    }

    override fun onBindViewHolder(holder: ItemHolder, position: Int) {
        var reporte: ReporteSemestral = registros.get(position)
        holder.textViewPromedio.text = String.format("%.2f", reporte.promedio)
        holder.textViewCreditos.text = reporte.creditos.toString()
        setCallItemRecycler(holder.recyclerView, reporte.materias!! )
    }

    override fun getItemCount(): Int {
        return registros.size
    }

    private fun setCallItemRecycler(recyclerView: RecyclerView, registros: MutableList<Materia>){
        var itemRecyclerAdapter = RecyclerAdapterCalificacionesItems(context, registros)
        recyclerView.layoutManager = LinearLayoutManager(context, RecyclerView.VERTICAL, false)
        recyclerView.adapter = itemRecyclerAdapter
    }
}