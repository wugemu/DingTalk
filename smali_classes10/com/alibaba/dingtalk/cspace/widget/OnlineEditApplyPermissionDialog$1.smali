.class final Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$1;
.super Ljava/lang/Object;
.source "OnlineEditApplyPermissionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

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
    .line 57
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "cspace_file_mobile_apply_contact"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V

    .line 60
    return-void
.end method