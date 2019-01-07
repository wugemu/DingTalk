.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 1426
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1431
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1432
    .local v0, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3779
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-boolean v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    cmp-long v6, v8, v10

    if-nez v6, :cond_5

    .line 3780
    const/4 v6, 0x1

    .line 1432
    :goto_1
    if-nez v6, :cond_0

    .line 1435
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 1435
    invoke-static {v6, v0}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1436
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    .line 1437
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 1438
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1440
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-boolean v8, v8, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1440
    invoke-virtual {v6, v1, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 1441
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1441
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 1443
    .local v4, "otherUid":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->b:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1444
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->c:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1447
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    .line 1449
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 1449
    if-eqz v6, :cond_2

    .line 1451
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 1451
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1459
    .end local v4    # "otherUid":J
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 1461
    .local v3, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_1
    const-string/jumbo v6, "im"

    sget-object v8, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->j:Ljava/lang/String;

    .line 1462
    invoke-static {v6, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v3

    .line 1463
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "con add "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-interface {v3, v6}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1465
    if-eqz v3, :cond_0

    .line 1466
    :try_start_2
    invoke-interface {v3}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1471
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catch_0
    move-exception v2

    .line 1472
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1474
    .restart local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_3
    const-string/jumbo v6, "im"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->j:Ljava/lang/String;

    invoke-static {v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v3

    .line 1475
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "con add exception"

    aput-object v8, v6, v7

    invoke-interface {v3, v6}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1477
    if-eqz v3, :cond_3

    .line 1478
    invoke-interface {v3}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 1481
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1483
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 1483
    new-instance v7, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1539
    return-void

    .line 3782
    .restart local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1454
    :cond_6
    :try_start_4
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 1455
    .restart local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-boolean v8, v8, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1455
    invoke-virtual {v6, v1, v8}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 1457
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1457
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1465
    .restart local v3    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_7

    .line 1466
    invoke-interface {v3}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_7
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1477
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    if-eqz v3, :cond_8

    .line 1478
    invoke-interface {v3}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_8
    throw v6
.end method
