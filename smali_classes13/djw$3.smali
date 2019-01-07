.class final Ldjw$3;
.super Lcom/alibaba/wukong/im/ConversationChangeListener;
.source "InitializeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjw;


# direct methods
.method constructor <init>(Ldjw;)V
    .locals 0
    .param p1, "this$0"    # Ldjw;

    .prologue
    .line 714
    iput-object p1, p0, Ldjw$3;->a:Ldjw;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/ConversationChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExtensionChanged(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v8, 0x0

    .line 717
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 718
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    const-string/jumbo v7, "aids"

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 719
    .local v5, "newIds":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 720
    const-string/jumbo v5, ""

    .line 722
    :cond_1
    const-string/jumbo v7, "aids"

    invoke-interface {v2, v7}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 723
    .local v6, "oldIds":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 724
    const-string/jumbo v6, ""

    .line 726
    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 727
    const-string/jumbo v7, "aids"

    invoke-interface {v2, v7, v5}, Lcom/alibaba/wukong/im/Conversation;->updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v4

    .line 729
    .local v4, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_3

    .line 730
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 732
    .restart local v4    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v0, "addedIdBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_5

    aget-object v3, v10, v7

    .line 735
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 736
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 739
    .end local v3    # "id":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "addedIds":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    const-string/jumbo v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 741
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 742
    const-string/jumbo v7, "button_app_ids"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string/jumbo v7, "setting_app_ids"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v7, "setting_app_new"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .end local v0    # "addedIdBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "addedIds":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v2, v4}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 747
    :cond_7
    const-string/jumbo v7, "button_app_ids"

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string/jumbo v7, "setting_app_ids"

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string/jumbo v7, "setting_app_new"

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 754
    .end local v2    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v4    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "newIds":Ljava/lang/String;
    .end local v6    # "oldIds":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public final onStatusChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 758
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Ldjw$3;->a:Ldjw;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ldjw;->a(Ldjw;Ljava/util/List;Z)V

    .line 759
    return-void
.end method

.method public final onUnreadCountChanged(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_9

    .line 765
    const/4 v7, 0x0

    .line 766
    .local v7, "isChannelSessionUnreadCountChanged":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Conversation;

    .line 767
    .local v5, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v13

    if-nez v13, :cond_4

    .line 768
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v8

    .line 769
    .local v8, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 770
    const-string/jumbo v13, "at_uid"

    invoke-interface {v8, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 771
    .local v6, "external_key":Ljava/lang/String;
    const-string/jumbo v13, "enterprise_redpackests_list"

    invoke-interface {v8, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 772
    .local v10, "readpackets":Ljava/lang/String;
    const-string/jumbo v13, "enterprise_b2c_redpackets_list"

    invoke-interface {v8, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 773
    .local v11, "readpacketsB2C":Ljava/lang/String;
    const-string/jumbo v13, "anchorType"

    invoke-interface {v8, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 774
    .local v2, "anchor":Ljava/lang/String;
    const-string/jumbo v13, "anchorMessageId"

    invoke-interface {v8, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 775
    .local v3, "anchorID":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 776
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 777
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 778
    :cond_1
    invoke-interface {v5, v8}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/util/Map;)V

    .line 780
    :cond_2
    invoke-static {}, Ldbq;->a()Ldbq;

    move-result-object v13

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ldbq;->a(Ljava/lang/String;)V

    .line 782
    .end local v2    # "anchor":Ljava/lang/String;
    .end local v3    # "anchorID":Ljava/lang/String;
    .end local v6    # "external_key":Ljava/lang/String;
    .end local v10    # "readpackets":Ljava/lang/String;
    .end local v11    # "readpacketsB2C":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->hasUnreadAtMeMessage()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 783
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Lcom/alibaba/wukong/im/Conversation;->updateAtMeStatus(Z)V

    .line 786
    .end local v8    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v14

    const-wide/16 v16, 0xa

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 787
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 788
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 792
    .end local v5    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_5
    if-eqz v7, :cond_6

    .line 793
    move-object/from16 v0, p0

    iget-object v12, v0, Ldjw$3;->a:Ldjw;

    .line 1912
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v13

    new-instance v14, Ldjw$4;

    invoke-direct {v14, v12}, Ldjw$4;-><init>(Ldjw;)V

    invoke-interface {v13, v14}, Lddi;->a(Lcma;)V

    .line 797
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Conversation;

    .line 798
    .restart local v5    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v5, :cond_7

    .line 799
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, "cid":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 801
    move-object/from16 v0, p0

    iget-object v13, v0, Ldjw$3;->a:Ldjw;

    .line 2103
    iget-object v13, v13, Ldjw;->a:Ljava/util/HashMap;

    .line 801
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/Message;

    .line 802
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v9, :cond_8

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 803
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v13

    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v14

    invoke-virtual {v14, v5}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v14

    invoke-virtual {v13, v9, v14}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Lcom/alibaba/wukong/im/Message;Z)V

    .line 804
    move-object/from16 v0, p0

    iget-object v13, v0, Ldjw$3;->a:Ldjw;

    .line 3103
    iget-object v13, v13, Ldjw;->a:Ljava/util/HashMap;

    .line 804
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 806
    :cond_8
    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v13

    if-nez v13, :cond_7

    .line 807
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 815
    .end local v4    # "cid":Ljava/lang/String;
    .end local v5    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v7    # "isChannelSessionUnreadCountChanged":Z
    .end local v9    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_9
    const-class v12, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v12}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v13, Ldjw$3$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ldjw$3$1;-><init>(Ldjw$3;)V

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-interface {v12, v13, v14, v15}, Lcom/alibaba/wukong/im/ConversationService;->listConversations(Lcom/alibaba/wukong/Callback;II)V

    .line 893
    return-void
.end method
