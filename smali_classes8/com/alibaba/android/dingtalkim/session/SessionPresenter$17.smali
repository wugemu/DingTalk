.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 1822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v14, v14, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1822
    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 1823
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1824
    .local v10, "tmpData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    .local v11, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1829
    .local v5, "displayConversationHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-boolean v14, v14, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1829
    if-eqz v14, :cond_2

    .line 1830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v14, v14, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e:Ljava/util/List;

    .line 1830
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 1831
    .local v2, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-wide v0, v2, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    move-wide/from16 v16, v0

    .line 5116
    invoke-static/range {v16 .. v17}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(J)Ljava/lang/String;

    move-result-object v9

    .line 1832
    .local v9, "mockCid":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1832
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 1836
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    invoke-static {v2, v9}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/category/CategoryObject;Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v6

    .line 1838
    .local v6, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    invoke-virtual {v5, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1840
    invoke-virtual {v15, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1896
    .end local v2    # "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    .end local v6    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v9    # "mockCid":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1897
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1900
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 17116
    iget-object v14, v14, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 1900
    new-instance v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10, v11, v5}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$2;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2007
    return-void

    .line 1844
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->a:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Conversation;

    .line 1845
    .local v3, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v15}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-boolean v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j:Z

    .line 1845
    if-eqz v15, :cond_4

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v16

    const-wide/16 v18, 0x4

    cmp-long v15, v16, v18

    if-eqz v15, :cond_3

    .line 1849
    :cond_4
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v8

    .line 1850
    .local v8, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v15

    if-nez v15, :cond_5

    .line 1851
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->tryToDecryptSync()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1852
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    .local v4, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c:Landroid/os/Handler;

    .line 1854
    new-instance v16, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;Ljava/util/List;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1862
    .end local v4    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_5
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1863
    new-instance v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 1864
    .restart local v6    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iput-object v3, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1866
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    move-object/from16 v16, v0

    .line 11116
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    move/from16 v16, v0

    .line 1866
    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 1867
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1868
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v12

    .line 1870
    .local v12, "uid":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-eqz v15, :cond_6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 1871
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1873
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1874
    .end local v6    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v12    # "uid":J
    :cond_7
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1875
    new-instance v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;-><init>()V

    .line 1876
    .restart local v6    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iput-object v3, v6, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1878
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    move-object/from16 v16, v0

    .line 13116
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    move/from16 v16, v0

    .line 1878
    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 1879
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1880
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    const-string/jumbo v15, "uids"

    invoke-interface {v3, v15}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ldjl;->b(Ljava/lang/String;)J

    move-result-wide v12

    .line 1882
    .restart local v12    # "uid":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-eqz v15, :cond_8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 1883
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1885
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1885
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1887
    .end local v6    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v12    # "uid":J
    :cond_9
    const/4 v15, 0x0

    invoke-static {v3, v15}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v6

    .line 1888
    .restart local v6    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    move-object/from16 v16, v0

    .line 15116
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    move/from16 v16, v0

    .line 1888
    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Z)V

    .line 1890
    if-eqz v6, :cond_a

    .line 1891
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 16116
    iget-object v15, v15, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->n:Ljava/util/HashMap;

    .line 1893
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
