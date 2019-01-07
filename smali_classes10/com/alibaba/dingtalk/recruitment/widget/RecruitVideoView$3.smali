.class final Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;
.super Ljava/lang/Object;
.source "RecruitVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lgvf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcms;->p(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getDuration()I

    move-result v3

    if-lez v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getDuration()I

    move-result v1

    .line 138
    .local v1, "duration":I
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getCurrentPosition()I

    move-result v0

    .line 139
    .local v0, "curPosition":I
    int-to-float v3, v0

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 140
    .local v2, "progress":F
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 141
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->b(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/widget/ProgressBar;

    move-result-object v3

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 1014
    if-eqz v3, :cond_1

    .line 1018
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_3

    .line 1019
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 143
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v3}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->c(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$a;->a(F)V

    .line 148
    .end local v0    # "curPosition":I
    .end local v1    # "duration":I
    .end local v2    # "progress":F
    :cond_2
    iget-object v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$3;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;Z)V

    goto :goto_0

    .line 1021
    .restart local v0    # "curPosition":I
    .restart local v1    # "duration":I
    .restart local v2    # "progress":F
    :cond_3
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1
.end method
