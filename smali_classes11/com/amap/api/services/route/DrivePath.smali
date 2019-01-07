.class public Lcom/amap/api/services/route/DrivePath;
.super Lcom/amap/api/services/route/Path;
.source "DrivePath.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/DrivePath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:F

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/DriveStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/amap/api/services/route/DrivePath$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/DrivePath$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/DrivePath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/amap/api/services/route/Path;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/DrivePath;->e:Ljava/util/List;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/amap/api/services/route/Path;-><init>(Landroid/os/Parcel;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/DrivePath;->e:Ljava/util/List;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/DrivePath;->a:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DrivePath;->b:F

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DrivePath;->c:F

    .line 138
    sget-object v0, Lcom/amap/api/services/route/DriveStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/DrivePath;->e:Ljava/util/List;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/route/DrivePath;->d:I

    .line 140
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/DriveStep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amap/api/services/route/DrivePath;->e:Ljava/util/List;

    return-object v0
.end method

.method public getStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/route/DrivePath;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTollDistance()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/amap/api/services/route/DrivePath;->c:F

    return v0
.end method

.method public getTolls()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/amap/api/services/route/DrivePath;->b:F

    return v0
.end method

.method public getTotalTrafficlights()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/amap/api/services/route/DrivePath;->d:I

    return v0
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/DriveStep;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/amap/api/services/route/DrivePath;->e:Ljava/util/List;

    .line 106
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amap/api/services/route/DrivePath;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTollDistance(F)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/amap/api/services/route/DrivePath;->c:F

    .line 72
    return-void
.end method

.method public setTolls(F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/amap/api/services/route/DrivePath;->b:F

    .line 54
    return-void
.end method

.method public setTotalTrafficlights(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/amap/api/services/route/DrivePath;->d:I

    .line 88
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/route/Path;->writeToParcel(Landroid/os/Parcel;I)V

    .line 122
    iget-object v0, p0, Lcom/amap/api/services/route/DrivePath;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/amap/api/services/route/DrivePath;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 124
    iget v0, p0, Lcom/amap/api/services/route/DrivePath;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 125
    iget-object v0, p0, Lcom/amap/api/services/route/DrivePath;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 126
    iget v0, p0, Lcom/amap/api/services/route/DrivePath;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
