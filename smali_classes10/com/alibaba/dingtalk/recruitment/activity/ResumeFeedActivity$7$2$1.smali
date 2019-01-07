.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 372
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 378
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "resumeFeedShakeDialog":Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 1041
    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->a:Landroid/support/v7/widget/RecyclerView;

    .line 380
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->j(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v1

    .line 1045
    iput-object v1, v0, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->b:Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    .line 381
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v1, v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 382
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/dialog/ResumeFeedShakeDialog;->show()V

    goto :goto_0
.end method
