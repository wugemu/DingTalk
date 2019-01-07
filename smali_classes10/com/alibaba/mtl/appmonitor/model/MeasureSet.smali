.class public Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
.super Ljava/lang/Object;
.source "MeasureSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final INIT_SIZE:I = 0x3


# instance fields
.field private measures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureSet;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "measures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-direct {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;-><init>()V

    .line 29
    .local v2, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, "measure":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_0

    .line 34
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "measure":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 5
    .param p0, "measures"    # [Ljava/lang/String;

    .prologue
    .line 41
    new-instance v4, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-direct {v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;-><init>()V

    .line 42
    .local v4, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    if-eqz p0, :cond_0

    .line 43
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, p0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 44
    .local v3, "measure":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "measure":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 6
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    .line 156
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 158
    .local v4, "ret":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :try_start_0
    const-class v5, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    .line 160
    .local v3, "parcelables":[Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v2, "measureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 163
    aget-object v5, v3, v1

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    iput-object v2, v4, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "i":I
    .end local v2    # "measureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    .end local v3    # "parcelables":[Landroid/os/Parcelable;
    :cond_1
    :goto_1
    return-object v4

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 1
    .param p1, "measure"    # Lcom/alibaba/mtl/appmonitor/model/Measure;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-object p0
.end method

.method public addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 105
    .local v1, "meas":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    .end local v1    # "meas":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMeasures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    return-object v0
.end method

.method public setConstantValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 6
    .param p1, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 121
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 123
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getConstantValue()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getConstantValue()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_0

    .line 128
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_1
    return-void
.end method

.method public upateMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)V
    .locals 5
    .param p1, "newMeasure"    # Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 201
    .local v1, "measureSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 202
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    iget-object v2, v2, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getMin()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getMax()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 204
    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getConstantValue()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setConstantValue(Ljava/lang/Double;)V

    .line 201
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    return-void
.end method

.method public upateMeasures(Ljava/util/List;)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    .local p1, "configMeasures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/model/Measure;>;"
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 189
    .local v3, "measureSize":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    .local v0, "configMeasureSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 191
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 192
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Measure;

    iget-object v5, v4, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Measure;

    iget-object v4, v4, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getMin()Ljava/lang/Double;

    move-result-object v6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getMax()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 191
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "k":I
    :cond_2
    return-void
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z
    .locals 5
    .param p1, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 58
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 59
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->getName()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "measureName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->containValue(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 73
    .end local v0    # "i":I
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .end local v2    # "measureName":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 64
    .restart local v0    # "i":I
    .restart local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    .restart local v2    # "measureName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->getValue(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    .end local v2    # "measureName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 139
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->measures:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 141
    .local v3, "parcelables":[Lcom/alibaba/mtl/appmonitor/model/Measure;
    if-eqz v2, :cond_0

    .line 142
    array-length v4, v2

    new-array v3, v4, [Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 144
    aget-object v4, v2, v1

    check-cast v4, Lcom/alibaba/mtl/appmonitor/model/Measure;

    aput-object v4, v3, v1

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2    # "objects":[Ljava/lang/Object;
    .end local v3    # "parcelables":[Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_1
    :goto_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
