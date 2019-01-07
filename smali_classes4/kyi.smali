.class public final Lkyi;
.super Lktu;

# interfaces
.implements Lkyo;


# static fields
.field private static final ah:Ljava/math/BigInteger;


# instance fields
.field public a:Llau;

.field private ai:Lkym;

.field private aj:Ljava/math/BigInteger;

.field public b:Llax;

.field public c:Ljava/math/BigInteger;

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lkyi;->ah:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lkuc;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lktu;-><init>()V

    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    instance-of v0, v0, Lkvj;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lkyi;->ah:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad version in X9ECParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Lkyh;

    new-instance v2, Lkym;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkuc;

    invoke-direct {v2, v0}, Lkym;-><init>(Lkuc;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkuc;

    invoke-direct {v1, v2, v0}, Lkyh;-><init>(Lkym;Lkuc;)V

    .line 1000
    iget-object v0, v1, Lkyh;->a:Llau;

    .line 0
    iput-object v0, p0, Lkyi;->a:Llau;

    new-instance v2, Lkyk;

    iget-object v3, p0, Lkyi;->a:Llau;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lktz;

    invoke-direct {v2, v3, v0}, Lkyk;-><init>(Llau;Lktz;)V

    .line 2000
    iget-object v0, v2, Lkyk;->a:Llax;

    .line 0
    iput-object v0, p0, Lkyi;->b:Llax;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lkyi;->c:Ljava/math/BigInteger;

    .line 3000
    iget-object v0, v1, Lkyh;->b:[B

    .line 0
    iput-object v0, p0, Lkyi;->d:[B

    invoke-virtual {p1}, Lkuc;->f()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lkuc;->a(I)Lkva;

    move-result-object v0

    check-cast v0, Lkvj;

    invoke-virtual {v0}, Lkvj;->e()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lkyi;->aj:Ljava/math/BigInteger;

    :cond_2
    return-void
.end method

.method public constructor <init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 5

    .prologue
    .line 0
    invoke-direct {p0}, Lktu;-><init>()V

    iput-object p1, p0, Lkyi;->a:Llau;

    iput-object p2, p0, Lkyi;->b:Llax;

    iput-object p3, p0, Lkyi;->c:Ljava/math/BigInteger;

    iput-object p4, p0, Lkyi;->aj:Ljava/math/BigInteger;

    iput-object p5, p0, Lkyi;->d:[B

    instance-of v0, p1, Llau$b;

    if-eqz v0, :cond_1

    new-instance v0, Lkym;

    check-cast p1, Llau$b;

    .line 4000
    iget-object v1, p1, Llau$b;->c:Ljava/math/BigInteger;

    .line 0
    invoke-direct {v0, v1}, Lkym;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lkyi;->ai:Lkym;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Llau$a;

    if-eqz v0, :cond_0

    check-cast p1, Llau$a;

    new-instance v0, Lkym;

    .line 5000
    iget v1, p1, Llau$a;->c:I

    .line 6000
    iget v2, p1, Llau$a;->d:I

    .line 7000
    iget v3, p1, Llau$a;->e:I

    .line 8000
    iget v4, p1, Llau$a;->f:I

    .line 0
    invoke-direct {v0, v1, v2, v3, v4}, Lkym;-><init>(IIII)V

    iput-object v0, p0, Lkyi;->ai:Lkym;

    goto :goto_0
.end method


# virtual methods
.method public final d()Lkvm;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Lktv;

    invoke-direct {v0}, Lktv;-><init>()V

    new-instance v1, Lkvj;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkvj;-><init>(I)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkyi;->ai:Lkym;

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkyh;

    iget-object v2, p0, Lkyi;->a:Llau;

    iget-object v3, p0, Lkyi;->d:[B

    invoke-direct {v1, v2, v3}, Lkyh;-><init>(Llau;[B)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkyk;

    iget-object v2, p0, Lkyi;->b:Llax;

    invoke-direct {v1, v2}, Lkyk;-><init>(Llax;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    new-instance v1, Lkvj;

    iget-object v2, p0, Lkyi;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    iget-object v1, p0, Lkyi;->aj:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v1, Lkvj;

    iget-object v2, p0, Lkyi;->aj:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lkvj;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lkva;)V

    :cond_0
    new-instance v1, Lkvs;

    invoke-direct {v1, v0}, Lkvs;-><init>(Lkvb;)V

    return-object v1
.end method

.method public final e()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lkyi;->aj:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    sget-object v0, Lkyi;->ah:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkyi;->aj:Ljava/math/BigInteger;

    goto :goto_0
.end method
