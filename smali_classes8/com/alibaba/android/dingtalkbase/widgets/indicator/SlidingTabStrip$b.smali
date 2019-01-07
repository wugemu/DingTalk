.class final Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;
.super Landroid/widget/RelativeLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 270
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;

    .line 271
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 272
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->sliding_tab_indicator_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 273
    sget v0, Lcig$f;->tv_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    .line 274
    sget v0, Lcig$f;->tv_unread_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->d:Landroid/widget/TextView;

    .line 275
    sget v0, Lcig$f;->unread_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->e:Landroid/widget/ImageView;

    .line 276
    sget v0, Lcig$f;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->b(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 283
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->c(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->d(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->f(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->g(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->h(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    return-void

    .line 286
    :cond_2
    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;->e(Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method
