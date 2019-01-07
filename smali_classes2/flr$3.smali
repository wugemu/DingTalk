.class final Lflr$3;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

.field final synthetic b:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lflr$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iput-object p2, p0, Lflr$3;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 193
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v6

    invoke-virtual {v6}, Lfmz;->e()Lfmp;

    move-result-object v6

    iget-object v7, p0, Lflr$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    invoke-interface {v6, v7}, Lfmp;->a(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_6

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lflr$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v5, "userProfileObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v6, p0, Lflr$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lflr$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 198
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "merge friend, size "

    aput-object v7, v6, v8

    iget-object v7, p0, Lflr$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 203
    .local v0, "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    if-eqz v0, :cond_0

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 204
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v7

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-virtual {v7, v8, v9}, Lfbn;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 205
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v4, :cond_2

    .line 206
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 200
    .end local v0    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    const-string/jumbo v6, "merge friend, size 0"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    .restart local v0    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    .restart local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v7, :cond_3

    .line 210
    move-object v2, v4

    .line 211
    .local v2, "old":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 212
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 213
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 214
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v7

    invoke-virtual {v7, v4}, Lfbn;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_1

    .line 216
    .end local v2    # "old":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    iput-boolean v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    goto :goto_1

    .line 222
    .end local v0    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    const-class v6, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v6}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/UserService;

    new-instance v7, Lflr$3$1;

    invoke-direct {v7, p0, v5}, Lflr$3$1;-><init>(Lflr$3;Ljava/util/Map;)V

    invoke-interface {v6, v7, v3}, Lcom/alibaba/wukong/im/UserService;->listUsers(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 285
    .end local v1    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    .end local v3    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "userProfileObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_5
    :goto_2
    return-void

    .line 275
    :cond_6
    const-string/jumbo v6, "bulkMerge 0"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v6, p0, Lflr$3;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v6, :cond_5

    .line 277
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lflr$3$2;

    invoke-direct {v7, p0}, Lflr$3$2;-><init>(Lflr$3;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
