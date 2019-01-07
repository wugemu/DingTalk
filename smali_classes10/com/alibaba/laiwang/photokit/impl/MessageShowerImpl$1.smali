.class final Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;
.super Ljava/lang/Object;
.source "MessageShowerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 226
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->a:Ljava/lang/String;

    .line 228
    .local v3, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->a:Ljava/lang/String;

    const-string/jumbo v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->a:Ljava/lang/String;

    const-string/jumbo v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->a(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhcs;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 230
    const-string/jumbo v0, "saveImage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "use default path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lhcw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lhcw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v4, "100002"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->a(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 241
    .local v1, "inputStream":Ljava/io/InputStream;
    if-nez v1, :cond_3

    .line 243
    const-string/jumbo v0, "saveImage"

    const-string/jumbo v4, "save fail cause cache inputStream is null"

    invoke-static {v0, v4}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v4, "100004"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_3
    :try_start_0
    invoke-static {v1}, Lhbi;->b(Ljava/io/InputStream;)Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;

    move-result-object v2

    .line 253
    .local v2, "imageFormat":Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    instance-of v0, v1, Ljava/io/FileInputStream;

    if-eqz v0, :cond_4

    .line 254
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 255
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->a(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 256
    if-nez v1, :cond_4

    .line 257
    const-string/jumbo v0, "saveImage"

    const-string/jumbo v4, "save fail cause cache inputStream is null"

    invoke-static {v0, v4}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v4, "100004"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v2    # "imageFormat":Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    iget-object v6, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    move-object v5, v1

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->a(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 264
    .restart local v2    # "imageFormat":Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;
    :cond_4
    :try_start_1
    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;->isWebp(Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->a(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;Ljava/io/InputStream;Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->e:Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;

    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;->b(Lcom/alibaba/laiwang/photokit/impl/MessageShowerImpl;Ljava/io/InputStream;Lcom/alibaba/laiwang/photokit/imageformat/ImageFormat;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
