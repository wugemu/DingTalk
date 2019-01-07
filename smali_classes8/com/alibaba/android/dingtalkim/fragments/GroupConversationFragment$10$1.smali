.class final Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;
.super Ljava/lang/Object;
.source "GroupConversationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 578
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "group_conversation"

    const-string/jumbo v6, "list_conversations"

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "group_conversation"

    const-string/jumbo v6, "cast_to_display"

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v3, "tmpData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 583
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->u(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filter(Ljava/util/List;)V

    .line 586
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 587
    .local v0, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->o(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 588
    const-wide/16 v6, 0x1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    const-wide/16 v6, 0x6

    .line 589
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    :cond_2
    const-string/jumbo v4, "1"

    const-string/jumbo v6, "enable_transmit"

    .line 590
    invoke-interface {v0, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    const-wide/16 v6, 0x7

    .line 591
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    const-wide/16 v6, 0xa

    .line 592
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    .line 593
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 636
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    .line 637
    .local v1, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_1

    .line 638
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 639
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 640
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "memberCount"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "tag"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "cid"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    .line 644
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mLocalExtra:Ljava/util/Map;

    .line 645
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 648
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 651
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "group_conversation"

    const-string/jumbo v6, "cast_to_display"

    invoke-interface {v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "group_conversation"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 654
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v5, "DD"

    const-string/jumbo v6, "group_conversation"

    const-string/jumbo v7, "totalTime"

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->k(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1$1;

    invoke-direct {v5, p0, v3}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1$1;-><init>(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void

    .line 596
    .restart local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 597
    :cond_7
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v4, v6, v8

    if-eqz v4, :cond_8

    .line 598
    invoke-static {v0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 604
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    .line 605
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 622
    :cond_9
    :goto_2
    sget-object v4, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->NORMAL:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    .line 623
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    :cond_a
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isParent()Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_0

    .line 609
    :cond_b
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 611
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    invoke-static {v0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    goto/16 :goto_0

    .line 615
    :cond_c
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->g(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->h(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 617
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10$1;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment$10;->b:Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;->i(Lcom/alibaba/android/dingtalkim/fragments/GroupConversationFragment;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;J)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    .line 631
    :cond_d
    const-wide/16 v6, 0x7

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    const-wide/16 v6, 0xa

    .line 632
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_1

    goto/16 :goto_1
.end method
