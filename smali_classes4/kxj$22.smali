.class final Lkxj$22;
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
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-string/jumbo v0, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string/jumbo v0, "77E2B07370EB0F832A6DD5B62DFC88CD06BB84BE"

    invoke-static {v0}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v9

    const-string/jumbo v0, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v0, Llau$a;

    const/16 v1, 0x11b

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0xc

    invoke-direct/range {v0 .. v8}, Llau$a;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v1, "0405F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B1205303676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"

    invoke-static {v1}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Llau;->a([B)Llax;

    move-result-object v6

    new-instance v4, Lkyi;

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v4
.end method
