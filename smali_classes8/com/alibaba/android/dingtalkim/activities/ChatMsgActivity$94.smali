.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;
.super Landroid/content/BroadcastReceiver;
.source "ChatMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 2893
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 2896
    const-string/jumbo v8, "message"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .line 2897
    .local v6, "serializable":Ljava/io/Serializable;
    const-string/jumbo v8, "intent_key_menu_seed"

    invoke-virtual {p2, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2898
    .local v4, "menuSeed":J
    const-string/jumbo v8, "user_name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2899
    .local v7, "userName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_1

    .line 2936
    :cond_0
    :goto_0
    return-void

    .line 2902
    :cond_1
    if-eqz v6, :cond_0

    instance-of v8, v6, Lcom/alibaba/wukong/im/Message;

    if-eqz v8, :cond_0

    .line 2903
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->I(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    move-object v3, v6

    .line 2904
    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 2905
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    const/4 v2, 0x0

    .line 2906
    .local v2, "isDingCard":Z
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v8

    const/16 v9, 0x640

    if-ne v8, v9, :cond_2

    .line 2907
    const/4 v2, 0x1

    .line 2909
    :cond_2
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    if-nez v2, :cond_3

    const-string/jumbo v8, "reaction_comment_count"

    .line 2910
    invoke-static {v3, v8}, Lddq;->c(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-gtz v8, :cond_6

    .line 2911
    :cond_3
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->J(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2912
    sget v8, Lctk$i;->dt_banned_cannot_do_this_operation:I

    invoke-static {v8}, Lcms;->a(I)V

    goto :goto_0

    .line 2915
    :cond_4
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    if-eqz v8, :cond_0

    .line 2916
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2917
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldjx;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ldjx;->a(Z)V

    .line 2919
    :cond_5
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 2920
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->L(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2921
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    invoke-virtual {v8, v3}, Lcro;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 2922
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    invoke-static {v3, v8}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Lcro;)V

    .line 2923
    invoke-static {v3, v7}, Lddq;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ldkx;

    move-result-object v0

    .line 2924
    .local v0, "commentReplyInfo":Ldkx;
    if-eqz v0, :cond_0

    iget-object v8, v0, Ldkx;->a:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    iget-object v8, v0, Ldkx;->a:Ljava/util/HashMap;

    .line 2925
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y:Lcro;

    .line 3166
    iget-object v8, v8, Lcro;->j:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 2925
    if-nez v8, :cond_0

    .line 2926
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    .line 2927
    .local v1, "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    sget v9, Lctk$i;->dt_im_message_quote:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->append(Ljava/lang/CharSequence;)V

    .line 2928
    const-string/jumbo v8, ":"

    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->append(Ljava/lang/CharSequence;)V

    .line 2929
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v9, v0, Ldkx;->a:Ljava/util/HashMap;

    invoke-static {v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2933
    .end local v0    # "commentReplyInfo":Ldkx;
    .end local v1    # "editText":Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;
    :cond_6
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$94;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v8, v3}, Lddq;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_0
.end method
