package com.example.bocchiapp
import android.appwidget.AppWidgetManager
import android.content.Context
import android.graphics.BitmapFactory
import android.widget.RemoteViews
import es.antonborri.home_widget.HomeWidgetProvider
import es.antonborri.home_widget.HomeWidgetPlugin
import android.content.SharedPreferences

class BocchiTheRock : HomeWidgetProvider() {

    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
        widgetData: SharedPreferences
    ) {
        val title = widgetData.getString("headline_title", "Default Title")
        val description = widgetData.getString("headline_description", "Default Description")
        val imagePath = widgetData.getString("headline_image", null)
    
        val views = RemoteViews(context.packageName, R.layout.bocchi_the_rock)
        views.setTextViewText(R.id.headline_title, title)
        views.setTextViewText(R.id.headline_description, description)
    
        imagePath?.let { path ->
            val bitmap = BitmapFactory.decodeFile(path)
            if (bitmap != null) {
                views.setImageViewBitmap(R.id.headline_image, bitmap)
            }
        }
    
        appWidgetIds.forEach { id ->
            appWidgetManager.updateAppWidget(id, views)
        }
    }
    
}
