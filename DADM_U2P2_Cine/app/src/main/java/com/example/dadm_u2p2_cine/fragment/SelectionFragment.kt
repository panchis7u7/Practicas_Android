package com.example.dadm_u2p2_cine.fragment

import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.appcompat.widget.AppCompatButton
import androidx.core.os.bundleOf
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.dadm_u2p2_cine.R
import com.example.dadm_u2p2_cine.adapter.RecyclerCategoriasAdapter
import com.example.dadm_u2p2_cine.adapter.RecyclerSeatAdapter
import com.example.dadm_u2p2_cine.databinding.FragmentSeatSelectionBinding
import com.example.dadm_u2p2_cine.model.*
import com.example.dadm_u2p2_cine.module.GlideApp
import com.example.dadm_u2p2_cine.stateflow.MovieStateFlow
import kotlinx.coroutines.flow.collect
import java.lang.Exception

class SelectionFragment: Fragment(R.layout.fragment_seat_selection) {
    private var _binding: FragmentSeatSelectionBinding? = null
    private val binding get() = _binding!!
    private var boletos: Int = 0
    private var price: Float = 0f
    private var date: String? = ""
    private var time: String? = ""
    private var idPelicula: Int? = 0

    companion object {
        val seatStates = Array(6, {IntArray(7)})
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentSeatSelectionBinding.inflate(layoutInflater)

        val db = DBManager(requireContext(), "cine", null, 1)
        idPelicula = arguments?.getInt("id")

        binding.recyclerViewSelection.layoutManager = LinearLayoutManager(requireContext(), RecyclerView.VERTICAL, false)
        binding.recyclerViewSelection.adapter = object : RecyclerSeatAdapter(requireContext(), populate()) {
            override fun selectedRow(row: Int, seat: Int, seatStates: Array<IntArray>) {
                //Toast.makeText(requireContext(), "Asiento: ${row}${seat}.", Toast.LENGTH_SHORT).show()
                if(seatStates[row-1][seat] == 0) {
                    boletos++
                    binding.textViewCantidad.text = "${boletos} asientos"
                    price = boletos * 100f
                    binding.textViewPrecio.text = "$${price}.00"
                } else {
                    boletos--
                    binding.textViewCantidad.text = "${boletos} asientos"
                    price = boletos * 100f
                    binding.textViewPrecio.text = "$${price}.00"
                }
                if(boletos > 0 && date != "" && time != "")
                    binding.buttonComprar.isEnabled = true
            }
        }

        binding.recyclerViewDates.layoutManager = LinearLayoutManager(requireContext(), RecyclerView.HORIZONTAL, false)
        binding.recyclerViewDates.adapter = object : RecyclerCategoriasAdapter(requireContext(), db.getMovieDates(idPelicula!!)){
            override fun onButtonSelected(content: String) {
                date = content
                if(boletos > 0 && date != "" && time != "")
                    binding.buttonComprar.isEnabled = true
                getSchedules(db, idPelicula!!, content)
            }

        }

        binding.buttonComprar.setOnClickListener {
            var seatsIds = ""
            //logMatrix(SelectionFragment.seatStates!!)
            for (i in 0 .. SelectionFragment.seatStates?.size!!-1){
                for (j in 0 .. SelectionFragment.seatStates!![i].size-1){
                    if(SelectionFragment.seatStates!![i][j] == 1)
                      seatsIds = seatsIds.plus("[${i+1},${j}] ")
                }
            }

            Toast.makeText(requireContext(), """
                Boletos: ${boletos},
                Horario: ${date},
                Asientos: ${seatsIds},
                Hora: ${time},
                Precio: ${price}
            """.trimIndent(), Toast.LENGTH_LONG).show()

            println(idPelicula!!)

            var compra = Compra(db.getPelicula(idPelicula!!), price, date!!, time!!, boletos, seatsIds, "Peliculas")
            try {
                db.insertCompra(compra)
                findNavController().navigate(R.id.action_selectionFragment_to_compraStatusFragment,
                    bundleOf("status" to "Compra Exitosa!", "imagen" to R.drawable.icon_success))
            } catch (e: Exception){
                e.printStackTrace()
                findNavController().navigate(R.id.action_selectionFragment_to_compraStatusFragment,
                    bundleOf("status" to "Error al realizar la Compra!", "imagen" to R.drawable.icon_error))
            }
        }

        return binding.root
    }

    override fun onDestroy() {
        super.onDestroy()
        _binding = null
    }

    private fun populate(): MutableList<SeatRow>{
        var seats: MutableList<SeatRow> = mutableListOf()

        var row1: MutableList<Int> = mutableListOf()
        row1.add(1)
        row1.add(2)
        row1.add(3)
        row1.add(4)
        row1.add(5)

        var row2: MutableList<Int> = mutableListOf()
        row2.add(1)
        row2.add(2)
        row2.add(3)
        row2.add(4)
        row2.add(5)
        row2.add(6)

        var row3: MutableList<Int> = mutableListOf()
        row3.add(1)
        row3.add(2)
        row3.add(3)
        row3.add(4)
        row3.add(5)
        row3.add(6)
        row3.add(7)

        var row4: MutableList<Int> = mutableListOf()
        row4.add(1)
        row4.add(2)
        row4.add(3)
        row4.add(4)
        row4.add(5)
        row4.add(6)

        var row5: MutableList<Int> = mutableListOf()
        row5.add(1)
        row5.add(2)
        row5.add(3)
        row5.add(4)
        row5.add(5)
        row5.add(6)
        row5.add(7)

        var row6: MutableList<Int> = mutableListOf()
        row6.add(1)
        row6.add(2)
        row6.add(3)
        row6.add(4)
        row6.add(5)
        row6.add(6)

        seats.add(SeatRow(1, row1))
        seats.add(SeatRow(2, row2))
        seats.add(SeatRow(3, row3))
        seats.add(SeatRow(4, row4))
        seats.add(SeatRow(5, row5))
        seats.add(SeatRow(6, row6))

        return seats
    }

    private fun logMatrix(seats: Array<IntArray>){
        for(i in 0..seatStates.size-1){
            for(j in 0 .. seatStates[i].size-1){
                print("[$i,$j]: " + seats[i][j]+ ", ")
            }
            println()
        }
    }

    private fun getSchedules(db: DBManager, id: Int, date: String){
        binding.recyclerViewTimes.layoutManager = LinearLayoutManager(requireContext(), RecyclerView.HORIZONTAL, false)
        binding.recyclerViewTimes.adapter = object : RecyclerCategoriasAdapter(requireContext(), db.getMovieSchedulesOnDate(id, date)){
            override fun onButtonSelected(content: String) {
                time = content
                if(boletos > 0 && date != "" && time != "")
                    binding.buttonComprar.isEnabled = true
            }
        }
    }
}