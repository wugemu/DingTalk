.class public Lcom/alibaba/android/ding/widget/DingTabActionBar;
.super Landroid/widget/RelativeLayout;
.source "DingTabActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingTabActionBar$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->a()V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->a()V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->a()V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_layout_ding_tab_actionbar:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    sget v1, Laxp$f;->iv_search:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 51
    new-instance v1, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;-><init>(Lcom/alibaba/android/ding/widget/DingTabActionBar;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    .line 1012
    invoke-virtual {v1}, Lcmr;->d()V

    .line 53
    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->a:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/DingTabActionBar$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/DingTabActionBar$1;-><init>(Lcom/alibaba/android/ding/widget/DingTabActionBar;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingTabActionBar$a;->c()V

    .line 72
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabActionBar;->b:Lcom/alibaba/android/ding/widget/DingTabActionBar$a;

    .line 1016
    invoke-static {}, Lcmq;->a()Lcmq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcmq;->b(Lcmq$a;)V

    .line 80
    :cond_0
    return-void
.end method
