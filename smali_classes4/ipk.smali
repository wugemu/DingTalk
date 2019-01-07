.class public final Lipk;
.super Ljava/lang/Object;
.source "UCDownloadListener.java"

# interfaces
.implements Lcom/uc/webview/export/DownloadListener;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APDownloadListener;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lipk;->a:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 12
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 17
    iget-object v0, p0, Lipk;->a:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    if-eqz v0, :cond_0

    .line 18
    iget-object v1, p0, Lipk;->a:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/webview/APDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 20
    :cond_0
    return-void
.end method
