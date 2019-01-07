.class final Lcom/uc/webview/export/internal/android/i$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/GeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/android/i;

.field private b:Landroid/webkit/GeolocationPermissions$Callback;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/android/i;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/i$b;->a:Lcom/uc/webview/export/internal/android/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/i$b;->b:Landroid/webkit/GeolocationPermissions$Callback;

    .line 47
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;ZZ)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i$b;->b:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/i$b;->b:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 54
    :cond_0
    return-void
.end method
