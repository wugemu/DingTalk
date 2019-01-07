.class final Lfbj$4;
.super Ljava/lang/Object;
.source "UserAliasRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbj;->b(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;

.field final synthetic c:Lfbj;


# direct methods
.method constructor <init>(Lfbj;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbj;

    .prologue
    .line 290
    iput-object p1, p0, Lfbj$4;->c:Lfbj;

    iput-object p2, p0, Lfbj$4;->a:Ljava/util/List;

    iput-object p3, p0, Lfbj$4;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 293
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v4, "userProfileObjectMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v2, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v5, p0, Lfbj$4;->a:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lfbj$4;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lfbj$4;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 297
    iget-object v5, p0, Lfbj$4;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 298
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_0

    .line 299
    iget-object v5, p0, Lfbj$4;->c:Lfbj;

    invoke-static {v5}, Lfbj;->a(Lfbj;)Landroid/util/LruCache;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/User;

    .line 300
    .local v1, "user":Lcom/alibaba/wukong/im/User;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 301
    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 302
    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 296
    .end local v1    # "user":Lcom/alibaba/wukong/im/User;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    .restart local v1    # "user":Lcom/alibaba/wukong/im/User;
    :cond_1
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 309
    .end local v1    # "user":Lcom/alibaba/wukong/im/User;
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v6, p0, Lfbj$4;->c:Lfbj;

    iget-object v7, p0, Lfbj$4;->b:Lcma;

    iget-object v8, p0, Lfbj$4;->a:Ljava/util/List;

    .line 1089
    const-class v5, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/UserService;

    new-instance v9, Lfbj$1;

    invoke-direct {v9, v6, v4, v7, v8}, Lfbj$1;-><init>(Lfbj;Ljava/util/Map;Lcma;Ljava/util/List;)V

    invoke-interface {v5, v9, v2}, Lcom/alibaba/wukong/im/UserService;->listUsers(Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    .line 313
    .end local v0    # "i":I
    :goto_2
    return-void

    .line 311
    :cond_3
    iget-object v5, p0, Lfbj$4;->b:Lcma;

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_2
.end method
