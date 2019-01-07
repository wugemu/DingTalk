.class public abstract Lkic;
.super Lkhw;
.source "PropertyReference.java"

# interfaces
.implements Lkjd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lkhw;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method protected final a()Lkjd;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.1"
    .end annotation

    .prologue
    .line 36
    invoke-super {p0}, Lkhw;->getReflected()Lkiz;

    move-result-object v0

    check-cast v0, Lkjd;

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

    .line 53
    if-ne p1, p0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    instance-of v3, p1, Lkic;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 55
    check-cast v0, Lkic;

    .line 56
    .local v0, "other":Lkic;
    invoke-virtual {p0}, Lkic;->getOwner()Lkjb;

    move-result-object v3

    invoke-virtual {v0}, Lkic;->getOwner()Lkjb;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkic;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lkic;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkic;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lkic;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lkic;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lkic;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkib;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 61
    .end local v0    # "other":Lkic;
    :cond_3
    instance-of v1, p1, Lkjd;

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {p0}, Lkic;->compute()Lkiz;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v2

    .line 64
    goto :goto_0
.end method

.method protected bridge synthetic getReflected()Lkiz;
    .locals 1

    .prologue
    .line 23
    .line 1036
    invoke-super {p0}, Lkhw;->getReflected()Lkiz;

    move-result-object v0

    check-cast v0, Lkjd;

    .line 23
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p0}, Lkic;->getOwner()Lkjb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkic;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkic;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    invoke-virtual {p0}, Lkic;->compute()Lkiz;

    move-result-object v0

    .line 75
    .local v0, "reflected":Lkiz;
    if-eq v0, p0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkic;->getName()Ljava/lang/String;

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
