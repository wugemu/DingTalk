.class final Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$2;
.super Ljava/lang/Object;
.source "JobDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$2;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->finish()V

    .line 166
    return-void
.end method
