.class public Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;
.super Landroid/widget/FrameLayout;
.source "ScrollViewAndWebViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

.field public b:Landroid/view/ViewGroup;

.field public c:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Z

.field private i:F

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

.field private final n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->g:I

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->l:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$1;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->n:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->setScrollState(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->l:Z

    return v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->l:Z

    .line 173
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->h:Z

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->i:F

    .line 175
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->k:Z

    .line 176
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c()V

    .line 177
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getPageHeightWithoutStatusBar()I

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    return-void
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->a(II)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lgtt$b;->ui_common_white_icon_bg:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->e:Landroid/widget/TextView;

    sget v1, Lgtt$b;->ui_common_white_icon_bg:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->m:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->m:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;->a()V

    .line 223
    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b()V

    return-void
.end method

.method private getPageHeightWithoutStatusBar()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lguw;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Landroid/app/Activity;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setScrollState(I)V
    .locals 3
    .param p1, "state"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->g:I

    if-ne v0, p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iput p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->g:I

    .line 190
    iget v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->g:I

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->j:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->j:I

    if-le v0, v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a()V

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d()V

    goto :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getPageHeightWithoutStatusBar()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_4

    .line 202
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a()V

    goto :goto_0

    .line 204
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->getPageHeightWithoutStatusBar()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->a(II)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Lgtt$b;->ui_common_level1_button_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->e:Landroid/widget/TextView;

    sget v1, Lgtt$b;->ui_common_level1_button_bg_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->m:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->m:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;->b()V

    .line 239
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-nez v1, :cond_1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 168
    :goto_0
    return v1

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 151
    :pswitch_0
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->l:Z

    .line 152
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getCoreView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getCoreView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->h:Z

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->i:F

    .line 154
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->j:I

    .line 155
    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->i:F

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->i:F

    iget-object v4, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->k:Z

    goto :goto_1

    :cond_3
    move v1, v3

    .line 152
    goto :goto_2

    :cond_4
    move v2, v3

    .line 155
    goto :goto_3

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 159
    .local v0, "y":F
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->k:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->i:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    iget v2, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->j:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->i:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;->setScrollY(I)V

    goto :goto_1

    .line 165
    .end local v0    # "y":F
    :pswitch_2
    invoke-direct {p0}, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b()V

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIvBack(Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;)V
    .locals 0
    .param p1, "ivBack"    # Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 91
    return-void
.end method

.method public setListener(Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->m:Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer$a;

    .line 87
    return-void
.end method

.method public setScrollView(Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;)V
    .locals 0
    .param p1, "scrollView"    # Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->a:Lcom/alibaba/dingtalk/recruitment/widget/TouchObservableScrollView;

    .line 103
    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "title"    # Landroid/widget/TextView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->f:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method public setTvShare(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "tvShare"    # Landroid/widget/TextView;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->e:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method public setWebViewLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "webViewLayout"    # Landroid/view/ViewGroup;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->b:Landroid/view/ViewGroup;

    .line 107
    return-void
.end method

.method public setWebViewWrapper(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;)V
    .locals 0
    .param p1, "webViewWrapper"    # Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/widget/ScrollViewAndWebViewContainer;->c:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 111
    return-void
.end method
