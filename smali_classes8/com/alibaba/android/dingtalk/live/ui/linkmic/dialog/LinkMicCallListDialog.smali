.class public Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;
.super Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;
.source "LinkMicCallListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:I

.field private c:Lbxv;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;-><init>(Landroid/content/Context;)V

    .line 35
    iput p2, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->b:I

    .line 36
    new-instance v0, Lbxv;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lbxv;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->c:Lbxv;

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->c:Lbxv;

    .line 1044
    iput-object p0, v0, Lbxv;->b:Landroid/view/View$OnClickListener;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->c:Lbxv;

    .line 2039
    iput-object p1, v0, Lbxv;->a:Ljava/util/List;

    .line 2040
    invoke-virtual {v0}, Lbxv;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 88
    .local v1, "id":I
    sget v3, Lbtp$e;->btn_connect:I

    if-ne v1, v3, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->dismiss()V

    .line 90
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a:Lbxw;

    if-eqz v3, :cond_0

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 92
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a:Lbxw;

    invoke-interface {v3, v2}, Lbxw;->a(Landroid/os/Message;)V

    .line 114
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 96
    :cond_1
    sget v3, Lbtp$e;->btn_action:I

    if-ne v1, v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->dismiss()V

    .line 98
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->a:Lbxw;

    if-eqz v3, :cond_0

    .line 99
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 100
    .restart local v2    # "msg":Landroid/os/Message;
    iget v3, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->b:I

    if-nez v3, :cond_2

    .line 101
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "currentUid":Ljava/lang/String;
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v3

    .line 2497
    iget-object v3, v3, Lbws;->i:Ljava/lang/String;

    .line 105
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_0

    .line 108
    :cond_3
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lbtp$f;->dialog_linkmic_call_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->setContentView(I)V

    .line 1052
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1054
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    sget v0, Lbtp$e;->layout_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1058
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1062
    :cond_0
    sget v0, Lbtp$e;->hands_up_list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1063
    if-eqz v0, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->c:Lbxv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1065
    sget v1, Lbtp$e;->tv_empty:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1068
    :cond_1
    sget v0, Lbtp$e;->btn_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1069
    if-eqz v0, :cond_2

    .line 1070
    iget v1, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallListDialog;->b:I

    if-nez v1, :cond_3

    .line 1071
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    .line 1073
    :cond_3
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v2

    .line 1497
    iget-object v2, v2, Lbws;->i:Ljava/lang/String;

    .line 1074
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1075
    sget v1, Lbtp$g;->dt_live_linkmic_hands_up:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1079
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1080
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1077
    :cond_4
    sget v1, Lbtp$g;->dt_live_linkmic_hands_up_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
