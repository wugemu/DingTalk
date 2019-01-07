.class public Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicWaitingDialog;
.super Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;
.source "LinkMicWaitingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget v0, Lbtp$f;->dialog_linkmic_waiting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicWaitingDialog;->setContentView(I)V

    .line 21
    return-void
.end method
