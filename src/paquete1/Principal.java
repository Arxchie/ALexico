/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package paquete1;

import java.io.File;

/**
 *
 * @author HP
 */
public class Principal
{
    public static void main(String[] args)
    {
        String ruta="D:\\Documentos\\NetBeansProjects\\compiladores\\src\\paquete1\\aLexico.flex";
        generarLexer(ruta);
    }
    public static void generarLexer(String ruta)
    {
        File archivo = new File(ruta);
        JFlex.Main.generate(archivo);
                
    }
}
