.class public Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;
.super Ljava/lang/Object;
.source "StatusScanFilter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_ACTIVE:I = -0x2

.field public static final STATUS_ALL:I = -0x1

.field public static final STATUS_UNACTIVE:I


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    .line 21
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public match(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 30
    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 33
    if-eqz p1, :cond_2

    iget v2, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->status:I

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 35
    :cond_3
    if-eqz p1, :cond_4

    iget v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    iget v3, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->status:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/filter/StatusScanFilter;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
