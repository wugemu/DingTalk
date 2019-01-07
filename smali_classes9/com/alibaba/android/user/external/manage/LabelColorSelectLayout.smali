.class public Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;
.super Landroid/widget/LinearLayout;
.source "LabelColorSelectLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;,
        Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$b;,
        Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a()V

    .line 57
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lezg$j;->label_color_select_layout:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->addView(Landroid/view/View;)V

    .line 64
    sget v2, Lezg$h;->color_grid_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 65
    .local v0, "gridView":Landroid/widget/GridView;
    new-instance v2, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;-><init>(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    .line 66
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->getLabelColorList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a(Ljava/util/List;)V

    .line 67
    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method

.method private getLabelColorList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$c;->label_color_array:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 73
    .local v0, "colorArray":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "colorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 75
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method


# virtual methods
.method public setColorSelectListener(Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;)V
    .locals 1
    .param p1, "colorSelectListener"    # Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    .line 1144
    iput-object p1, v0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$a;

    .line 83
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout;->a:Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/external/manage/LabelColorSelectLayout$c;->a(I)V

    .line 87
    return-void
.end method
