.class public final Llap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lkzv;


# instance fields
.field private a:Llar;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lkvn;

    invoke-direct {v1, p1}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkwo;->a(Lkvn;)Lkwp;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "no key parameter set for passed in name/OID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v1

    invoke-static {p1}, Lkwo;->a(Ljava/lang/String;)Lkvn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1000
    iget-object p1, v1, Lkvn;->a:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Lkwo;->a(Lkvn;)Lkwp;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Llar;

    .line 2000
    iget-object v2, v0, Lkwp;->b:Lkvj;

    invoke-virtual {v2}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v2

    .line 3000
    iget-object v3, v0, Lkwp;->c:Lkvj;

    invoke-virtual {v3}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v3

    .line 4000
    iget-object v0, v0, Lkwp;->d:Lkvj;

    invoke-virtual {v0}, Lkvj;->f()Ljava/math/BigInteger;

    move-result-object v0

    .line 0
    invoke-direct {v1, v2, v3, v0}, Llar;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Llap;->a:Llar;

    iput-object p1, p0, Llap;->b:Ljava/lang/String;

    iput-object p2, p0, Llap;->c:Ljava/lang/String;

    iput-object p3, p0, Llap;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Llar;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llap;->a:Llar;

    sget-object v0, Lkwm;->g:Lkvn;

    .line 5000
    iget-object v0, v0, Lkvn;->a:Ljava/lang/String;

    .line 0
    iput-object v0, p0, Llap;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Llap;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Lkwq;)Llap;
    .locals 4

    .prologue
    .line 0
    .line 6000
    iget-object v0, p0, Lkwq;->c:Lkvn;

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Llap;

    .line 7000
    iget-object v1, p0, Lkwq;->a:Lkvn;

    .line 8000
    iget-object v1, v1, Lkvn;->a:Ljava/lang/String;

    .line 9000
    iget-object v2, p0, Lkwq;->b:Lkvn;

    .line 10000
    iget-object v2, v2, Lkvn;->a:Ljava/lang/String;

    .line 11000
    iget-object v3, p0, Lkwq;->c:Lkvn;

    .line 12000
    iget-object v3, v3, Lkvn;->a:Ljava/lang/String;

    .line 0
    invoke-direct {v0, v1, v2, v3}, Llap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Llap;

    .line 13000
    iget-object v1, p0, Lkwq;->a:Lkvn;

    .line 14000
    iget-object v1, v1, Lkvn;->a:Ljava/lang/String;

    .line 15000
    iget-object v2, p0, Lkwq;->b:Lkvn;

    .line 16000
    iget-object v2, v2, Lkvn;->a:Ljava/lang/String;

    .line 0
    invoke-direct {v0, v1, v2}, Llap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llap;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llap;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llap;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    instance-of v1, p1, Llap;

    if-eqz v1, :cond_1

    check-cast p1, Llap;

    iget-object v1, p0, Llap;->a:Llar;

    iget-object v2, p1, Llap;->a:Llar;

    invoke-virtual {v1, v2}, Llar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llap;->c:Ljava/lang/String;

    iget-object v2, p1, Llap;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llap;->d:Ljava/lang/String;

    iget-object v2, p1, Llap;->d:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Llap;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llap;->d:Ljava/lang/String;

    iget-object v2, p1, Llap;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Llap;->a:Llar;

    invoke-virtual {v0}, Llar;->hashCode()I

    move-result v0

    iget-object v1, p0, Llap;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    iget-object v0, p0, Llap;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llap;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
