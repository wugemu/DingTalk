.class final Lkxl$1;
.super Lkyj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkxl;
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
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v6, 0x10

    new-instance v0, Llau$b;

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "E95E4A5F737059DC60DFC7AD95B3D8139515620F"

    invoke-direct {v1, v2, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "340E7BE2A280EB74E2BE61BADA745D97E8F7C300"

    invoke-direct {v2, v3, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "1E589A8595423412134FAA2DBDEC95C8D8675E58"

    invoke-direct {v3, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2, v3}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Lkyi;

    const-string/jumbo v2, "04BED5AF16EA3F6A4F62938C4631EB5AF7BDBCDBC31667CB477A1A8EC338F94741669C976316DA6321"

    invoke-static {v2}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Llau;->a([B)Llax;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "E95E4A5F737059DC60DF5991D45029409E60FC09"

    invoke-direct {v3, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string/jumbo v5, "01"

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v0, v2, v3, v4}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method
