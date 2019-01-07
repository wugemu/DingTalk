.class public Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;
.super Ljava/lang/Object;
.source "DeviceIdScanFilter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private deviceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;->deviceId:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;->deviceId:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;->deviceId:I

    return v0
.end method

.method public match(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z
    .locals 6
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;->deviceId:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceIdScanFilter;->deviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void
.end method
