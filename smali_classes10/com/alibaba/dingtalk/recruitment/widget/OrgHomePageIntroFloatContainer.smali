.class public Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;
.super Lcom/alibaba/dingtalk/recruitment/adosorber/IFloatContainer;
.source "OrgHomePageIntroFloatContainer.java"


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->a:Landroid/widget/FrameLayout;

    .line 1037
    new-instance v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    .line 1039
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->a:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getOrgIntroView()Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->b:Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    return-object v0
.end method

.method public getVFloat()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/OrgHomePageIntroFloatContainer;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method
