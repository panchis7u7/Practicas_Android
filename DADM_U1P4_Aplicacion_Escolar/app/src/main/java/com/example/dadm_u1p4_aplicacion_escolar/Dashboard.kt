package com.example.dadm_u1p4_aplicacion_escolar

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.GridLayoutManager
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.dadm_u1p4_aplicacion_escolar.Adapters.RecyclerAdapterDashboard
import com.example.dadm_u1p4_aplicacion_escolar.Models.Alumno
import com.example.dadm_u1p4_aplicacion_escolar.Models.GridButton
import com.example.dadm_u1p4_aplicacion_escolar.databinding.ActivityDashboardBinding
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.firestore.FirebaseFirestore

class Dashboard : AppCompatActivity() {

    private lateinit var binding: ActivityDashboardBinding
    private lateinit var gridLayoutManager: GridLayoutManager
    private lateinit var gridItemAdapter: RecyclerAdapterDashboard
    private lateinit var db: FirebaseFirestore
    private var models: MutableList<GridButton> = mutableListOf<GridButton>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        //setContentView(R.layout.activity_dashboard)
        binding = ActivityDashboardBinding.inflate(layoutInflater)
        setContentView(binding.root)

        Login.auth = FirebaseAuth.getInstance()
        db = FirebaseFirestore.getInstance()
        db.collection("alumnos").document("${Login.auth.currentUser.uid}")
            .get().addOnSuccessListener { document ->
                Alumno.semestre = (document.get("semestre") as Long).toInt()
            }

        db.collection("carreras").document("ITICs").get()
            .addOnSuccessListener { document ->
                Alumno.semestresCarrera = (document.get("semestres")as Long).toInt()
            }

        gridLayoutManager = GridLayoutManager(applicationContext, 2, LinearLayoutManager.VERTICAL, false)
        binding.mainRecyclerView.layoutManager = gridLayoutManager
        binding.mainRecyclerView.setHasFixedSize(true)
        models = populateList()
        gridItemAdapter = RecyclerAdapterDashboard(applicationContext, models)
        binding.mainRecyclerView.adapter = gridItemAdapter
    }

    private fun populateList() : MutableList<GridButton> {
        var items: MutableList<GridButton> = mutableListOf<GridButton>()

        items.add(GridButton("Calificaciones", R.drawable.icon_notas))
        items.add(GridButton("Horario", R.drawable.icon_horario))
        items.add(GridButton("Avance reticular", R.drawable.icon_avance))
        items.add(GridButton("Datos", R.drawable.icon_datos))
        items.add(GridButton("Cerrar Sesion", R.drawable.icon_logout))
        items.add(GridButton("Seleccion de Materias", R.drawable.icon_edit))
        //items.add(GridButton("Hola8", "https://cdn1.iconfinder.com/data/icons/logotypes/32/android-512.png"))

        return items
    }
}