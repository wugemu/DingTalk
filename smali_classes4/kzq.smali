.class public final Lkzq;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Llag;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 0
    invoke-static {p0}, Lkwn;->a(Ljava/lang/String;)Lkyx;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lkvn;

    invoke-direct {v0, p0}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkwn;->a(Lkvn;)Lkyx;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v6

    :cond_0
    new-instance v0, Llag;

    .line 1000
    iget-object v2, v1, Lkyx;->a:Llau;

    .line 2000
    iget-object v3, v1, Lkyx;->c:Llax;

    .line 3000
    iget-object v4, v1, Lkyx;->d:Ljava/math/BigInteger;

    .line 4000
    iget-object v5, v1, Lkyx;->e:Ljava/math/BigInteger;

    move-object v1, p0

    .line 0
    invoke-direct/range {v0 .. v6}, Llag;-><init>(Ljava/lang/String;Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v6, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
