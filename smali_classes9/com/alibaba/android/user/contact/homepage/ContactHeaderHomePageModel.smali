.class public Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;
.super Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
.source "ContactHeaderHomePageModel.java"


# instance fields
.field private mNewFriendUnreadObject:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

.field private mShowEnterpriseSquare:Z

.field private mViewObjectNewFriend:Lcry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mShowEnterpriseSquare:Z

    return-void
.end method


# virtual methods
.method public getNewFriendUnreadObject()Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mNewFriendUnreadObject:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    return-object v0
.end method

.method public getViewObjectNewFriend()Lcry;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mViewObjectNewFriend:Lcry;

    return-object v0
.end method

.method public isShowEnterpriseSquare()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mShowEnterpriseSquare:Z

    return v0
.end method

.method public setNewFriendUnreadObject(Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;)V
    .locals 0
    .param p1, "newFriendUnreadObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mNewFriendUnreadObject:Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject;

    .line 34
    return-void
.end method

.method public setShowEnterpriseSquare(Z)V
    .locals 0
    .param p1, "showEnterpriseSquare"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mShowEnterpriseSquare:Z

    .line 42
    return-void
.end method

.method public setViewObjectNewFriend(Lcry;)V
    .locals 0
    .param p1, "viewObjectNewFriend"    # Lcry;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHeaderHomePageModel;->mViewObjectNewFriend:Lcry;

    .line 26
    return-void
.end method
