.class public final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const-wide/16 v10, 0x0

    .line 308
    const-string/jumbo v4, "group_conversation"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 309
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 310
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 314
    :goto_0
    if-eqz v0, :cond_5

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 316
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Ljava/util/Map;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 319
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1

    invoke-static {v1}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J

    move-result-wide v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 322
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    :cond_1
    :goto_2
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "title"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->a:Ljava/lang/String;

    const/16 v7, 0x1e

    invoke-static {v4, v6, v7}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 343
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->f(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 326
    .restart local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 328
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1

    invoke-static {v1}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J

    move-result-wide v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 332
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Ldjl;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 339
    :catch_0
    move-exception v2

    .line 340
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 346
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->k(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$6;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 362
    return-void
.end method
