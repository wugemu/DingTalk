.class public Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;
.super Ljava/lang/Object;
.source "ServiceIdScanFilter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private serviceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "serviceId"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;->serviceId:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;->serviceId:I

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;->serviceId:I

    return v0
.end method

.method public match(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;->serviceId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;->serviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
