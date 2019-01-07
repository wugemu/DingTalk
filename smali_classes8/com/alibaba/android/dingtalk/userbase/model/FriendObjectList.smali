.class public Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;
.super Ljava/lang/Object;
.source "FriendObjectList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x441e3bbf7fb837d7L


# instance fields
.field public cursor:J

.field public friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lcdq;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;
    .locals 6
    .param p0, "model"    # Lcdq;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v2, 0x0

    .line 46
    :goto_0
    return-object v2

    .line 36
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;-><init>()V

    .line 37
    .local v2, "friendObjectList":Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    iget-object v3, p0, Lcdq;->a:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lcdq;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcdp;

    .line 40
    .local v1, "friendModel":Lcdp;
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->fromIdl(Lcdp;)Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    .end local v1    # "friendModel":Lcdp;
    :cond_1
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    .line 44
    iget-object v3, p0, Lcdq;->b:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 44
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->cursor:J

    .line 45
    iget-object v3, p0, Lcdq;->c:Ljava/lang/Boolean;

    .line 2022
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 45
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->hasMore:Z

    goto :goto_0
.end method
