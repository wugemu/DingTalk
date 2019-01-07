.class public Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;
.super Landroid/widget/RelativeLayout;
.source "TeleConfTimeView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->teleconf_time_remain_mins:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget v0, Leuj$i;->text_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setDefaultValue(I)V
    .locals 2
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->c:I

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .param p1, "included"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 4
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 67
    if-gez p1, :cond_0

    .line 68
    const/4 p1, 0x0

    .line 70
    :cond_0
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->b:I

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->c:I

    .line 74
    :cond_1
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->c:I

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->b:I

    if-eq v0, v1, :cond_2

    .line 1093
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->c:I

    iget v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->b:I

    if-eq v0, v1, :cond_2

    .line 1096
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->c:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->b:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1097
    new-instance v1, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1106
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1107
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 78
    :cond_2
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfTimeView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    :cond_0
    return-void
.end method
