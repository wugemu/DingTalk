.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$1;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 356
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;

    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$7;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->h(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    .line 360
    return-void
.end method
