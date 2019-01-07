.class public Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "ConcernContactItem.java"


# instance fields
.field private mContact:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field private mNick:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 34
    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->setName(Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mNick:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mNick:Ljava/lang/String;

    .line 46
    :cond_1
    return-void

    .line 37
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mNick:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->Concern:Lcom/alibaba/android/user/contact/homepage/Component$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component$ItemType;->getValue()I

    move-result v0

    return v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ConcernContactItem;->mContact:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    return-wide v0
.end method
