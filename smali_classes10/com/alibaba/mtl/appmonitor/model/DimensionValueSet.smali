.class public Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
.super Ljava/lang/Object;
.source "DimensionValueSet.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lfzc;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    .line 39
    :cond_0
    return-void
.end method

.method public static create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 3

    .prologue
    .line 26
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method

.method public static create(I)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 3
    .param p0, "initialCapacity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    return-object v0
.end method

.method public static fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lfzb;->a()Lfzb;

    move-result-object v3

    const-class v4, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lfzb;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lfzc;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 46
    .local v2, "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    goto :goto_1

    .line 49
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 3
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "ret":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 153
    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 6
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 67
    .local v0, "dimensionValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    goto :goto_1

    .line 73
    .end local v0    # "dimensionValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object p0
.end method

.method public clean()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    return-void
.end method

.method public containValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 117
    .local v0, "other":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 118
    iget-object v3, v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    if-eqz v3, :cond_0

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    iget-object v4, v0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    .line 137
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 102
    .local v0, "result":I
    return v0

    .line 101
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 93
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    goto :goto_1

    .line 95
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    if-eqz p2, :cond_0

    .end local p2    # "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-object p0

    .line 60
    .restart local p2    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "null"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 147
    return-void
.end method
