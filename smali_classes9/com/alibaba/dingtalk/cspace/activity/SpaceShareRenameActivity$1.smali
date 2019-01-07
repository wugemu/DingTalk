.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;
.super Ljava/lang/Object;
.source "SpaceShareRenameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 83
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 69
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity$1;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareRenameActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
