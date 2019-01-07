.class final Lkyf$6;
.super Lkyj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkyj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lkyi;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v8, 0x10

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v0, "155555555555555555555555610C0B196812BFB6288A3EA3"

    invoke-direct {v5, v0, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Llau$a;

    const/16 v1, 0xbf

    const/16 v2, 0x9

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "6C01074756099122221056911C77D77E77A777E7E7E77FCB"

    invoke-direct {v3, v4, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v7, "71FE1AF926CF847989EFEF8DB459F66394D90F32AD3F15E8"

    invoke-direct {v4, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v6}, Llau$a;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lkyi;

    const-string/jumbo v1, "03375D4CE24FDE434489DE8746E71786015009E66E38A926DD"

    invoke-static {v1}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Llau;->a([B)Llax;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method
