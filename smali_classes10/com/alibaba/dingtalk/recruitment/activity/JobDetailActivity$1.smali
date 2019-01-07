.class final Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$1;
.super Ljava/lang/Object;
.source "JobDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a()V
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
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity$1;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobDetailActivity;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a()V

    .line 133
    return-void
.end method
