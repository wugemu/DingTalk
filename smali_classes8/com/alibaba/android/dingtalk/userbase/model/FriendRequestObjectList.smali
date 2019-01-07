.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;
.super Ljava/lang/Object;
.source "FriendRequestObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5de92dd26e04eb4dL


# instance fields
.field public cursor:J

.field public exColleagueInvalidDay:I

.field public exColleagueOrgName:Ljava/lang/String;

.field public friendRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:Z

.field public isFriendRecommendOpen:Z

.field public pendingCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcdt;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;
    .locals 7
    .param p0, "model"    # Lcdt;

    .prologue
    const/4 v6, 0x0

    .line 38
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;-><init>()V

    .line 39
    .local v2, "friendRequestObjectList":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "friendRequestObjectArrayList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;>;"
    iget-object v3, p0, Lcdt;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 41
    iget-object v3, p0, Lcdt;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcds;

    .line 42
    .local v0, "friendRequestModel":Lcds;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->fromIdl(Lcds;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0    # "friendRequestModel":Lcds;
    :cond_0
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    .line 46
    iget-object v3, p0, Lcdt;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 46
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->cursor:J

    .line 47
    iget-object v3, p0, Lcdt;->c:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 47
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->hasMore:Z

    .line 48
    iget-object v3, p0, Lcdt;->d:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 48
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->isFriendRecommendOpen:Z

    .line 49
    iget-object v3, p0, Lcdt;->e:Ljava/lang/Integer;

    .line 3033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 49
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->pendingCount:I

    .line 50
    iget-object v3, p0, Lcdt;->f:Ljava/lang/Integer;

    .line 4033
    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 50
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->exColleagueInvalidDay:I

    .line 51
    iget-object v3, p0, Lcdt;->g:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->exColleagueOrgName:Ljava/lang/String;

    .line 52
    return-object v2
.end method
