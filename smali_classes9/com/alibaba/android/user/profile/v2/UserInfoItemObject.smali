.class public Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
.super Ljava/lang/Object;
.source "UserInfoItemObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isDingCardUser:Z

.field public isLocal:Z

.field public isOrgUser:Z

.field public isSelf:Z

.field public mAtEnable:Z

.field public mBadgeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/profile/v2/OrgEmployeeBadgeObject;",
            ">;"
        }
    .end annotation
.end field

.field public mContent:Ljava/lang/String;

.field public mDesc:Ljava/lang/String;

.field public mDescClickListener:Landroid/view/View$OnClickListener;

.field public mExtResId:I

.field public mHasRightIcon:Z

.field public mHidden:Z

.field public mHrmEnable:Z

.field public mHrmTitle:Ljava/lang/String;

.field public mHrmUrl:Ljava/lang/String;

.field public mIsActive:Z

.field public mLabelsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Landroid/view/View$OnClickListener;

.field public mMediaId:Ljava/lang/String;

.field public mOrgUserMobile:Ljava/lang/String;

.field public mResId:I

.field public mSecondListener:Landroid/view/View$OnClickListener;

.field public mSpanText:Landroid/text/SpannableStringBuilder;

.field public mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field public mTip:Ljava/lang/String;

.field public mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

.field mViewObject:Lcry;

.field public mWorkStatusObject:Lcom/alibaba/android/dingtalk/userbase/model/WorkStatusObject;

.field public needWaterMarkBg:Z

.field public orgId:J

.field public parentFragment:Lfvk;

.field public showDingCardGuideTip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mIsActive:Z

    .line 22
    const-class v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mAtEnable:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmUrl:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mIsActive:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isLocal:Z

    .line 35
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isSelf:Z

    .line 37
    const-class v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isOrgUser:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHasRightIcon:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    :goto_a
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mExtResId:I

    .line 46
    return-void

    :cond_0
    move v0, v2

    .line 26
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 27
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 28
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 33
    goto :goto_3

    :cond_4
    move v0, v2

    .line 34
    goto :goto_4

    :cond_5
    move v0, v2

    .line 36
    goto :goto_5

    :cond_6
    move v0, v2

    .line 39
    goto :goto_6

    :cond_7
    move v0, v2

    .line 40
    goto :goto_7

    :cond_8
    move v0, v2

    .line 41
    goto :goto_8

    :cond_9
    move v0, v2

    .line 43
    goto :goto_9

    :cond_a
    move v1, v2

    .line 44
    goto :goto_a
.end method

.method public constructor <init>(Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mIsActive:Z

    .line 156
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    .line 157
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mType:Lcom/alibaba/android/user/profile/v2/UserInfoItemObject$UserInfoItemType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHidden:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mAtEnable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmEnable:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHrmUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mIsActive:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isLocal:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mLabelsList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 81
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isSelf:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mTelBizNumInfo:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mOrgUserMobile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isDingCardUser:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->showDingCardGuideTip:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->isOrgUser:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget-wide v4, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->orgId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mHasRightIcon:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 89
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->needWaterMarkBg:Z

    if-eqz v0, :cond_a

    :goto_a
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;->mExtResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 72
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 73
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 78
    goto :goto_3

    :cond_4
    move v0, v2

    .line 79
    goto :goto_4

    :cond_5
    move v0, v2

    .line 81
    goto :goto_5

    :cond_6
    move v0, v2

    .line 84
    goto :goto_6

    :cond_7
    move v0, v2

    .line 85
    goto :goto_7

    :cond_8
    move v0, v2

    .line 86
    goto :goto_8

    :cond_9
    move v0, v2

    .line 88
    goto :goto_9

    :cond_a
    move v1, v2

    .line 89
    goto :goto_a
.end method
