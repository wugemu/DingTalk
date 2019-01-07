.class public final Lcom/amap/api/services/road/Crossroad;
.super Lcom/amap/api/services/road/Road;
.source "Crossroad.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/road/Crossroad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/amap/api/services/road/Crossroad$1;

    invoke-direct {v0}, Lcom/amap/api/services/road/Crossroad$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/road/Crossroad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/amap/api/services/road/Road;-><init>()V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/amap/api/services/road/Road;-><init>(Landroid/os/Parcel;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/road/Crossroad;->a:F

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/road/Crossroad;->b:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/road/Crossroad;->c:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/road/Crossroad;->d:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/road/Crossroad;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/road/Crossroad;->f:Ljava/lang/String;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/road/Crossroad$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/amap/api/services/road/Crossroad;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public final getDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getDistance()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/amap/api/services/road/Crossroad;->a:F

    return v0
.end method

.method public final getFirstRoadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstRoadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondRoadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondRoadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final setDirection(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/amap/api/services/road/Crossroad;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final setDistance(F)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/amap/api/services/road/Crossroad;->a:F

    .line 41
    return-void
.end method

.method public final setFirstRoadId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/amap/api/services/road/Crossroad;->c:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public final setFirstRoadName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/amap/api/services/road/Crossroad;->d:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public final setSecondRoadId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/amap/api/services/road/Crossroad;->e:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final setSecondRoadName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/amap/api/services/road/Crossroad;->f:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/road/Road;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    iget v0, p0, Lcom/amap/api/services/road/Crossroad;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 148
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amap/api/services/road/Crossroad;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
