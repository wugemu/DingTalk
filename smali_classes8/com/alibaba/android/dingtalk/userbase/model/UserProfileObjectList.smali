.class public Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;
.super Ljava/lang/Object;
.source "UserProfileObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public conversationId:Ljava/lang/String;

.field public nextCursor:J

.field public totalCount:J

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lcgl;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;
    .locals 8
    .param p0, "userProfileModelList"    # Lcgl;

    .prologue
    const-wide/16 v6, 0x0

    .line 36
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;-><init>()V

    .line 37
    .local v1, "userProfileObjectList":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;
    if-eqz p0, :cond_1

    .line 38
    iget-object v2, p0, Lcgl;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->values:Ljava/util/List;

    .line 40
    iget-object v2, p0, Lcgl;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgk;

    .line 41
    .local v0, "userProfileModel":Lcgk;
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->values:Ljava/util/List;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v0    # "userProfileModel":Lcgk;
    :cond_0
    iget-object v2, p0, Lcgl;->b:Ljava/lang/Long;

    .line 1044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 44
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->totalCount:J

    .line 45
    iget-object v2, p0, Lcgl;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 45
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->nextCursor:J

    .line 46
    iget-object v2, p0, Lcgl;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;->conversationId:Ljava/lang/String;

    .line 48
    :cond_1
    return-object v1
.end method
