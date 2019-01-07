.class public final Lcom/uc/webview/export/internal/android/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private a:Lcom/uc/webview/export/DownloadListener;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/DownloadListener;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/a;->a:Lcom/uc/webview/export/DownloadListener;

    .line 11
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 16
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/a;->a:Lcom/uc/webview/export/DownloadListener;

    if-eqz v0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/a;->a:Lcom/uc/webview/export/DownloadListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/uc/webview/export/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 19
    :cond_0
    return-void
.end method
