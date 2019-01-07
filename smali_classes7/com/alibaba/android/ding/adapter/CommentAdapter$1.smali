.class final Lcom/alibaba/android/ding/adapter/CommentAdapter$1;
.super Ljava/lang/Object;
.source "CommentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/ding/adapter/CommentAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/adapter/CommentAdapter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    iput-object p2, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 379
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->a:Ljava/util/List;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    .local v2, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v7, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 381
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v5, "phoneNumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 383
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 384
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_0

    .line 385
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 386
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 387
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    .line 388
    invoke-static {v8}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Lcom/alibaba/android/ding/adapter/CommentAdapter;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 389
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 394
    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 395
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v4

    .line 397
    .local v4, "localContactObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v4, :cond_3

    .line 398
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 399
    .local v1, "entryMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 400
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v0, :cond_2

    .line 401
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 402
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 403
    .local v3, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v3, :cond_2

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 404
    iget-object v7, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    invoke-static {v7}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Lcom/alibaba/android/ding/adapter/CommentAdapter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 411
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v1    # "entryMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;>;"
    .end local v3    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_3
    iget-object v7, p0, Lcom/alibaba/android/ding/adapter/CommentAdapter$1;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter;

    invoke-static {v7}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->a(Lcom/alibaba/android/ding/adapter/CommentAdapter;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 412
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/ding/adapter/CommentAdapter$1$1;

    invoke-direct {v8, p0}, Lcom/alibaba/android/ding/adapter/CommentAdapter$1$1;-><init>(Lcom/alibaba/android/ding/adapter/CommentAdapter$1;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 420
    .end local v4    # "localContactObjectHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_4
    return-void
.end method
