.class public Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;
.super Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;
.source "SingleActionStratgy.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "regs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/faceauth/model/strategy/ServerActionStrategy;-><init>(Ljava/util/List;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMotionCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 52
    iget v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->b:I

    add-int/lit8 v2, v3, -0x1

    .line 53
    .local v2, "curIndex":I
    if-gez v2, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "actionConfig":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "actions":[Ljava/lang/String;
    array-length v3, v1

    .line 70
    .end local v0    # "actionConfig":Ljava/lang/String;
    .end local v1    # "actions":[Ljava/lang/String;
    .end local v2    # "curIndex":I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getRandom(I)Ljava/util/List;
    .locals 9
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 18
    iget v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->b:I

    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 20
    iget-object v6, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->c:Ljava/util/List;

    iget v7, p0, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->b:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    .local v1, "actionConfig":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .restart local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "actions":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 28
    aget-object v0, v3, v4

    .line 29
    .local v0, "act":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/model/strategy/SingleActionStratgy;->b(Ljava/lang/String;)I

    move-result v5

    .line 31
    .local v5, "task":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "act":Ljava/lang/String;
    .end local v1    # "actionConfig":Ljava/lang/String;
    .end local v3    # "actions":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "task":I
    :cond_0
    if-eqz v2, :cond_1

    .line 44
    .end local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    return-object v2

    .restart local v2    # "actionIndexs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method
