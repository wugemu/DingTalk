.class public Lcom/alibaba/android/ding/data/ObjectDingArrayList;
.super Ljava/util/ArrayList;
.source "ObjectDingArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x710db77262af720L


# instance fields
.field private final transient mNotifier:Lbbq;

.field private final transient mOrderlessDingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private final transient mOrderlyDingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private final transient mType:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lbbq;)V
    .locals 1
    .param p1, "t"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "notifier"    # Lbbq;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mType:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    .line 33
    iput-object p2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mNotifier:Lbbq;

    .line 34
    return-void
.end method

.method private findAndRemoveOrderlessDing(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 342
    .restart local v0    # "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-object v0
.end method

.method private findAndRemoveOrderlessDings(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/Collection",
            "<+",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 350
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    move-object v4, p1

    .line 351
    .local v4, "ret":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v6, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 352
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v1, "dings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 355
    .local v2, "dingsToAdd":[Ljava/lang/Object;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v3, v2, v6

    .line 356
    .local v3, "object":Ljava/lang/Object;
    instance-of v8, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v8, :cond_0

    move-object v0, v3

    .line 357
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 358
    .local v0, "dingToAdd":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findAndRemoveOrderlessDing(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v5

    .line 360
    .local v5, "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v5, :cond_1

    .line 361
    invoke-direct {p0, v5, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 362
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v0    # "dingToAdd":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v5    # "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 364
    .restart local v0    # "dingToAdd":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .restart local v5    # "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 369
    .end local v0    # "dingToAdd":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v5    # "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_2
    move-object v4, v1

    .line 372
    .end local v1    # "dings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v2    # "dingsToAdd":[Ljava/lang/Object;
    :cond_3
    return-object v4
.end method

.method private merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "originDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "newDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, p2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 107
    :cond_0
    return-void
.end method

.method private merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p1, "data"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)Z

    move-result v0

    return v0
.end method

.method private merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)Z
    .locals 4
    .param p1, "data"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "sort"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findAndRemoveOrderlessDing(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 123
    .local v1, "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0, v1, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 125
    move-object p1, v1

    .line 127
    :cond_0
    invoke-super {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v0, 0x1

    .line 144
    .end local v1    # "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_1
    :goto_0
    return v0

    .line 132
    .restart local v1    # "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0, v2, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 139
    :goto_1
    if-eqz p2, :cond_1

    .line 140
    sget-object v2, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private merge(Ljava/util/Collection;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v8, 0x0

    .line 152
    .local v8, "ret":Z
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findAndRemoveOrderlessDings(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 154
    .local v1, "diffWithStagedDings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-super {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 155
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 156
    .local v6, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    iget-object v10, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    .end local v6    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_0
    invoke-super {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    const/4 v8, 0x1

    .line 194
    .end local v1    # "diffWithStagedDings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_1
    :goto_1
    return v8

    .line 161
    .restart local v1    # "diffWithStagedDings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "a":[Ljava/lang/Object;
    const/4 v9, 0x0

    aget-object v2, v0, v9

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 163
    .local v2, "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v4, v0, v9

    check-cast v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 164
    .local v4, "last":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-super {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-lez v9, :cond_4

    .line 165
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 166
    .restart local v6    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    iget-object v10, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 168
    .end local v6    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_3
    const/4 v9, 0x0

    invoke-super {p0, v9, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 169
    const/4 v8, 0x1

    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v10

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-super {p0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    const/4 v3, 0x1

    .line 172
    .local v3, "isAllHistory":Z
    :goto_3
    if-eqz v3, :cond_7

    .line 173
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 174
    .restart local v6    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    iget-object v10, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 171
    .end local v3    # "isAllHistory":Z
    .end local v6    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 176
    .restart local v3    # "isAllHistory":Z
    :cond_6
    invoke-super {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 179
    :cond_7
    array-length v10, v0

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_9

    aget-object v5, v0, v9

    .line 180
    .local v5, "object":Ljava/lang/Object;
    instance-of v11, v5, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v11, :cond_8

    move-object v7, v5

    .line 181
    check-cast v7, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 182
    .local v7, "remote":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    const/4 v11, 0x0

    invoke-direct {p0, v7, v11}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 183
    const/4 v8, 0x1

    .line 179
    .end local v7    # "remote":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 187
    .end local v5    # "object":Ljava/lang/Object;
    :cond_9
    if-eqz v8, :cond_1

    .line 188
    sget-object v9, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {p0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_1
.end method

.method private notifyDataSourceChanged()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mNotifier:Lbbq;

    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mType:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderless()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lbbq;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Ljava/util/List;Ljava/util/List;)V

    .line 408
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 1518
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$63;

    invoke-direct {v2, v0}, Lbbp$63;-><init>(Lbbp;)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method private removeOrderlessDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 3
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 376
    if-nez p1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v1

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "dingId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 384
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 385
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private removeOrderlessDing(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "objectDings":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v3, 0x0

    .line 391
    if-nez p1, :cond_1

    move v2, v3

    .line 403
    :cond_0
    return v2

    .line 394
    :cond_1
    const/4 v2, 0x0

    .line 395
    .local v2, "ret":Z
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 396
    .local v0, "dingsToRemove":[Ljava/lang/Object;
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 397
    .local v1, "object":Ljava/lang/Object;
    instance-of v5, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v5, :cond_2

    .line 398
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->removeOrderlessDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 399
    const/4 v2, 0x1

    .line 396
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    .line 39
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    .line 43
    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->add(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Ljava/util/Collection;)Z

    move-result v0

    .line 49
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    .line 53
    :cond_0
    return v0
.end method

.method public addToOrderlyOrOrderless(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 10
    .param p1, "dingToAdd"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 222
    move-object v1, p1

    .line 223
    .local v1, "ret":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    const/4 v2, 0x0

    .line 224
    .local v2, "shouldNotify":Z
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 225
    invoke-super {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v6

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-super {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v6

    invoke-super {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 228
    .local v0, "isOrderlyInCache":Z
    :cond_1
    if-eqz v0, :cond_5

    .line 229
    iget-object v5, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 230
    .local v4, "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v4, :cond_4

    .line 231
    invoke-direct {p0, v4, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 232
    move-object v1, v4

    .line 248
    .end local v4    # "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    .line 253
    .end local v0    # "isOrderlyInCache":Z
    :cond_3
    return-object v1

    .line 234
    .restart local v0    # "isOrderlyInCache":Z
    .restart local v4    # "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_4
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    const/4 v2, 0x1

    goto :goto_0

    .line 239
    .end local v4    # "tmp":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 240
    .local v3, "stagedDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v3, :cond_6

    .line 241
    invoke-direct {p0, v3, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 242
    move-object v1, v3

    goto :goto_0

    .line 244
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addToOrderlyOrOrderless(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "collection":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v7, 0x0

    .line 257
    if-nez p1, :cond_0

    .line 311
    :goto_0
    return v7

    .line 260
    :cond_0
    sget-object v8, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    const/4 v4, 0x0

    .line 263
    .local v4, "orderlessRet":Z
    const/4 v5, 0x0

    .line 265
    .local v5, "orderlyRet":Z
    invoke-super {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 269
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 270
    .local v0, "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 271
    iget-object v7, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 272
    .local v6, "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-nez v6, :cond_2

    .line 273
    iget-object v7, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const/4 v4, 0x1

    .line 278
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 276
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_2

    .line 282
    .end local v0    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    .end local v6    # "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_3
    invoke-super {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 283
    .local v1, "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-super {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 285
    .local v3, "last":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 286
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 287
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 288
    .restart local v0    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 289
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->R()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 290
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 291
    .restart local v6    # "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-nez v6, :cond_6

    .line 292
    iget-object v7, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/4 v4, 0x1

    .line 297
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 295
    :cond_6
    invoke-direct {p0, v6, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_4

    .line 302
    .end local v0    # "ding":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v6    # "staged":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 303
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->merge(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 304
    const/4 v5, 0x1

    .line 308
    .end local v1    # "first":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v3    # "last":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_8
    if-nez v4, :cond_9

    if-eqz v5, :cond_a

    .line 309
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    .line 311
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    goto :goto_0
.end method

.method public findInOrderlyAndOrderless(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0
.end method

.method public getOrderless()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getOrderlyAndOrderless()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v1, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlessDingsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    instance-of v2, p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-nez v2, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 72
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 61
    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 63
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    .local v1, "ret":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    goto :goto_0

    .line 67
    .end local v1    # "ret":Z
    :cond_2
    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->removeOrderlessDing(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    .restart local v1    # "ret":Z
    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 78
    .local v1, "removeRet":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "object":Ljava/lang/Object;
    instance-of v3, v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    move-object v3, v0

    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    iget-object v5, p0, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->mOrderlyDingsMap:Ljava/util/Map;

    move-object v3, v0

    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-super {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->removeOrderlessDing(Ljava/util/Collection;)Z

    move-result v2

    .line 86
    .local v2, "removeStagedRet":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->notifyDataSourceChanged()V

    .line 89
    :cond_3
    return v1
.end method

.method public removeFromOrderlyAndOrderless(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z
    .locals 1
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFromOrderlyAndOrderless(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 319
    .local p1, "dingIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    :cond_0
    const/4 v2, 0x0

    .line 335
    :cond_1
    return v2

    .line 322
    :cond_2
    const/4 v2, 0x0

    .line 323
    .local v2, "ret":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 324
    .local v0, "dingId":Ljava/lang/Long;
    if-eqz v0, :cond_3

    .line 327
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->findInOrderlyAndOrderless(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 328
    .local v1, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v1, :cond_3

    .line 331
    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->removeFromOrderlyAndOrderless(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 332
    const/4 v2, 0x1

    goto :goto_0
.end method
