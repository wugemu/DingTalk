.class public abstract Lcom/uc/webview/export/WebMessagePort;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/WebMessagePort$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract postMessage(Lcom/uc/webview/export/WebMessage;)V
.end method

.method public abstract setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$a;)V
.end method

.method public abstract setWebMessageCallback(Lcom/uc/webview/export/WebMessagePort$a;Landroid/os/Handler;)V
.end method
