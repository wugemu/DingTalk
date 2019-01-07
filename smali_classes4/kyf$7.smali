.class final Lkyf$7;
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
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v10, 0x10

    new-instance v7, Ljava/math/BigInteger;

    const-string/jumbo v0, "0101BAF95C9723C57B6C21DA2EFF2D5ED588BDD5717E212F9D"

    invoke-direct {v7, v0, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/32 v0, 0xfe48

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    new-instance v0, Llau$a;

    const/16 v1, 0xd0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x53

    new-instance v5, Ljava/math/BigInteger;

    const-string/jumbo v6, "0"

    invoke-direct {v5, v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string/jumbo v9, "00C8619ED45A62E6212E1160349E2BFA844439FAFC2A3FD1638F9E"

    invoke-direct {v6, v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct/range {v0 .. v8}, Llau$a;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lkyi;

    const-string/jumbo v1, "0289FDFBE4ABE193DF9559ECF07AC0CE78554E2784EB8C1ED1A57A"

    invoke-static {v1}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Llau;->a([B)Llax;

    move-result-object v6

    const/4 v9, 0x0

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v4
.end method
