.class Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field barColor:I

.field barWidth:I

.field circleRadius:I

.field fillRadius:Z

.field isSpinning:Z

.field linearProgress:Z

.field mProgress:F

.field mTargetProgress:F

.field rimColor:I

.field rimWidth:I

.field spinSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 755
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    .line 736
    return-void

    :cond_0
    move v0, v2

    .line 727
    goto :goto_0

    :cond_1
    move v0, v2

    .line 734
    goto :goto_1

    :cond_2
    move v1, v2

    .line 735
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$1;

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 720
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 721
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 740
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 741
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 742
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 743
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 744
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 745
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->barColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->rimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 749
    iget v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 751
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/widget/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 752
    return-void

    :cond_0
    move v0, v2

    .line 743
    goto :goto_0

    :cond_1
    move v0, v2

    .line 750
    goto :goto_1

    :cond_2
    move v1, v2

    .line 751
    goto :goto_2
.end method
