.class public Lfbj;
.super Ljava/lang/Object;
.source "UserAliasRPC.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lfbj;


# instance fields
.field public a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/wukong/im/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lfbj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfbj;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lfbj;->a:Landroid/util/LruCache;

    .line 36
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lfbj;->a:Landroid/util/LruCache;

    .line 37
    return-void
.end method

.method static synthetic a(Lfbj;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lfbj;

    .prologue
    .line 26
    iget-object v0, p0, Lfbj;->a:Landroid/util/LruCache;

    return-object v0
.end method

.method public static declared-synchronized a()Lfbj;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lfbj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfbj;->c:Lfbj;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lfbj;

    invoke-direct {v0}, Lfbj;-><init>()V

    sput-object v0, Lfbj;->c:Lfbj;

    .line 43
    :cond_0
    sget-object v0, Lfbj;->c:Lfbj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lfbj;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V
    .locals 6
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 243
    .local p2, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-nez p1, :cond_0

    .line 244
    invoke-interface {p2, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 288
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Lfbj;->a:Landroid/util/LruCache;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/User;

    .line 249
    .local v0, "user":Lcom/alibaba/wukong/im/User;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 251
    invoke-interface {v0}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 252
    invoke-interface {p2, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/UserService;

    new-instance v2, Lfbj$3;

    invoke-direct {v2, p0, p1, p2}, Lfbj$3;-><init>(Lfbj;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 287
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 256
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/UserService;->getUser(Lcom/alibaba/wukong/Callback;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 132
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v2, "userIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;>;"
    if-eqz p1, :cond_2

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 136
    .local v0, "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_0

    .line 139
    iget-object v5, p0, Lfbj;->a:Landroid/util/LruCache;

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/User;

    .line 140
    .local v1, "user":Lcom/alibaba/wukong/im/User;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 142
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_1
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    .end local v0    # "itemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v1    # "user":Lcom/alibaba/wukong/im/User;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    invoke-interface {p2, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 195
    :goto_1
    return-void

    .line 154
    :cond_3
    const-class v4, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/UserService;

    new-instance v5, Lfbj$2;

    invoke-direct {v5, p0, p2, p1, v2}, Lfbj$2;-><init>(Lfbj;Lcma;Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v4, v5, v3}, Lcom/alibaba/wukong/im/UserService;->listUsers(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    goto :goto_1
.end method

.method public final b(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 290
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    sget-object v0, Lfbj;->b:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfbj$4;

    invoke-direct {v1, p0, p1, p2}, Lfbj$4;-><init>(Lfbj;Ljava/util/List;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method
