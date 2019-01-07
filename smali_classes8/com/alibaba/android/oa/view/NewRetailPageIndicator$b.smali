.class final Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;
.super Landroid/widget/LinearLayout;
.source "NewRetailPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/NewRetailPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .line 192
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-direct {p0, p2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;Landroid/content/Context;B)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    .line 198
    const/4 v0, 0x0

    sget v1, Ledz$b;->tabPageIndicatorStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    invoke-direct {p0, p2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a(Landroid/content/Context;)V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;
    .param p1, "x1"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->a:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 203
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Ledz$g;->newretail_indicator_view:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 204
    sget v2, Ledz$f;->indicator_layout:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->d:Landroid/widget/RelativeLayout;

    .line 205
    sget v2, Ledz$f;->tv_text:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->b:Landroid/widget/TextView;

    .line 206
    sget v2, Ledz$f;->newretail_indicator:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->e:Landroid/view/View;

    .line 208
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 210
    .local v0, "count":I
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-lez v0, :cond_2

    if-ge v0, v4, :cond_2

    .line 212
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    div-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 216
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .end local v0    # "count":I
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 213
    .restart local v0    # "count":I
    .restart local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    if-lt v0, v4, :cond_0

    .line 214
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 5
    .param p1, "seleted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 235
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->e:Landroid/view/View;

    if-nez v2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ledz$c;->ui_common_content_fg_color_alpha_28:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 239
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->c:Lcom/alibaba/android/oa/view/NewRetailPageIndicator;

    invoke-static {v2}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator;->c(Lcom/alibaba/android/oa/view/NewRetailPageIndicator;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 246
    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ledz$c;->newretail_tab_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 252
    .local v0, "indicatorColor":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v2, p0, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->e:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 249
    .end local v0    # "indicatorColor":I
    :cond_2
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 250
    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/NewRetailPageIndicator$b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ledz$c;->ui_common_content_fg_color_alpha_28:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "indicatorColor":I
    goto :goto_1
.end method
