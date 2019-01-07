.class public Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;
.super Ljava/lang/Object;
.source "MacAddressScanFilter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private macAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->macAddress:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->macAddress:Ljava/lang/String;

    .line 18
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

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->macAddress:Ljava/lang/String;

    return-object v0
.end method

.method public match(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z
    .locals 2
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->macAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->macAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/MacAddressScanFilter;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    return-void
.end method
