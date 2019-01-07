.class public Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "OrgCircleFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public a:Lcom/alibaba/android/user/contact/view/CircleView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

.field public d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:I

.field private k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->k:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/model/OrgTrendItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)Lcom/alibaba/android/user/contact/view/CircleView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a:Lcom/alibaba/android/user/contact/view/CircleView;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->circle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/CircleView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a:Lcom/alibaba/android/user/contact/view/CircleView;

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a:Lcom/alibaba/android/user/contact/view/CircleView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CircleView;->setCenterX(F)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_score:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/RiseNumberTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_score_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->b:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_cacal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->f:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_communication:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->g:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_coordination:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->h:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_score:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->i:Landroid/widget/RelativeLayout;

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->layout_org_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->e:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->j:I

    .line 86
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lezg$j;->fragment_org_circle:I

    return v0
.end method
