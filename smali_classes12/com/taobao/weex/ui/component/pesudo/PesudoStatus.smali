.class public Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;
.super Ljava/lang/Object;
.source "PesudoStatus.java"


# static fields
.field static final CLASS_ACTIVE:I = 0x0

.field static final CLASS_DISABLED:I = 0x3

.field static final CLASS_ENABLED:I = 0x2

.field static final CLASS_FOCUS:I = 0x1

.field private static final SET:I = 0x1

.field private static final UNSET:I


# instance fields
.field private mStatuses:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getStatuses()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, ":active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v1, ":disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    const-string/jumbo v1, ":focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isSet(I)Z
    .locals 2
    .param p1, "clz"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    aget v1, v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setStatus(IZ)V
    .locals 2
    .param p1, "clz"    # I
    .param p2, "status"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->mStatuses:[I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput v0, v1, p1

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "status"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_1
    return-void

    .line 59
    :sswitch_0
    const-string/jumbo v5, ":active"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, ":disabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, ":enabled"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, ":focus"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_0

    .line 61
    :pswitch_0
    invoke-virtual {p0, v1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 64
    :pswitch_1
    invoke-virtual {p0, v4, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 67
    :pswitch_2
    invoke-virtual {p0, v3, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 70
    :pswitch_3
    invoke-virtual {p0, v2, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(IZ)V

    goto :goto_1

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        -0x58a71440 -> :sswitch_0
        -0x58589f4a -> :sswitch_1
        0x2913b5c7 -> :sswitch_2
        0x68ca68de -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    .local p3, "pesudoStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p4, "originalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "prevStatusesStr":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->setStatus(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->getStatuses()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "statusesStr":Ljava/lang/String;
    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 108
    .local v6, "updateStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 113
    .local v3, "prevUpdateStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lfk;

    invoke-direct {v4}, Lfk;-><init>()V

    .line 114
    .local v4, "resultStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    .line 115
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string/jumbo v7, ""

    goto :goto_1

    .line 124
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 125
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 129
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-object v4
.end method
