.class final Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
.super Landroid/widget/RelativeLayout;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x8

    .line 81
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->e:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->tab_indicator_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    sget v0, Lcig$f;->tv_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->b:Landroid/widget/TextView;

    .line 85
    sget v0, Lcig$f;->tv_unread_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    .line 86
    sget v0, Lcig$f;->unread_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->d:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$e;->a:I

    return p1
.end method
