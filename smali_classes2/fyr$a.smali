.class public final Lfyr$a;
.super Ljava/lang/Object;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfyr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lfyr;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfyr;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    iput-object p1, p0, Lfyr$a;->c:Lfyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v0, p0, Lfyr$a;->a:I

    .line 124
    iput v0, p0, Lfyr$a;->b:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfyr$a;->d:Ljava/util/List;

    .line 126
    return-void
.end method

.method private b(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 11
    .param p1, "originalValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 151
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v7

    const-class v8, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 152
    .local v6, "values":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    iget-object v7, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v7}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v7}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v7

    invoke-virtual {v7}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 153
    iget-object v7, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v7}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v7

    invoke-virtual {v7}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    if-eqz v2, :cond_2

    .line 155
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 156
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 157
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 158
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    if-eqz v1, :cond_1

    .line 159
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v7

    const-class v8, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 160
    .local v5, "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    .line 161
    .local v3, "originalValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 162
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setOffset(D)V

    .line 164
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setValue(D)V

    .line 165
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 156
    .end local v3    # "originalValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .end local v5    # "value":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "j":I
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v2    # "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    .end local v4    # "size":I
    :cond_2
    return-object v6
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Lfyr$a;->d:Ljava/util/List;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lfyr$a;->d:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 175
    :cond_0
    const/4 v12, 0x0

    .line 206
    :cond_1
    return-object v12

    .line 178
    :cond_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v12, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lfyr$a;->d:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 181
    .local v10, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lfyr$a;->d:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 183
    .local v9, "measureValues":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    if-eqz v9, :cond_6

    .line 184
    invoke-virtual {v9}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMap()Ljava/util/Map;

    move-result-object v6

    .line 185
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 188
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v13, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 190
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v11, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 192
    .local v7, "measureName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 193
    .local v8, "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    const-string/jumbo v14, "value"

    invoke-virtual {v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 195
    const-string/jumbo v14, "offset"

    invoke-virtual {v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getOffset()Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->getBuckets()Ljava/util/Map;

    move-result-object v2

    .line 198
    .local v2, "buckets":Ljava/util/Map;
    if-eqz v2, :cond_4

    .line 199
    const-string/jumbo v14, "buckets"

    invoke-interface {v11, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    invoke-interface {v13, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 203
    .end local v2    # "buckets":Ljava/util/Map;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    .end local v7    # "measureName":Ljava/lang/String;
    .end local v8    # "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .end local v11    # "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    .end local v13    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 3
    .param p1, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v1, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v1}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v1}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v1

    invoke-virtual {v1}, Lfyt;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lfyr$a;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lfyr$a;->b(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lfyr$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    invoke-direct {p0, p1}, Lfyr$a;->b(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    .line 135
    .local v0, "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    iget-object v1, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v1}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v1}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v1

    invoke-virtual {v1}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lfyr$a;->c:Lfyr;

    invoke-static {v1}, Lfyr;->a(Lfyr;)Lfyt;

    move-result-object v1

    invoke-virtual {v1}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setBuckets(Ljava/util/List;)V

    .line 138
    :cond_2
    iget-object v1, p0, Lfyr$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    .end local v0    # "ms":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_3
    iget-object v1, p0, Lfyr$a;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0
.end method
