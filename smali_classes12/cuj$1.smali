.class final Lcuj$1;
.super Ljava/lang/Object;
.source "ConfResultHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuj;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcuj;


# direct methods
.method constructor <init>(Lcuj;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcuj;

    .prologue
    .line 67
    iput-object p1, p0, Lcuj$1;->c:Lcuj;

    iput-object p2, p0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcuj$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    check-cast v16, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    check-cast v16, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    check-cast v16, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    .line 73
    .local v5, "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    const-wide/16 v10, 0x0

    .line 74
    .local v10, "toUserId":J
    iget-object v15, v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->users:[Ljava/lang/Long;

    .line 75
    .local v15, "uids":[Ljava/lang/Long;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v14, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v15, :cond_1

    .line 77
    array-length v0, v15

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v18, v15, v16

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 78
    .local v12, "uid":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lccr;->c()J

    move-result-wide v18

    cmp-long v18, v12, v18

    if-eqz v18, :cond_0

    .line 80
    move-wide v10, v12

    .line 77
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 84
    .end local v12    # "uid":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->a:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "cid":Ljava/lang/String;
    :goto_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v8, "extras":Landroid/os/Bundle;
    const-string/jumbo v16, "conversation_id"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lctj;->b()V

    .line 89
    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    move/from16 v16, v0

    if-nez v16, :cond_5

    .line 90
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->b:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v8}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 123
    :cond_2
    :goto_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v9, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "format"

    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v16

    const-string/jumbo v17, "chat_msg_recall_click"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    .end local v4    # "cid":Ljava/lang/String;
    .end local v5    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v9    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "toUserId":J
    .end local v14    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v15    # "uids":[Ljava/lang/Long;
    :cond_3
    return-void

    .line 84
    .restart local v5    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .restart local v10    # "toUserId":J
    .restart local v14    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v15    # "uids":[Ljava/lang/Long;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 91
    .restart local v4    # "cid":Ljava/lang/String;
    .restart local v8    # "extras":Landroid/os/Bundle;
    :cond_5
    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 92
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->b:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v8}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->d(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    .line 93
    :cond_6
    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 94
    move-wide v6, v10

    .line 95
    .local v6, "destUserId":J
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v17

    const-string/jumbo v16, "EVENTBUTLER"

    .line 96
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v18, Lcuj$1$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v7, v4}, Lcuj$1$1;-><init>(Lcuj$1;JLjava/lang/String;)V

    const-class v19, Lcma;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->b:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcma;

    .line 95
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Lcma;)V

    goto/16 :goto_2

    .line 119
    .end local v6    # "destUserId":J
    :cond_7
    iget v0, v5, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 120
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcuj$1;->b:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10, v11}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;J)V

    goto/16 :goto_2
.end method
