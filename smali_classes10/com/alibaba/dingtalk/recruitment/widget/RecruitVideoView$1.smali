.class final Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;
.super Ljava/lang/Object;
.source "RecruitVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 61
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)Z
    .locals 4
    .param p1, "iMediaPlayer"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .param p2, "info"    # J
    .param p4, "l1"    # J
    .param p6, "l2"    # J
    .param p8, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 64
    const-wide/16 v0, 0x2bd

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/support/v4/widget/ContentLoadingProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/support/v4/widget/ContentLoadingProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    .line 75
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    const-wide/16 v0, 0x2be

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/support/v4/widget/ContentLoadingProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView$1;->a:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;)Landroid/support/v4/widget/ContentLoadingProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
