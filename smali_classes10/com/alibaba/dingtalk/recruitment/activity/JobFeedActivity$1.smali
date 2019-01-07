.class final Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$1;
.super Ljava/lang/Object;
.source "JobFeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->finish()V

    .line 90
    return-void
.end method
