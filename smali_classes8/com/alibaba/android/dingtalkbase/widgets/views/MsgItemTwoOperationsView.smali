.class public Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;
.super Landroid/widget/RelativeLayout;
.source "MsgItemTwoOperationsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1052
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->msg_item_two_operations_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1053
    sget v1, Lcig$f;->tv_left:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    .line 1054
    sget v1, Lcig$f;->tv_right:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    .line 1055
    sget v1, Lcig$f;->iv_horizontal_split:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c:Landroid/view/View;

    .line 1057
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget-object v1, Lcig$l;->LeftAndRightOperationsView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_textLeft:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    sget v2, Lcig$l;->LeftAndRightOperationsView_textRight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;)Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "textStringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "textString"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setOperationViewListener(Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;)V
    .locals 0
    .param p1, "operationViewListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/MsgItemTwoOperationsView$a;

    .line 120
    return-void
.end method
