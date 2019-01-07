.class public Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;
.super Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;
.source "LinkMicCallingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:J

.field private c:Landroid/widget/TextView;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;-><init>(Landroid/content/Context;)V

    .line 23
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->b:J

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->d:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->dismiss()V

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a:Lbxw;

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a:Lbxw;

    invoke-interface {v1, v0}, Lbxw;->a(Landroid/os/Message;)V

    .line 100
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;

    .prologue
    .line 18
    .line 1062
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1063
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a()V

    .line 1064
    :goto_0
    return-void

    .line 1066
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->c:Landroid/widget/TextView;

    sget v2, Lbtp$g;->dt_live_anchor_calling_msg_var1:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->b:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->b:J

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->d:Landroid/os/Handler;

    const/16 v1, 0x7e2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->dismiss()V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 81
    .local v0, "id":I
    sget v2, Lbtp$e;->tv_refused:I

    if-ne v0, v2, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->dismiss()V

    .line 83
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a:Lbxw;

    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 85
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a:Lbxw;

    invoke-interface {v2, v1}, Lbxw;->a(Landroid/os/Message;)V

    .line 91
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget v2, Lbtp$e;->tv_accept:I

    if-ne v0, v2, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lbtp$f;->dialog_linkmic_calling:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->setContentView(I)V

    .line 1048
    sget v0, Lbtp$e;->tv_refused:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1052
    :cond_0
    sget v0, Lbtp$e;->tv_accept:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1053
    if-eqz v0, :cond_1

    .line 1054
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    :cond_1
    sget v0, Lbtp$e;->tv_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->c:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;->d:Landroid/os/Handler;

    const/16 v1, 0x7e2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    return-void
.end method
