.class final Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;
.super Ljava/lang/Object;
.source "CSpaceRecentOpeartionActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 506
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1509
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->dismissLoadingDialog()V

    .line 1514
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a(Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 506
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 524
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->dismissLoadingDialog()V

    .line 529
    const-string/jumbo v0, "13020005"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v1, Lfzs$h;->dt_cspace_error_no_auth:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a$1;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity$a;->a:Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;

    sget v1, Lfzs$h;->cspace_info_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/CSpaceRecentOpeartionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 520
    return-void
.end method
