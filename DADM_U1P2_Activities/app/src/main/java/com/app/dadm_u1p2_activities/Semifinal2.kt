package com.app.dadm_u1p2_activities

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.Toast
import androidx.recyclerview.widget.LinearLayoutManager
import com.app.dadm_u1p2_activities.Models.Civilizacion
import com.app.dadm_u1p2_activities.Models.EditModel
import kotlinx.android.synthetic.main.activity_main.*
import kotlinx.android.synthetic.main.activity_semifinal2.*

class Semifinal2 : AppCompatActivity() {

    private var modelos = mutableListOf<EditModel>()
    private lateinit var adapter: RecyclerAdapter
    private var empate: Boolean = false

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_semifinal2)

        modelos = RecyclerAdapter.models
        adapter = RecyclerAdapter(this, modelos)

        mainRecyclerViewSemi.layoutManager = LinearLayoutManager(this)
        mainRecyclerViewSemi.adapter = adapter

        btnSigS2.setOnClickListener{
            RecyclerAdapter.models = getWinners()
            if(!empate) {
                for (i in 0..RecyclerAdapter.models.size - 1) {
                    Log.d("$i: ",
                            adapter.editModels.get(i).getCivilizacionCasa().getNombre() +
                                    adapter.editModels.get(i).getPuntuajeCasa() +
                                    adapter.editModels.get(i).getCivilizacionVisitante().getNombre() +
                                    adapter.editModels.get(i).getPuntuajeVisitante())
                }
                val intent = Intent(this, FinalActivity::class.java)
                var bundle = Bundle()
                bundle.putString("Equipo1", RecyclerAdapter.models.get(0).getCivilizacionCasa().getNombre())
                bundle.putString("Equipo1Imagen", RecyclerAdapter.models.get(0).getCivilizacionCasa().getImagen())
                bundle.putString("Equipo2", RecyclerAdapter.models.get(0).getCivilizacionVisitante().getNombre())
                bundle.putString("Equipo2Imagen", RecyclerAdapter.models.get(0).getCivilizacionVisitante().getImagen())
                intent.putExtras(bundle)
                startActivity(intent)
            }
        }
    }

    private fun getWinners(): MutableList<EditModel>{
        var duelos: MutableList<EditModel> = arrayListOf()
        var civilizaciones: MutableList<Civilizacion> = arrayListOf()
        for(i in 0 .. adapter.editModels.size-1){
            var duelo: EditModel = adapter.editModels.get(i)
            if(duelo.getPuntuajeCasa() > duelo.getPuntuajeVisitante()) {
                this.empate = false
                civilizaciones.add(duelo.getCivilizacionCasa())
            } else if(duelo.getPuntuajeCasa() < duelo.getPuntuajeVisitante()) {
                this.empate = false
                civilizaciones.add(duelo.getCivilizacionVisitante())
            } else {
                this.empate = true
                Toast.makeText(this, "Hubo un empate!", Toast.LENGTH_LONG).show()
                return arrayListOf()
            }
        }

        for(j in 0 .. civilizaciones.size-1 step 2){
            duelos.add(EditModel(civilizaciones[j], civilizaciones[j+1]))
        }

        return duelos
    }

}