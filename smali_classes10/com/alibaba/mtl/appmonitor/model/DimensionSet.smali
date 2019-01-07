.class public Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
.super Ljava/lang/Object;
.source "DimensionSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DimensionSet"


# instance fields
.field private dimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Dimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionSet;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;-><init>()V

    .line 31
    .local v1, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    if-eqz p0, :cond_0

    .line 32
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "dimName":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    goto :goto_0

    .line 36
    .end local v0    # "dimName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v1
.end method

.method public static create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 6
    .param p0, "dimensions"    # [Ljava/lang/String;

    .prologue
    .line 43
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-direct {v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;-><init>()V

    .line 44
    .local v2, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    if-eqz p0, :cond_0

    .line 45
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, p0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 46
    .local v1, "dimName":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v5, v1}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dimName":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-object v2
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 11
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 166
    .local v3, "ret":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    :try_start_0
    const-class v4, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 167
    .local v2, "parcelables":[Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 168
    iget-object v4, v3, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    if-nez v4, :cond_0

    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    .line 171
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 172
    aget-object v4, v2, v1

    if-eqz v4, :cond_1

    aget-object v4, v2, v1

    instance-of v4, v4, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    if-eqz v4, :cond_1

    .line 173
    iget-object v5, v3, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    aget-object v4, v2, v1

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const-string/jumbo v4, "DimensionSet"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "parcelables[i]:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-object v7, v2, v1

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v1    # "i":I
    .end local v2    # "parcelables":[Landroid/os/Parcelable;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "DimensionSet"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "[readFromParcel]"

    aput-object v6, v5, v8

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 1
    .param p1, "dimension"    # Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-object p0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    return-object v1
.end method

.method public addDimension(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "constantValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 113
    .local v0, "dim":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    .end local v0    # "dim":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDimensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    return-object v0
.end method

.method public setConstantValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 4
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 127
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getConstantValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getConstantValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0

    .line 132
    .end local v0    # "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Z
    .locals 5
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 58
    if-eqz p1, :cond_1

    .line 59
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 60
    .local v0, "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/model/Dimension;->getName()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "dimensionName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->containValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    .end local v0    # "dimension":Lcom/alibaba/mtl/appmonitor/model/Dimension;
    .end local v1    # "dimensionName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 147
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->dimensions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 149
    .local v3, "parcelables":[Lcom/alibaba/mtl/appmonitor/model/Dimension;
    if-eqz v2, :cond_0

    .line 150
    array-length v4, v2

    new-array v3, v4, [Lcom/alibaba/mtl/appmonitor/model/Dimension;

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 152
    aget-object v4, v2, v1

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    aput-object v4, v3, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v2    # "objects":[Ljava/lang/Object;
    .end local v3    # "parcelables":[Lcom/alibaba/mtl/appmonitor/model/Dimension;
    :cond_1
    :goto_1
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
