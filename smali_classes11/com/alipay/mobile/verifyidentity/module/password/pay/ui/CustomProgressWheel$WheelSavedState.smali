.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "CustomProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel;
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
            "Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;",
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
    .line 684
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState$1;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 653
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->mProgress:F

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->barWidth:I

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->barColor:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->rimWidth:I

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->rimColor:I

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->circleRadius:I

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    .line 665
    return-void

    :cond_0
    move v0, v2

    .line 656
    goto :goto_0

    :cond_1
    move v0, v2

    .line 663
    goto :goto_1

    :cond_2
    move v1, v2

    .line 664
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$1;)V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 650
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 669
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 670
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 671
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->mTargetProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 672
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->isSpinning:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 673
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->spinSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 674
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->barWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->barColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 676
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->rimWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->rimColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->circleRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->linearProgress:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 680
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/CustomProgressWheel$WheelSavedState;->fillRadius:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 681
    return-void

    :cond_0
    move v0, v2

    .line 672
    goto :goto_0

    :cond_1
    move v0, v2

    .line 679
    goto :goto_1

    :cond_2
    move v1, v2

    .line 680
    goto :goto_2
.end method
