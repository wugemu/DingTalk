.class public final Lcom/uc/webview/export/internal/android/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IGeolocationPermissions;


# instance fields
.field private a:Landroid/webkit/GeolocationPermissions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/b;->a:Landroid/webkit/GeolocationPermissions;

    .line 15
    return-void
.end method


# virtual methods
.method public final allow(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/b;->a:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->allow(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final clear(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/b;->a:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->clear(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public final clearAll()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/b;->a:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 40
    return-void
.end method

.method public final getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/b;->a:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 25
    return-void
.end method

.method public final getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/b;->a:Landroid/webkit/GeolocationPermissions;

    invoke-virtual {v0, p1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 20
    return-void
.end method
