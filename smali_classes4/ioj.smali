.class public final Lioj;
.super Ljava/lang/Object;
.source "H5ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lioi;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lioi;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lioi;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lioj;->b:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lioj;->a:Lioi;

    .line 27
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    iget-object v5, p0, Lioj;->a:Lioi;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lioj;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string/jumbo v5, "H5ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "load image "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lioj;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lioj;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v4, "urlPattern":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 39
    .local v1, "conn":Ljava/net/URLConnection;
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 40
    const/16 v5, 0x2710

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 41
    const-string/jumbo v5, "H5ImageLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "load image length "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 43
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Lioj$1;

    invoke-direct {v5, p0, v0}, Lioj$1;-><init>(Lioj;Landroid/graphics/Bitmap;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "conn":Ljava/net/URLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "urlPattern":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 52
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "H5ImageLoader"

    const-string/jumbo v6, "load image exception."

    invoke-static {v5, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    new-instance v5, Lioj$2;

    invoke-direct {v5, p0}, Lioj$2;-><init>(Lioj;)V

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
