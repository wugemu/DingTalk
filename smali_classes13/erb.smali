.class public final Lerb;
.super Ljava/lang/Object;
.source "FeedbackButtonPresenter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/widget/FrameLayout$LayoutParams;

.field final c:Landroid/app/Activity;

.field final d:Landroid/view/View;

.field private final e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iFeedbackButtonView"    # Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lerb$2;

    invoke-direct {v0, p0}, Lerb$2;-><init>(Lerb;)V

    iput-object v0, p0, Lerb;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 32
    iput-object p1, p0, Lerb;->c:Landroid/app/Activity;

    .line 33
    invoke-interface {p2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lerb;->d:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x2

    .line 38
    iget-object v0, p0, Lerb;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lerb;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1050
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lerb;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    .line 1056
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    sget v1, Lemt$d;->search_vvip_chinese:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1061
    :goto_0
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1063
    iget-object v0, p0, Lerb;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1065
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1066
    const/16 v2, 0x55

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1067
    iput-object v1, p0, Lerb;->b:Landroid/widget/FrameLayout$LayoutParams;

    .line 1069
    iget-object v2, p0, Lerb;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    new-instance v1, Lerb$1;

    invoke-direct {v1, p0}, Lerb$1;-><init>(Lerb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_0
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    sget v1, Lemt$d;->search_vvip_feedback_english:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lerb;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lerb;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 117
    iget-object v0, p0, Lerb;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lerb;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lerb;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lerb;->e:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
