.class final Lwe$d;
.super Ljava/io/InputStream;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Ljava/io/InputStream;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1231
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwe$d;->b:Z

    .line 1232
    iput-object p1, p0, Lwe$d;->a:Ljava/io/InputStream;

    .line 1233
    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1238
    iget-boolean v3, p0, Lwe$d;->c:Z

    if-eqz v3, :cond_0

    move v0, v2

    .line 1256
    :goto_0
    return v0

    .line 1242
    :cond_0
    iget-object v3, p0, Lwe$d;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1243
    .local v0, "d":I
    iget-boolean v3, p0, Lwe$d;->b:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 1245
    iget-object v3, p0, Lwe$d;->a:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1246
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    .line 1248
    iput-boolean v1, p0, Lwe$d;->c:Z

    .line 1249
    iget-object v1, p0, Lwe$d;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move v0, v2

    .line 1250
    goto :goto_0

    .line 1254
    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    :goto_1
    iput-boolean v1, p0, Lwe$d;->b:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
