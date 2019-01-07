.class public final Lkzs;
.super Lkyb;

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lkyb;)V
    .locals 1

    invoke-virtual {p1}, Lkyb;->c()Lkvm;

    move-result-object v0

    check-cast v0, Lkuc;

    invoke-direct {p0, v0}, Lkyb;-><init>(Lkuc;)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    const-string/jumbo v0, "DER"

    invoke-virtual {p0, v0}, Lkzs;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lkzs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
