.class public Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "ExpandMsgActivity.java"


# instance fields
.field private a:J

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->a:J

    return-wide p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v10, Lctk$g;->activity_expand_msg:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->setContentView(I)V

    .line 46
    sget v10, Lctk$f;->tv_expand_msg:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 47
    .local v9, "tvMsg":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "expand_content"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 55
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    .line 57
    .local v2, "emojiUtil":Lcok;
    invoke-virtual {v2, v0}, Lcok;->a(Ljava/lang/String;)Z

    move-result v4

    .line 58
    .local v4, "isAllEmotion":Z
    if-eqz v4, :cond_3

    const/high16 v10, 0x41f00000    # 30.0f

    :goto_1
    invoke-static {p0, v0, v10}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v8

    .line 59
    .local v8, "spannableString":Landroid/text/SpannableString;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)V

    .line 66
    .local v5, "listener":Landroid/view/GestureDetector$OnGestureListener;
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p0, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 67
    .local v3, "gesture":Landroid/view/GestureDetector;
    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$2;

    invoke-direct {v10, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "message"

    invoke-static {v10, v11}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/Message;

    .line 75
    .local v7, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 76
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_2

    if-eqz v7, :cond_2

    .line 78
    invoke-static {v7}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 79
    invoke-static {}, Lebc;->a()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 80
    sget v10, Lctk$f;->ll_to_task:I

    invoke-virtual {p0, v10}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 81
    .local v6, "llToTask":Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;

    invoke-direct {v10, p0, v1, v7}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    .end local v6    # "llToTask":Landroid/widget/LinearLayout;
    :cond_2
    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$4;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;)V

    iput-object v10, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->b:Landroid/content/BroadcastReceiver;

    .line 1117
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1118
    const-string/jumbo v11, "action_ding_create_result"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12, v10}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    .line 58
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v3    # "gesture":Landroid/view/GestureDetector;
    .end local v5    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    .end local v7    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "spannableString":Landroid/text/SpannableString;
    :cond_3
    const/high16 v10, 0x41c00000    # 24.0f

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;->b:Landroid/content/BroadcastReceiver;

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 102
    return-void
.end method
