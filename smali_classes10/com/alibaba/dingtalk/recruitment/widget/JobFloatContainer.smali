.class public Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;
.super Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;
.source "JobFloatContainer.java"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, -0x1

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1036
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->a:Landroid/widget/FrameLayout;

    .line 1037
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    .line 1039
    invoke-static {}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->getDefaultConfig()Lgvf;

    move-result-object v0

    .line 2033
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lgvf;->d:F

    .line 1041
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;->a(Lgvf;)V

    .line 1043
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1044
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getVFloat()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getVVideo()Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/JobFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/RecruitVideoView;

    return-object v0
.end method
