.class public Lcom/alibaba/android/search/SearchUserIconObject;
.super Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
.source "SearchUserIconObject.java"


# static fields
.field public static final INVALID_AVATAR_RES_ID:I = -0x1


# instance fields
.field public mAvatarResId:I

.field public mIsBurnChat:Z

.field public mIsGroupIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mAvatarResId:I

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mIsBurnChat:Z

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mIsGroupIcon:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;)V
    .locals 2
    .param p1, "userIconObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mAvatarResId:I

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mIsBurnChat:Z

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mIsGroupIcon:Z

    .line 39
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/SearchUserIconObject;->nick:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/SearchUserIconObject;->name:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/search/SearchUserIconObject;->mediaId:Ljava/lang/String;

    goto :goto_0
.end method
