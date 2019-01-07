.class public Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;
.super Landroid/widget/LinearLayout;
.source "DtPullToRefreshLayout.java"

# interfaces
.implements Lkey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/animation/ValueAnimator;

.field public c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lecj$f;->dtpulltorefreshlayout_header:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1116
    sget v0, Lecj$c;->dp16:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sget v1, Lecj$c;->dp16:I

    invoke-static {v1}, Leda;->d(I)I

    move-result v1

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->setPadding(IIII)V

    .line 1117
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->setGravity(I)V

    .line 1119
    sget v0, Lecj$e;->ptr_header_ring:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->d:Landroid/widget/ImageView;

    .line 1120
    new-instance v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->e:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

    .line 1121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->e:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    sget v0, Lecj$e;->ptr_header_four_ball:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    sget v1, Lecj$d;->dtpulltorefreshlayout_four_ball:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1126
    sget v0, Lecj$e;->ptr_header_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->g:Landroid/widget/ImageView;

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->g:Landroid/widget/ImageView;

    new-instance v1, Lecw;

    sget v2, Lecj$g;->icon_logo:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lecj$b;->ui_common_theme_icon_bg_color:I

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1129
    sget v0, Lecj$e;->ptr_header_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    .line 112
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 139
    iput-object v3, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 143
    iput-object v3, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->b:Landroid/animation/ValueAnimator;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->e:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a(F)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_2
    :goto_0
    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->g:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a()V

    .line 163
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLkfe;)V
    .locals 2
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lkfe;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 237
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->e:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

    invoke-virtual {p4}, Lkfe;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a(F)V

    .line 239
    invoke-virtual {p4}, Lkfe;->g()F

    move-result v0

    .line 2058
    iget v1, p4, Lkfe;->i:F

    .line 239
    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a()V

    .line 168
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 4
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->e:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$b;->a(F)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->f:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lin/srain/cube/views/ptr/PtrFrameLayout;

    .prologue
    .line 190
    return-void
.end method

.method public final setHeaderTextContent(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;)V
    .locals 0
    .param p1, "textContent"    # Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$Header;->c:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    .line 134
    return-void
.end method
