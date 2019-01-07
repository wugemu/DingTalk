.class final Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;
.super Ljava/lang/Object;
.source "JobDetailActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableLinearLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)V

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$5;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
