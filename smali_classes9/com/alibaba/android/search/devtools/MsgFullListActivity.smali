.class public Lcom/alibaba/android/search/devtools/MsgFullListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MsgFullListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/devtools/MsgFullListActivity$1;-><init>(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->b:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    .prologue
    .line 43
    .line 1088
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6b63\u5728\u62c9\u53d6\u6d88\u606f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1090
    iget-object v1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/devtools/MsgFullListActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "x3"    # I

    .prologue
    .line 43
    const/16 v0, 0x64

    .line 1110
    new-instance v1, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/search/devtools/MsgFullListActivity$2;-><init>(Lcom/alibaba/android/search/devtools/MsgFullListActivity;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p1, p2, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->listNextMessages(Lcom/alibaba/wukong/im/Message;ILcom/alibaba/wukong/Callback;)V

    .line 43
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/devtools/MsgFullListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/devtools/MsgFullListActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->b:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lemt$e;->btn_full_list:I

    if-ne v1, v2, :cond_0

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "is_confirm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 98
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v1, Lemt$f;->search_activity_msg_full_list:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->setContentView(I)V

    .line 80
    sget v1, Lemt$e;->tv_status:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->a:Landroid/widget/TextView;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/devtools/MsgFullListActivity;->c:Landroid/content/BroadcastReceiver;

    .line 106
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 107
    return-void
.end method
