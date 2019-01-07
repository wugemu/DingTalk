.class final Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$5;
.super Ljava/lang/Object;
.source "ResumeFeedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity$5;->a:Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/ResumeFeedActivity;)V

    .line 290
    return-void
.end method
