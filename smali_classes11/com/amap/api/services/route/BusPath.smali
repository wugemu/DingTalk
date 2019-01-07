.class public Lcom/amap/api/services/route/BusPath;
.super Lcom/amap/api/services/route/Path;
.source "BusPath.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/BusPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:Z

.field private c:F

.field private d:F

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/amap/api/services/route/BusPath$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusPath$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/BusPath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/amap/api/services/route/Path;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/BusPath;->e:Ljava/util/List;

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/amap/api/services/route/Path;-><init>(Landroid/os/Parcel;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/BusPath;->e:Ljava/util/List;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/BusPath;->a:F

    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 145
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/amap/api/services/route/BusPath;->b:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/BusPath;->c:F

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/BusPath;->d:F

    .line 148
    sget-object v0, Lcom/amap/api/services/route/BusStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/BusPath;->e:Ljava/util/List;

    .line 149
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getBusDistance()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/amap/api/services/route/BusPath;->d:F

    return v0
.end method

.method public getCost()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/amap/api/services/route/BusPath;->a:F

    return v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusStep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/services/route/BusPath;->e:Ljava/util/List;

    return-object v0
.end method

.method public getWalkDistance()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/amap/api/services/route/BusPath;->c:F

    return v0
.end method

.method public isNightBus()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/amap/api/services/route/BusPath;->b:Z

    return v0
.end method

.method public setBusDistance(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/amap/api/services/route/BusPath;->d:F

    .line 95
    return-void
.end method

.method public setCost(F)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/amap/api/services/route/BusPath;->a:F

    .line 36
    return-void
.end method

.method public setNightBus(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/amap/api/services/route/BusPath;->b:Z

    .line 54
    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusStep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/services/route/BusPath;->e:Ljava/util/List;

    .line 113
    return-void
.end method

.method public setWalkDistance(F)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/amap/api/services/route/BusPath;->c:F

    .line 77
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/route/Path;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    iget v0, p0, Lcom/amap/api/services/route/BusPath;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/services/route/BusPath;->b:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 131
    iget v0, p0, Lcom/amap/api/services/route/BusPath;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget v0, p0, Lcom/amap/api/services/route/BusPath;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 133
    iget-object v0, p0, Lcom/amap/api/services/route/BusPath;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 134
    return-void
.end method
