.class public Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;
.super Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;
.source "LinkMicPreviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->dismiss()V

    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 49
    .local v0, "id":I
    sget v2, Lbtp$e;->btn_later:I

    if-ne v0, v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->dismiss()V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget v2, Lbtp$e;->btn_request:I

    if-ne v0, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->dismiss()V

    .line 53
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->a:Lbxw;

    if-eqz v2, :cond_0

    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 55
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 56
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->a:Lbxw;

    invoke-interface {v2, v1}, Lbxw;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget v0, Lbtp$f;->dialog_linkmic_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->setContentView(I)V

    .line 1035
    sget v0, Lbtp$e;->btn_later:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    :cond_0
    sget v0, Lbtp$e;->btn_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    :cond_1
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    invoke-virtual {v0}, Lbws;->b()Ljjx;

    move-result-object v1

    .line 1068
    if-eqz v1, :cond_2

    .line 1069
    sget v0, Lbtp$e;->layout_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicPreviewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Ljjx;->b(Landroid/widget/RelativeLayout;)V

    .line 32
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->b()Ljjx;

    move-result-object v0

    .line 76
    .local v0, "pushInstance":Ljjx;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljjx;->d()V

    .line 79
    :cond_0
    return-void
.end method
