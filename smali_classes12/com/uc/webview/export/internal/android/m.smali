.class public final Lcom/uc/webview/export/internal/android/m;
.super Landroid/webkit/WebMessage;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private a:Lcom/uc/webview/export/WebMessage;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebMessage;)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p1}, Lcom/uc/webview/export/WebMessage;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebMessage;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/m;->a:Lcom/uc/webview/export/WebMessage;

    .line 13
    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/m;->a:Lcom/uc/webview/export/WebMessage;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebMessage;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
