.class final Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$2;
.super Ljava/lang/Object;
.source "OnlineEditFinishRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_file_mobile_editing_notnotice"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->dismiss()V

    .line 76
    return-void
.end method
