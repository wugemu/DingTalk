.class public final Lwc;
.super Ljava/io/FilterOutputStream;
.source "SmtpDataStuffing.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lwc;->a:I

    .line 18
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v3, 0x2e

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 23
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 25
    iput v1, p0, Lwc;->a:I

    .line 41
    :goto_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 42
    return-void

    .line 27
    :cond_0
    iget v0, p0, Lwc;->a:I

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 29
    iput v2, p0, Lwc;->a:I

    goto :goto_0

    .line 31
    :cond_1
    iget v0, p0, Lwc;->a:I

    if-ne v0, v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 34
    invoke-super {p0, v3}, Ljava/io/FilterOutputStream;->write(I)V

    .line 39
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lwc;->a:I

    goto :goto_0
.end method
