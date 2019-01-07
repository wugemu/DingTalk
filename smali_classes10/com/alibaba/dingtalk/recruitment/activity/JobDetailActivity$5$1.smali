.class final Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5$1;
.super Ljava/lang/Object;
.source "JobDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;->a(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    .line 204
    :cond_0
    return-void
.end method
