.class final Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$4;
.super Ljava/lang/Object;
.source "JobFeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 233
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$4;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    .line 237
    return-void
.end method
