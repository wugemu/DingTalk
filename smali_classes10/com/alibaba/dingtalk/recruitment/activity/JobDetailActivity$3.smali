.class final Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$3;
.super Ljava/lang/Object;
.source "JobDetailActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/recruitment/widget/DraggableViewRelativeLayout$a;


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
    .line 168
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->finish()V

    .line 172
    return-void
.end method
