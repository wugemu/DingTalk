.class public Lfyr;
.super Lfyp;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfyr$a;
    }
.end annotation


# instance fields
.field private a:Lfyt;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "Lfyr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lfyp;-><init>()V

    .line 116
    return-void
.end method

.method static synthetic a(Lfyr;)Lfyt;
    .locals 1
    .param p0, "x0"    # Lfyr;

    .prologue
    .line 26
    iget-object v0, p0, Lfyr;->a:Lfyt;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/alibaba/fastjson/JSONObject;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lfyp;->a()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 66
    .local v6, "jobject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v9, p0, Lfyr;->a:Lfyt;

    if-eqz v9, :cond_0

    .line 67
    const-string/jumbo v9, "isCommitDetail"

    iget-object v10, p0, Lfyr;->a:Lfyt;

    invoke-virtual {v10}, Lfyt;->e()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v9

    const-class v10, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 70
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    iget-object v9, p0, Lfyr;->b:Ljava/util/Map;

    if-eqz v9, :cond_2

    .line 71
    iget-object v9, p0, Lfyr;->b:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 72
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lfyr$a;>;"
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v9

    const-class v10, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    .line 73
    .local v8, "obj":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 74
    .local v2, "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfyr$a;

    .line 2116
    .local v3, "entity":Lfyr$a;
    iget v9, v3, Lfyr$a;->a:I

    .line 75
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3116
    .local v1, "count":Ljava/lang/Integer;
    iget v9, v3, Lfyr$a;->b:I

    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 77
    .local v7, "noise":Ljava/lang/Integer;
    const-string/jumbo v9, "count"

    invoke-virtual {v8, v9, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v9, "noise"

    invoke-virtual {v8, v9, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v10, "dimensions"

    if-eqz v2, :cond_1

    new-instance v9, Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_1
    invoke-virtual {v8, v10, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v9, "measures"

    invoke-virtual {v3}, Lfyr$a;->a()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v2    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "entity":Lfyr$a;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lfyr$a;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "jobject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "noise":Ljava/lang/Integer;
    .end local v8    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 79
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .restart local v1    # "count":Ljava/lang/Integer;
    .restart local v2    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v3    # "entity":Lfyr$a;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lfyr$a;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "jobject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v7    # "noise":Ljava/lang/Integer;
    .restart local v8    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 85
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v2    # "dimensionValues":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "entity":Lfyr$a;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lfyr$a;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "noise":Ljava/lang/Integer;
    .end local v8    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :try_start_1
    const-string/jumbo v9, "values"

    invoke-virtual {v6, v9, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-object v6
.end method

.method public final declared-synchronized a(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 9
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p2, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    monitor-enter p0

    if-nez p1, :cond_0

    .line 35
    :try_start_0
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    const-class v7, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-object p1, v0

    .line 38
    :cond_0
    iget-object v4, p0, Lfyr;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 39
    iget-object v4, p0, Lfyr;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfyr$a;

    .line 46
    .local v2, "entity":Lfyr$a;
    :goto_0
    const/4 v3, 0x0

    .line 47
    .local v3, "valid":Z
    iget-object v4, p0, Lfyr;->a:Lfyt;

    if-eqz v4, :cond_1

    .line 48
    iget-object v4, p0, Lfyr;->a:Lfyt;

    .line 1099
    iget-object v7, v4, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    if-eqz v7, :cond_6

    .line 1100
    iget-object v7, v4, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-virtual {v7, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Z

    move-result v3

    .line 1102
    .end local v3    # "valid":Z
    :goto_1
    iget-object v7, v4, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-eqz v7, :cond_1

    .line 1103
    if-eqz v3, :cond_4

    iget-object v4, v4, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-virtual {v4, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_2
    move v3, v4

    .line 50
    .restart local v3    # "valid":Z
    :cond_1
    if-eqz v3, :cond_5

    .line 1210
    iget v4, v2, Lfyr$a;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lfyr$a;->a:I

    .line 52
    invoke-virtual {v2, p2}, Lfyr$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 60
    :cond_2
    :goto_3
    const/4 v4, 0x0

    invoke-super {p0, v4}, Lfyp;->c(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 41
    .end local v2    # "entity":Lfyr$a;
    .end local v3    # "valid":Z
    :cond_3
    :try_start_1
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    const-class v7, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v7, v8}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 42
    .local v1, "dimensionValueHolder":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 43
    new-instance v2, Lfyr$a;

    invoke-direct {v2, p0}, Lfyr$a;-><init>(Lfyr;)V

    .line 44
    .restart local v2    # "entity":Lfyr$a;
    iget-object v4, p0, Lfyr;->b:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v1    # "dimensionValueHolder":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v2    # "entity":Lfyr$a;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v2    # "entity":Lfyr$a;
    :cond_4
    move v4, v6

    .line 1103
    goto :goto_2

    .line 1214
    .restart local v3    # "valid":Z
    :cond_5
    :try_start_2
    iget v4, v2, Lfyr$a;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lfyr$a;->b:I

    .line 56
    iget-object v4, p0, Lfyr;->a:Lfyt;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lfyr;->a:Lfyt;

    invoke-virtual {v4}, Lfyt;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    invoke-virtual {v2, p2}, Lfyr$a;->a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_1
.end method

.method public declared-synchronized clean()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lfyp;->clean()V

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lfyr;->a:Lfyt;

    .line 101
    iget-object v2, p0, Lfyr;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 102
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfzb;->a(Lfzc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 104
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lfyr;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 109
    invoke-super {p0, p1}, Lfyp;->fill([Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lfyr;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfyr;->b:Ljava/util/Map;

    .line 113
    :cond_0
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v0

    iget-object v1, p0, Lfyr;->e:Ljava/lang/String;

    iget-object v2, p0, Lfyr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v0

    iput-object v0, p0, Lfyr;->a:Lfyt;

    .line 114
    return-void
.end method
