.class public Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;
.super Ljava/lang/Object;
.source "NameCardCacheObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2b3fed4b14c0eec7L


# instance fields
.field public mCardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

.field public mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field public mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field public type:I

.field public uid:J


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->uid:J

    .line 39
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 40
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->uid:J

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->fillCardUser(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->uid:J

    .line 27
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->type:I

    iput v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->type:I

    .line 28
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 29
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 30
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserPushObject;->user:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->fillCardUser(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public fillCardUser(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->uid:J

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/utils/NameCardCacheObject;->mCardUserObject:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    .line 64
    return-void
.end method
