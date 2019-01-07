.class public Lcom/alibaba/android/search/model/NonRelationO2OContactModel;
.super Lcom/alibaba/android/search/model/FriendModel;
.source "NonRelationO2OContactModel.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/search/model/FriendModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 28
    return-void
.end method
