.class public Lcom/amap/api/services/cloud/CloudItemDetail;
.super Lcom/amap/api/services/cloud/CloudItem;
.source "CloudItemDetail.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/cloud/CloudItemDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/amap/api/services/cloud/CloudItemDetail$1;

    invoke-direct {v0}, Lcom/amap/api/services/cloud/CloudItemDetail$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/cloud/CloudItemDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/amap/api/services/cloud/CloudItem;-><init>(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/services/cloud/CloudItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/cloud/CloudItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    return-void
.end method
