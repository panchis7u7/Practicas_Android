package com.example.dadm_u1p4_aplicacion_escolar.Interfaces

import android.widget.TableRow
import com.example.dadm_u1p4_aplicacion_escolar.Models.Materia

interface IOnClickSelection {
    fun onSelectionClick(materia: Materia, row: TableRow)
}