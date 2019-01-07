.class public Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImRobotConversationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/wukong/im/Conversation;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->b:Landroid/app/Activity;

    .line 32
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 1038
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1039
    const-string/jumbo v1, "action_im_robot_created"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1040
    const-string/jumbo v1, "action_im_robot_updated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    const-string/jumbo v1, "action_im_robot_deleted"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string/jumbo v1, "light_app_im_robot_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1044
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 34
    :cond_0
    return-void
.end method

.method private d(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->conv:Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/ConvModelObject;->cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 126
    return-void
.end method

.method public b(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 134
    return-void
.end method

.method public c(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .prologue
    .line 142
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 52
    if-eqz p2, :cond_0

    .line 53
    const-string/jumbo v6, "action_im_robot_created"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    const-string/jumbo v6, "intent_key_robot_object"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 55
    .local v5, "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->d(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 56
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->c(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    .line 94
    .end local v5    # "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string/jumbo v6, "action_im_robot_updated"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    const-string/jumbo v6, "intent_key_robot_object"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 60
    .restart local v5    # "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->d(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->b(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto :goto_0

    .line 63
    .end local v5    # "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    :cond_2
    const-string/jumbo v6, "action_im_robot_deleted"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const-string/jumbo v6, "intent_key_robot_object"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 65
    .restart local v5    # "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    invoke-direct {p0, v5}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->d(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V

    goto :goto_0

    .line 68
    .end local v5    # "object":Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;
    :cond_3
    const-string/jumbo v6, "light_app_im_robot_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 69
    const-string/jumbo v6, "data"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 71
    const/4 v4, 0x0

    .line 73
    .local v4, "lightAppNotifyObject":Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver$a;
    :try_start_0
    const-class v6, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver$a;

    invoke-static {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver$a;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    if-eqz v4, :cond_0

    .line 1153
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    cmp-long v6, v10, v10

    if-lez v6, :cond_0

    .line 1154
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
