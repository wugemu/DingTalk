.class Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "RequestBodyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private mCount:J

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->this$0:Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper;

    .line 101
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->mCount:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 111
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->mCount:J

    .line 112
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->write([BII)V

    .line 117
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 122
    iget-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->mCount:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/weex/devtools/inspector/network/RequestBodyHelper$CountingOutputStream;->mCount:J

    .line 123
    return-void
.end method
