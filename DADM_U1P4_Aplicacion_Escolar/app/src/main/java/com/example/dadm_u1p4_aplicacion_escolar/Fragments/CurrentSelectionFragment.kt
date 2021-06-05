package com.example.dadm_u1p4_aplicacion_escolar.Fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TableLayout
import android.widget.TableRow
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.fragment.app.activityViewModels
import com.example.dadm_u1p4_aplicacion_escolar.R
import com.example.dadm_u1p4_aplicacion_escolar.Viewmodels.MateriaViewModel
import com.example.dadm_u1p4_aplicacion_escolar.databinding.FragmentCurrentSelectionBinding
import com.google.android.material.button.MaterialButton

class CurrentSelectionFragment: Fragment(R.layout.fragment_current_selection) {
    private var _binding: FragmentCurrentSelectionBinding? = null
    private val binding get() = _binding!!
    private val materiasViewModel: MateriaViewModel by activityViewModels()

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        _binding = FragmentCurrentSelectionBinding.inflate(layoutInflater)

        materiasViewModel.materia.observe(viewLifecycleOwner) { materia ->
            val row = TableRow(context)
            val tableRowParams = TableLayout.LayoutParams(TableLayout.LayoutParams.MATCH_PARENT,
                TableLayout.LayoutParams.WRAP_CONTENT)
            tableRowParams.setMargins(0, 0, 0, 0)
            row.setPadding(0, 0, 0, 0)
            row.layoutParams = tableRowParams

            val textViewClave = TextView(context)
            textViewClave.setPadding(5, 10, 0, 10)
            textViewClave.text = materia.clave
            textViewClave.setTextColor(requireContext().resources.getColor(R.color.black))
            row.addView(textViewClave)

            val textViewMateria = TextView(context)
            textViewMateria.setPadding(5, 10, 0, 10)
            textViewMateria.text = materia.materia
            textViewMateria.setTextColor(requireContext().resources.getColor(R.color.black))
            row.addView(textViewMateria)

            val textViewGrupo = TextView(context)
            textViewGrupo.setPadding(5, 10, 0, 10)
            textViewGrupo.text = materia.grupo
            textViewGrupo.setTextColor(requireContext().resources.getColor(R.color.black))
            row.addView(textViewGrupo)

            val textViewParams = TableRow.LayoutParams(TableLayout.LayoutParams.WRAP_CONTENT,
                TableLayout.LayoutParams.WRAP_CONTENT)
            textViewParams.setMargins(0, 5, 15, 5)

            for (i in 0..4) {
                val textViewHorarios = TextView(context)
                textViewHorarios.setPadding(5, 10, 0, 10)
                textViewHorarios.layoutParams = textViewParams
                textViewHorarios.text = materia.horarios?.get(i) + "/" + materia.aulas?.get(i)
                textViewHorarios.setTextColor(requireContext().resources.getColor(R.color.black))
                row.addView(textViewHorarios)
            }

            val buttonParams = TableRow.LayoutParams(TableLayout.LayoutParams.WRAP_CONTENT,
                100)

            val materialButton = MaterialButton(requireContext())
            materialButton.text = "Remover"
            materialButton.setBackgroundColor(requireContext().resources.getColor(R.color.red))
            materialButton.setTextColor(requireContext().resources.getColor(R.color.white))
            materialButton.isAllCaps = false
            materialButton.setPadding(5, 0, 5, 0)
            materialButton.layoutParams = buttonParams
            materialButton.textSize = 12f

            row.addView(materialButton)

            binding.tableLayoutGrupos.addView(row)
        }

        return binding.root
    }

    override fun onDestroy() {
        super.onDestroy()
        _binding = null
    }
}