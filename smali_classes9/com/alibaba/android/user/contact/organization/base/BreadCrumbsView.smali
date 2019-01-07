.class public Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;
.super Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;
.source "BreadCrumbsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/widget/LinearLayout;

.field private c:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    .line 68
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c()V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(II)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-le v0, p2, :cond_1

    .line 170
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    .local v2, "removeKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;

    invoke-interface {v3, v2, v0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;->a(Ljava/lang/String;I)V

    .line 168
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    .end local v2    # "removeKey":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;

    if-eqz v3, :cond_2

    .line 178
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;

    invoke-interface {v3, v1, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;->b(Ljava/lang/String;I)V

    .line 180
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(II)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 84
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    .line 85
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 195
    .local v0, "breadCrumbCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 196
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "view":Landroid/view/View;
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_1

    .line 198
    sget v3, Lezg$h;->tv_dept_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getUnSelectedColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 201
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    :goto_1
    if-nez v1, :cond_0

    if-le v0, v7, :cond_0

    .line 210
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 212
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 214
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 215
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    sget v3, Lezg$h;->tv_dept_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getSelectedColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 206
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 217
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(II)V

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 129
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->d()V

    .line 130
    new-instance v0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$2;-><init>(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(II)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "itemName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getLayout()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "view":Landroid/view/View;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->bread_crumbs_default:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :goto_0
    new-instance v1, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$1;-><init>(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->d()V

    .line 116
    return-void

    .line 95
    :cond_0
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$3;-><init>(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public getKeyPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a:Ljava/util/List;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lezg$j;->bread_crumb_item:I

    return v0
.end method

.method public getSelectedColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->text_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getUnSelectedColor()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public setBreakClickListener(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;)V
    .locals 0
    .param p1, "mClickListener"    # Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->c:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;

    .line 188
    return-void
.end method
