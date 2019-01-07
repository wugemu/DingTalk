.class public Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;
.super Landroid/widget/FrameLayout;
.source "DingSubFilterDropDownItemView.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/view/View;

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1032
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_sub_filter_drop_down_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1033
    sget v0, Laxp$f;->item_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->a:Landroid/widget/TextView;

    .line 1034
    sget v0, Laxp$f;->iv_selected:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->b:Landroid/view/View;

    .line 1035
    sget v0, Laxp$f;->v_split:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->c:Landroid/view/View;

    .line 29
    return-void
.end method
