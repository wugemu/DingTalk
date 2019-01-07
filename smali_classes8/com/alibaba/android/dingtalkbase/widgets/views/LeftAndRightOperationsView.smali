.class public Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;
.super Landroid/widget/RelativeLayout;
.source "LeftAndRightOperationsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->two_split_operations_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1062
    sget v1, Lcig$f;->rl_left:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->a:Landroid/view/View;

    .line 1063
    sget v1, Lcig$f;->rl_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->b:Landroid/view/View;

    .line 1064
    sget v1, Lcig$f;->icon_left:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1065
    sget v1, Lcig$f;->icon_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1066
    sget v1, Lcig$f;->tv_left:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->e:Landroid/widget/TextView;

    .line 1067
    sget v1, Lcig$f;->tv_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->f:Landroid/widget/TextView;

    .line 1068
    sget v1, Lcig$f;->view_split:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->g:Landroid/view/View;

    .line 1070
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->a:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->b:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget-object v1, Lcig$l;->LeftAndRightOperationsView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_iconLeft:I

    sget v3, Lcig$j;->icon_ding_ding_fill:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_iconRight:I

    sget v3, Lcig$j;->icon_ding_ding_fill:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 48
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->e:Landroid/widget/TextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_textLeft:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->f:Landroid/widget/TextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_textRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_colorLeft:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 51
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->e:Landroid/widget/TextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_colorLeft:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_colorRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->f:Landroid/widget/TextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_colorRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_0
    return-void

    .line 55
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;)Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;

    return-object v0
.end method


# virtual methods
.method public setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;)V
    .locals 0
    .param p1, "operationViewListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;

    .line 141
    return-void
.end method
