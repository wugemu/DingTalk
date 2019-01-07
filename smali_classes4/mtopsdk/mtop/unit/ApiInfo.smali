.class public Lmtopsdk/mtop/unit/ApiInfo;
.super Ljava/lang/Object;
.source "ApiInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# static fields
.field private static final serialVersionUID:J = -0x138b8cf3c57a9efdL


# instance fields
.field public api:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 57
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 58
    check-cast v0, Lmtopsdk/mtop/unit/ApiInfo;

    .line 59
    .local v0, "other":Lmtopsdk/mtop/unit/ApiInfo;
    iget-object v3, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 60
    iget-object v3, v0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object v3, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    iget-object v4, v0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iget-object v3, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 65
    iget-object v3, v0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_6
    iget-object v3, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    iget-object v4, v0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v1, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 43
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 44
    return v0

    .line 42
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 43
    .restart local v0    # "result":I
    :cond_1
    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ApiInfo ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, ", v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/unit/ApiInfo;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
