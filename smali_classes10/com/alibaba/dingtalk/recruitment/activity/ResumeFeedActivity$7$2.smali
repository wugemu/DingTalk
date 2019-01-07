.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$2;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    return-void
.end method
