.class public Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;
.super Ljava/lang/Object;
.source "DingSelectUserParamsV2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x78e3a3832e724fc1L


# instance fields
.field private mBizType:I

.field private mCanSendToAll:Z

.field private mCid:Ljava/lang/String;

.field private mDisabledIdentityObjectUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayIdentityObjectUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRecentDing:Z

.field private mHasSendToMe:Z

.field private mIdentityFlag:Ljava/lang/String;

.field private mIsFromSpaceFileUnread:Z

.field private mIsMailMessage:Z

.field private mIsSingleChooseMode:Z

.field private mModifySelectedUser:Z

.field private mParentDingId:Ljava/lang/String;

.field private mSubBizType:I

.field private mUserIdentityObjectUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mBizType:I

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledIdentityObjectUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mDisabledIdentityObjectUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayIdentityObjectUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mDisplayIdentityObjectUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIdentityFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIdentityFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getParentDingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mParentDingId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubBizType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mSubBizType:I

    return v0
.end method

.method public getUserIdentityObjectUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mUserIdentityObjectUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCanSendToAll()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mCanSendToAll:Z

    return v0
.end method

.method public isFromSpaceFileUnread()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIsFromSpaceFileUnread:Z

    return v0
.end method

.method public isHasRecentDing()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mHasRecentDing:Z

    return v0
.end method

.method public isHasSendToMe()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mHasSendToMe:Z

    return v0
.end method

.method public isMailMessage()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIsMailMessage:Z

    return v0
.end method

.method public isModifySelectedUser()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mModifySelectedUser:Z

    return v0
.end method

.method public isSingleChooseMode()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIsSingleChooseMode:Z

    return v0
.end method

.method public setBizType(I)V
    .locals 0
    .param p1, "bizType"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mBizType:I

    .line 118
    return-void
.end method

.method public setCanSendToAll(Z)V
    .locals 0
    .param p1, "canSendToAll"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mCanSendToAll:Z

    .line 94
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mCid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setDisabledIdentityObjectUids(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "disabledIdentityObjectUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mDisabledIdentityObjectUids:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public setDisplayIdentityObjectUids(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "displayIdentityObjectUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mDisplayIdentityObjectUids:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public setFromSpaceFileUnread(Z)V
    .locals 0
    .param p1, "fromSpaceFileUnread"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIsFromSpaceFileUnread:Z

    .line 62
    return-void
.end method

.method public setHasRecentDing(Z)V
    .locals 0
    .param p1, "hasRecentDing"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mHasRecentDing:Z

    .line 102
    return-void
.end method

.method public setHasSendToMe(Z)V
    .locals 0
    .param p1, "hasSendToMe"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mHasSendToMe:Z

    .line 142
    return-void
.end method

.method public setIdentityFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "identityFlag"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIdentityFlag:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMailMessage(Z)V
    .locals 0
    .param p1, "mailMessage"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIsMailMessage:Z

    .line 54
    return-void
.end method

.method public setModifySelectedUser(Z)V
    .locals 0
    .param p1, "modifySelectedUser"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mModifySelectedUser:Z

    .line 134
    return-void
.end method

.method public setParentDingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentDingId"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mParentDingId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSingleChooseMode(Z)V
    .locals 0
    .param p1, "singleChooseMode"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mIsSingleChooseMode:Z

    .line 150
    return-void
.end method

.method public setSubBizType(I)V
    .locals 0
    .param p1, "subBizType"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mSubBizType:I

    .line 126
    return-void
.end method

.method public setUserIdentityObjectUids(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "userIdentityObjectUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->mUserIdentityObjectUids:Ljava/util/ArrayList;

    .line 78
    return-void
.end method
