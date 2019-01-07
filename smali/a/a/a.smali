.class public La/a/a;
.super Ljava/lang/Object;
.source "a.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bc()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 5
    const-string/jumbo v0, "aBcDeFg"

    .line 10
    .local v0, "cca":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "CaDNmeeag"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    const-string/jumbo v1, "d198f576fskjUJNafsl=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    return-object v0

    .line 12
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "c41baesQ5Qgw13=="

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "c41baesQ5Qgw13=="

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
