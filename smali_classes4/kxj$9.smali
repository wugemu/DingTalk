.class final Lkxj$9;
.super Lkyj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkxj;
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
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    const-string/jumbo v0, "00689918DBEC7E5A0DD6DFC0AA55C7"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string/jumbo v0, "0095E9A9EC9B297BD4BF36E059184F"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string/jumbo v0, "10C0FB15760860DEF1EEF4D696E676875615175D"

    invoke-static {v0}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v7

    const-string/jumbo v0, "010000000000000108789B2496AF93"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Llau$a;

    const/16 v1, 0x71

    const/16 v2, 0x9

    invoke-direct/range {v0 .. v6}, Llau$a;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v1, "0401A57A6A7B26CA5EF52FCDB816479700B3ADC94ED1FE674C06E695BABA1D"

    invoke-static {v1}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Llau;->a([B)Llax;

    move-result-object v4

    new-instance v2, Lkyi;

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method
