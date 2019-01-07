.class public abstract Lktu;
.super Ljava/lang/Object;

# interfaces
.implements Lkva;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lkub;

    invoke-direct {v1, v0}, Lkub;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lkub;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    const-string/jumbo v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lkvq;

    invoke-direct {v1, v0}, Lkvq;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lkvq;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lktu;->a()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    :try_start_0
    const-string/jumbo v0, "DER"

    invoke-virtual {p0, v0}, Lktu;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lkvm;
    .locals 1

    invoke-virtual {p0}, Lktu;->d()Lkvm;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lkvm;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lkva;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lkva;

    invoke-virtual {p0}, Lktu;->d()Lkvm;

    move-result-object v0

    invoke-interface {p1}, Lkva;->c()Lkvm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkvm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lktu;->d()Lkvm;

    move-result-object v0

    invoke-virtual {v0}, Lkvm;->hashCode()I

    move-result v0

    return v0
.end method
