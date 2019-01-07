.class final Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;
.super Ljava/lang/Object;
.source "LocalEditWpsNotInstallRemindDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "http://mo.wps.cn/mobile-app/office-android.html"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;

    .line 35
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lfzs$h;->dt_cspace_local_edit_app_install_guide:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog$1;->a:Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/LocalEditWpsNotInstallRemindDialog;->dismiss()V

    .line 37
    return-void
.end method
