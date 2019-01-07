.class final Lknd$2;
.super Lknd;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lknd;->create(Lkmy;[BII)Lknd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkmy;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lkmy;I[BI)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lknd$2;->a:Lkmy;

    iput p2, p0, Lknd$2;->b:I

    iput-object p3, p0, Lknd$2;->c:[B

    iput p4, p0, Lknd$2;->d:I

    invoke-direct {p0}, Lknd;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    iget v0, p0, Lknd$2;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lkmy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lknd$2;->a:Lkmy;

    return-object v0
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lknd$2;->c:[B

    iget v1, p0, Lknd$2;->d:I

    iget v2, p0, Lknd$2;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 99
    return-void
.end method
