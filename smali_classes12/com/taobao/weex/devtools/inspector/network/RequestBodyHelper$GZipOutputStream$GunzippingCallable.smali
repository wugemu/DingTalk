.class Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;
.super Ljava/lang/Object;
.source "RequestBodyHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GunzippingCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIn:Ljava/io/InputStream;

.field private final mOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->mIn:Ljava/io/InputStream;

    .line 189
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->mOut:Ljava/io/OutputStream;

    .line 190
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->mIn:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    .local v0, "in":Ljava/util/zip/GZIPInputStream;
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->mOut:Ljava/io/OutputStream;

    const/16 v2, 0x400

    new-array v2, v2, [B

    invoke-static {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->access$000(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 199
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 201
    const/4 v1, 0x0

    return-object v1

    .line 198
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 199
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream$GunzippingCallable;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v1
.end method
