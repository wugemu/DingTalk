.class public interface abstract Lcom/uc/webview/export/extension/ILocationManager;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation


# virtual methods
.method public abstract removeUpdates(Landroid/location/LocationListener;)V
.end method

.method public abstract requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
.end method

.method public abstract requestLocationUpdatesWithUrl(Ljava/lang/String;JFLandroid/location/LocationListener;Ljava/lang/String;)V
.end method
