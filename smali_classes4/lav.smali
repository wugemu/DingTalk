.class public abstract Llav;
.super Ljava/lang/Object;

# interfaces
.implements Llat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llav$a;,
        Llav$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/math/BigInteger;
.end method

.method public abstract a(Llav;)Llav;
.end method

.method public abstract b()I
.end method

.method public abstract b(Llav;)Llav;
.end method

.method public abstract c()Llav;
.end method

.method public abstract d()Llav;
.end method

.method public abstract e()Llav;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    invoke-virtual {p0}, Llav;->a()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
