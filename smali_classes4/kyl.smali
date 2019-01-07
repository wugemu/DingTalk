.class public final Lkyl;
.super Lktu;


# static fields
.field private static b:Lkyn;


# instance fields
.field protected a:Llav;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkyn;

    invoke-direct {v0}, Lkyn;-><init>()V

    sput-object v0, Lkyl;->b:Lkyn;

    return-void
.end method

.method public constructor <init>(IIIILktz;)V
    .locals 6

    new-instance v0, Llav$a;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p5}, Lktz;->f()[B

    move-result-object v2

    invoke-direct {v5, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Llav$a;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lkyl;-><init>(Llav;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lktz;)V
    .locals 4

    new-instance v0, Llav$b;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {p2}, Lktz;->f()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Llav$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lkyl;-><init>(Llav;)V

    return-void
.end method

.method public constructor <init>(Llav;)V
    .locals 0

    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkyl;->a:Llav;

    return-void
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkyl;->a:Llav;

    invoke-static {v0}, Lkyn;->a(Llav;)I

    move-result v0

    iget-object v1, p0, Lkyl;->a:Llav;

    invoke-virtual {v1}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1, v0}, Lkyn;->a(Ljava/math/BigInteger;I)[B

    move-result-object v0

    new-instance v1, Lkvo;

    invoke-direct {v1, v0}, Lkvo;-><init>([B)V

    return-object v1
.end method

.method public final e()Llav;
    .locals 1

    iget-object v0, p0, Lkyl;->a:Llav;

    return-object v0
.end method
