.class public Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;
.super Ljava/lang/Object;
.source "RequestBodyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;,
        Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;
    }
.end annotation


# static fields
.field protected static final DEFLATE_ENCODING:Ljava/lang/String; = "deflate"

.field protected static final GZIP_ENCODING:Ljava/lang/String; = "gzip"


# instance fields
.field private mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

.field private mDeflatingOutput:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;

.field private final mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

.field private final mRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventReporter"    # Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    .line 54
    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mRequestId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private throwIfNoBody()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->hasBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No body found; has createBodySink been called?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public createBodySink(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "contentEncoding"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v0, "deflatedOutput":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v2, "gzip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;->create(Ljava/io/OutputStream;)Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$GZipOutputStream;

    move-result-object v1

    .line 68
    .local v1, "deflatingOutput":Ljava/io/OutputStream;
    :goto_0
    new-instance v2, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;-><init>(Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatingOutput:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;

    .line 69
    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    .line 71
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatingOutput:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;

    return-object v2

    .line 62
    .end local v1    # "deflatingOutput":Ljava/io/OutputStream;
    :cond_0
    const-string/jumbo v2, "deflate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v1, Ljava/util/zip/InflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v1    # "deflatingOutput":Ljava/io/OutputStream;
    goto :goto_0

    .line 65
    .end local v1    # "deflatingOutput":Ljava/io/OutputStream;
    :cond_1
    move-object v1, v0

    .restart local v1    # "deflatingOutput":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public getDisplayBody()[B
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->throwIfNoBody()V

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportDataSent()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->throwIfNoBody()V

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mEventReporter:Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mRequestId:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;->mDeflatingOutput:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;

    invoke-virtual {v3}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->getCount()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/network/NetworkEventReporter;->dataSent(Ljava/lang/String;II)V

    .line 89
    return-void
.end method
