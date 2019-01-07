.class public Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;
.super Landroid/widget/LinearLayout;
.source "MsgSearchFilterFlatMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/view/View$OnClickListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v1, Lcby$c;->MsgSearchFilterFlatMenuView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcby$c;->MsgSearchFilterFlatMenuView_left_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->d:Ljava/lang/String;

    .line 33
    sget v1, Lcby$c;->MsgSearchFilterFlatMenuView_right_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->e:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a()V

    .line 37
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcby$b;->layout_search_filter_flat_menu_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    sget v0, Lcby$a;->left_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->f:Landroid/widget/TextView;

    .line 43
    sget v0, Lcby$a;->right_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    .local v0, "id":I
    sget v1, Lcby$a;->left_btn:I

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->b:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    sget v1, Lcby$a;->right_btn:I

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->c:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/search/base/view/MsgSearchFilterFlatMenuView;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
