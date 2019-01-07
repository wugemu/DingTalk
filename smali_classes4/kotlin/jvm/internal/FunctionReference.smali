.class public Lkotlin/jvm/internal/FunctionReference;
.super Lkhw;
.source "FunctionReference.java"

# interfaces
.implements Lkjc;
.implements Lkotlin/jvm/internal/FunctionBase;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "arity"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lkhw;-><init>()V

    .line 27
    iput p1, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "arity"    # I
    .param p2, "receiver"    # Ljava/lang/Object;
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lkhw;-><init>(Ljava/lang/Object;)V

    .line 33
    iput p1, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 34
    return-void
.end method


# virtual methods
.method protected computeReflected()Lkiz;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lkii;->a(Lkotlin/jvm/internal/FunctionReference;)Lkjc;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p1, p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    instance-of v3, p1, Lkotlin/jvm/internal/FunctionReference;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 87
    check-cast v0, Lkotlin/jvm/internal/FunctionReference;

    .line 89
    .local v0, "other":Lkotlin/jvm/internal/FunctionReference;
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkjb;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkjb;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/FunctionReference;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkib;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 94
    .end local v0    # "other":Lkotlin/jvm/internal/FunctionReference;
    :cond_3
    instance-of v1, p1, Lkjc;

    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->compute()Lkiz;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public getArity()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    return v0
.end method

.method protected bridge synthetic getReflected()Lkiz;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkjc;

    move-result-object v0

    return-object v0
.end method

.method protected getReflected()Lkjc;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 44
    invoke-super {p0}, Lkhw;->getReflected()Lkiz;

    move-result-object v0

    check-cast v0, Lkjc;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getOwner()Lkjb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isExternal()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkjc;

    move-result-object v0

    invoke-interface {v0}, Lkjc;->isExternal()Z

    move-result v0

    return v0
.end method

.method public isInfix()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkjc;

    move-result-object v0

    invoke-interface {v0}, Lkjc;->isInfix()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkjc;

    move-result-object v0

    invoke-interface {v0}, Lkjc;->isInline()Z

    move-result v0

    return v0
.end method

.method public isOperator()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkjc;

    move-result-object v0

    invoke-interface {v0}, Lkjc;->isOperator()Z

    move-result v0

    return v0
.end method

.method public isSuspend()Z
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lkjc;

    move-result-object v0

    invoke-interface {v0}, Lkjc;->isSuspend()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 107
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->compute()Lkiz;

    move-result-object v0

    .line 108
    .local v0, "reflected":Lkiz;
    if-eq v0, p0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "<init>"

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "constructor (Kotlin reflection is not available)"

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "function "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (Kotlin reflection is not available)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
