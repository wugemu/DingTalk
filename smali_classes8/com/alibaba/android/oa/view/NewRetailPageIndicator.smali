.class public Lcom/alibaba/android/oa/view/NewRetailPageIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "NewRetailPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;,
        Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/CharSequence;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Lcrj;

.field private g:I

.field private h:Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$1;-><init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->e:Landroid/view/View$OnClickListener;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 73
    new-instance v0, Lcrj;

    sget v1, Ledz$b;->tabPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lcrj;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->g:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->h:Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 8
    .param p1, "item"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    iget-object v6, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b:Ljava/util/List;

    if-nez v6, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iput p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->g:I

    .line 163
    iget-object v6, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    invoke-virtual {v6}, Lcrj;->getChildCount()I

    move-result v3

    .line 164
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 165
    iget-object v6, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    invoke-virtual {v6, v1}, Lcrj;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_3

    move v2, v4

    .line 167
    .local v2, "isSelected":Z
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 168
    if-eqz v2, :cond_5

    .line 3086
    iget-object v6, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    invoke-virtual {v6, p1}, Lcrj;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3087
    iget-object v7, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 3088
    iget-object v7, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3090
    :cond_2
    new-instance v7, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;

    invoke-direct {v7, p0, v6}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$2;-><init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Landroid/view/View;)V

    iput-object v7, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    .line 3097
    iget-object v6, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->d:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->post(Ljava/lang/Runnable;)Z

    .line 170
    iget-boolean v6, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c:Z

    if-eqz v6, :cond_4

    .line 171
    check-cast v0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Z)V

    .line 164
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "isSelected":Z
    .restart local v0    # "child":Landroid/view/View;
    :cond_3
    move v2, v5

    .line 166
    goto :goto_2

    .line 173
    .restart local v2    # "isSelected":Z
    :cond_4
    check-cast v0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Z)V

    goto :goto_3

    .line 176
    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    check-cast v0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Z)V

    goto :goto_3

    .line 180
    .end local v2    # "isSelected":Z
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->h:Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->h:Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    invoke-interface {v4, p1}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;->a(I)V

    goto :goto_0
.end method

.method public setOnTabReselectedListener(Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->h:Lcom/alibaba/android/oa/view/NewRetailPageIndicator$a;

    .line 79
    return-void
.end method

.method public setShowTabIndicator(Z)V
    .locals 0
    .param p1, "isShowTabIndicator"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c:Z

    .line 83
    return-void
.end method

.method public setTitleList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "titleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 152
    iput-object p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b:Ljava/util/List;

    .line 1134
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    invoke-virtual {v0}, Lcrj;->removeAllViews()V

    .line 1135
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    move v4, v2

    .line 1136
    :goto_1
    if-ge v4, v1, :cond_3

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1138
    if-nez v0, :cond_0

    .line 1139
    sget-object v0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->a:Ljava/lang/CharSequence;

    .line 2119
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_2

    .line 2120
    new-instance v3, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;-><init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Landroid/content/Context;B)V

    .line 2124
    :goto_2
    invoke-static {v3, v4}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;I)I

    .line 2125
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->setFocusable(Z)V

    .line 2126
    iget-object v5, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2225
    iget-object v5, v3, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->b:Landroid/widget/TextView;

    .line 2127
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2128
    invoke-virtual {v3, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Z)V

    .line 2130
    iget-object v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->f:Lcrj;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v5}, Lcrj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1135
    goto :goto_0

    .line 2122
    :cond_2
    new-instance v3, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;-><init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Landroid/content/Context;)V

    goto :goto_2

    .line 1144
    :cond_3
    iget v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->g:I

    if-le v0, v1, :cond_4

    .line 1145
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->g:I

    .line 1147
    :cond_4
    iget v0, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->g:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setCurrentItem(I)V

    .line 1148
    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->requestLayout()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->setCurrentItem(I)V

    .line 155
    return-void
.end method
