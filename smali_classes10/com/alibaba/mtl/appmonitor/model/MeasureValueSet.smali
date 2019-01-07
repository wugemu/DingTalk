.class public Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
.super Ljava/lang/Object;
.source "MeasureValueSet.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/alibaba/mtl/appmonitor/model/IMerge;
.implements Lfzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/alibaba/mtl/appmonitor/model/IMerge",
        "<",
        "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
        ">;",
        "Lfzc;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    .line 39
    return-void
.end method

.method public static create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    return-object v0
.end method

.method public static create(I)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 3
    .param p0, "initialCapacity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v8, 0x0

    .line 47
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    const-class v5, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 48
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    if-eqz p0, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 50
    .local v1, "measureName":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    .line 51
    .local v2, "measureValue":Ljava/lang/Double;
    if-eqz v2, :cond_0

    .line 52
    iget-object v4, v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v5

    const-class v6, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "measureName":Ljava/lang/String;
    .end local v2    # "measureValue":Ljava/lang/Double;
    :cond_1
    return-object v3
.end method

.method public static fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;"
        }
    .end annotation

    .prologue
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 66
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v4

    const-class v5, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 67
    .local v3, "valueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    if-eqz p0, :cond_1

    .line 68
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->toDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 70
    .local v0, "doubleValue":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 71
    iget-object v4, v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v6

    const-class v7, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 75
    .end local v0    # "doubleValue":Ljava/lang/Double;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method private getMeasure(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3
    .param p2, "measureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    .local p1, "measures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 197
    .local v1, "m":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    .end local v1    # "m":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "ret":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    .line 166
    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static toDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .line 138
    .local v1, "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfzb;->a(Lfzc;)V

    goto :goto_0

    .line 140
    .end local v1    # "measureValue":Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 141
    return-void
.end method

.method public containValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    .line 148
    :cond_0
    return-void
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 5
    .param p1, "t"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 130
    .local v2, "measureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "measureName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    invoke-virtual {p1, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    goto :goto_0

    .line 133
    .end local v1    # "measureName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->merge(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-void
.end method

.method public setBuckets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    .local p1, "buckets":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    if-nez p1, :cond_1

    .line 193
    :cond_0
    return-void

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 190
    .local v2, "measureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    .local v1, "measureName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    invoke-direct {p0, p1, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getMeasure(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->setBuckets(Lcom/alibaba/mtl/appmonitor/model/Measure;)V

    goto :goto_0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;>;"
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    .line 114
    return-void
.end method

.method public setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object p0
.end method

.method public setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 160
    return-void
.end method
