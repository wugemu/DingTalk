.class public final Ldvl$1;
.super Ljava/lang/Object;
.source "DataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvl$a;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ldvl;


# direct methods
.method public constructor <init>(Ldvl;Ldvl$a;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldvl;

    .prologue
    .line 53
    iput-object p1, p0, Ldvl$1;->c:Ldvl;

    iput-object p2, p0, Ldvl$1;->a:Ldvl$a;

    iput-object p3, p0, Ldvl$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 56
    iget-object v6, p0, Ldvl$1;->a:Ldvl$a;

    if-eqz v6, :cond_0

    .line 57
    iget-object v6, p0, Ldvl$1;->a:Ldvl$a;

    invoke-interface {v6}, Ldvl$a;->a()V

    .line 59
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "createComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldvn;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v4, "joinComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldvn;>;"
    :try_start_0
    iget-object v6, p0, Ldvl$1;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 65
    .local v0, "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_1

    const-wide/16 v10, 0x7

    .line 66
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1

    const-wide/16 v10, 0xa

    .line 67
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1

    .line 70
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;Z)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v2

    .line 71
    .local v2, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    .line 74
    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "memberCount"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "tag"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "cid"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide v12, 0x9a7ec800L

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-lez v6, :cond_4

    const/4 v5, 0x1

    .line 79
    .local v5, "oldMsg":Z
    :goto_1
    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v9, "old_msg"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    .line 81
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mLocalExtra:Ljava/util/Map;

    .line 83
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v10

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-nez v6, :cond_7

    .line 84
    if-eqz v5, :cond_5

    .line 85
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 1035
    iget-object v6, v6, Ldvl;->b:Ldvn;

    .line 85
    if-nez v6, :cond_2

    .line 86
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    new-instance v9, Ldvn;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lctk$i;->dt_conversation_group_common_thirty:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldvn;-><init>(Ljava/lang/String;)V

    .line 2035
    iput-object v9, v6, Ldvl;->b:Ldvn;

    .line 88
    :cond_2
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 3035
    iget-object v6, v6, Ldvl;->b:Ldvn;

    .line 88
    invoke-virtual {v6, v2}, Ldvn;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v5    # "oldMsg":Z
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .restart local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .restart local v2    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_4
    move v5, v7

    .line 78
    goto :goto_1

    .line 90
    .restart local v5    # "oldMsg":Z
    :cond_5
    :try_start_1
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 4035
    iget-object v6, v6, Ldvl;->a:Ldvn;

    .line 90
    if-nez v6, :cond_6

    .line 91
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    new-instance v9, Ldvn;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lctk$i;->dt_conversation_group_common_title:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldvn;-><init>(Ljava/lang/String;)V

    .line 5035
    iput-object v9, v6, Ldvl;->a:Ldvn;

    .line 93
    :cond_6
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 6035
    iget-object v6, v6, Ldvl;->a:Ldvn;

    .line 93
    invoke-virtual {v6, v2}, Ldvn;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0

    .line 96
    :cond_7
    if-eqz v5, :cond_9

    .line 97
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 7035
    iget-object v6, v6, Ldvl;->d:Ldvn;

    .line 97
    if-nez v6, :cond_8

    .line 98
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    new-instance v9, Ldvn;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lctk$i;->dt_conversation_group_common_thirty:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldvn;-><init>(Ljava/lang/String;)V

    .line 8035
    iput-object v9, v6, Ldvl;->d:Ldvn;

    .line 100
    :cond_8
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 9035
    iget-object v6, v6, Ldvl;->d:Ldvn;

    .line 100
    invoke-virtual {v6, v2}, Ldvn;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0

    .line 102
    :cond_9
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 10035
    iget-object v6, v6, Ldvl;->c:Ldvn;

    .line 102
    if-nez v6, :cond_a

    .line 103
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    new-instance v9, Ldvn;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lctk$i;->dt_conversation_group_common_title:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ldvn;-><init>(Ljava/lang/String;)V

    .line 11035
    iput-object v9, v6, Ldvl;->c:Ldvn;

    .line 105
    :cond_a
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 12035
    iget-object v6, v6, Ldvl;->c:Ldvn;

    .line 105
    invoke-virtual {v6, v2}, Ldvn;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "conversationObject":Lcom/alibaba/wukong/im/Conversation;
    .end local v2    # "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v5    # "oldMsg":Z
    :cond_b
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 13035
    iget-object v6, v6, Ldvl;->a:Ldvn;

    .line 110
    if-eqz v6, :cond_c

    .line 111
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 14035
    iget-object v6, v6, Ldvl;->a:Ldvn;

    .line 111
    invoke-virtual {v6}, Ldvn;->a()V

    .line 112
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 15035
    iget-object v6, v6, Ldvl;->a:Ldvn;

    .line 112
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_c
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 16035
    iget-object v6, v6, Ldvl;->b:Ldvn;

    .line 115
    if-eqz v6, :cond_d

    .line 116
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 17035
    iget-object v6, v6, Ldvl;->b:Ldvn;

    .line 116
    invoke-virtual {v6}, Ldvn;->a()V

    .line 117
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 18035
    iget-object v6, v6, Ldvl;->b:Ldvn;

    .line 117
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_d
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 19035
    iget-object v6, v6, Ldvl;->c:Ldvn;

    .line 120
    if-eqz v6, :cond_e

    .line 121
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 20035
    iget-object v6, v6, Ldvl;->c:Ldvn;

    .line 121
    invoke-virtual {v6}, Ldvn;->a()V

    .line 122
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 21035
    iget-object v6, v6, Ldvl;->c:Ldvn;

    .line 122
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_e
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 22035
    iget-object v6, v6, Ldvl;->d:Ldvn;

    .line 125
    if-eqz v6, :cond_f

    .line 126
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 23035
    iget-object v6, v6, Ldvl;->d:Ldvn;

    .line 126
    invoke-virtual {v6}, Ldvn;->a()V

    .line 127
    iget-object v6, p0, Ldvl$1;->c:Ldvl;

    .line 24035
    iget-object v6, v6, Ldvl;->d:Ldvn;

    .line 127
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_f
    iget-object v6, p0, Ldvl$1;->a:Ldvl$a;

    if-eqz v6, :cond_3

    .line 131
    iget-object v6, p0, Ldvl$1;->a:Ldvl$a;

    invoke-interface {v6, v1, v4}, Ldvl$a;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
