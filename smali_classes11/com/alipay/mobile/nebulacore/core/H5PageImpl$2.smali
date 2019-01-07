.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 193
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;

    .line 194
    .local v1, "downloadProvider":Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;
    if-eqz v1, :cond_0

    .line 195
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/alipay/mobile/nebula/provider/H5UrlDownloadProvider;->handleDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLiop;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/nebulacore/Nebula;->openInBrowser(Liop;Ljava/lang/String;Liny;)V

    goto :goto_0
.end method
