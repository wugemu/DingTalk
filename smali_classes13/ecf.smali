.class public final Lecf;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "FilterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecf$b;,
        Lecf$a;
    }
.end annotation


# instance fields
.field public b:Lecf$a;

.field private c:Landroid/content/Context;

.field private d:Lcvi;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Lecf$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcvi;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filterListAdapter"    # Lcvi;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x42300000    # 44.0f

    const/16 v1, 0x8

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v2, p0, Lecf;->g:Lecf$b;

    .line 36
    iput-object p2, p0, Lecf;->d:Lcvi;

    .line 1041
    iput-object p1, p0, Lecf;->c:Landroid/content/Context;

    .line 1043
    sget v0, Lctk$g;->view_filter_layout:I

    invoke-static {p1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lecf;->f:Landroid/view/View;

    .line 1079
    iget-object v0, p0, Lecf;->f:Landroid/view/View;

    sget v2, Lctk$f;->listview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lecf;->e:Landroid/widget/ListView;

    .line 1082
    iget-object v0, p0, Lecf;->d:Lcvi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lecf;->d:Lcvi;

    invoke-virtual {v0}, Lcvi;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1083
    iget-object v0, p0, Lecf;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1084
    iget-object v2, p0, Lecf;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 1085
    mul-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1086
    iget-object v2, p0, Lecf;->e:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lecf;->e:Landroid/widget/ListView;

    iget-object v2, p0, Lecf;->d:Lcvi;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1089
    iget-object v0, p0, Lecf;->e:Landroid/widget/ListView;

    new-instance v2, Lecf$1;

    invoke-direct {v2, p0}, Lecf$1;-><init>(Lecf;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1046
    invoke-virtual {p0, v4}, Lecf;->setOutsideTouchable(Z)V

    .line 1047
    invoke-virtual {p0, v4}, Lecf;->setFocusable(Z)V

    .line 1049
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lecf;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    iget-object v0, p0, Lecf;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lecf;->setContentView(Landroid/view/View;)V

    .line 2060
    iget-object v0, p0, Lecf;->c:Landroid/content/Context;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lecf;->setWidth(I)V

    .line 2061
    iget-object v0, p0, Lecf;->d:Lcvi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lecf;->d:Lcvi;

    invoke-virtual {v0}, Lcvi;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2062
    iget-object v0, p0, Lecf;->d:Lcvi;

    invoke-virtual {v0}, Lcvi;->getCount()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    .line 2063
    :goto_0
    iget-object v1, p0, Lecf;->c:Landroid/content/Context;

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 2064
    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lecf;->setHeight(I)V

    .line 2105
    :cond_1
    iget-object v0, p0, Lecf;->f:Landroid/view/View;

    new-instance v1, Lecf$2;

    invoke-direct {v1, p0}, Lecf$2;-><init>(Lecf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    return-void

    .line 2062
    :cond_2
    iget-object v0, p0, Lecf;->d:Lcvi;

    invoke-virtual {v0}, Lcvi;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lecf;)Lecf$a;
    .locals 1
    .param p0, "x0"    # Lecf;

    .prologue
    .line 19
    iget-object v0, p0, Lecf;->b:Lecf$a;

    return-object v0
.end method

.method static synthetic b(Lecf;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lecf;

    .prologue
    .line 19
    iget-object v0, p0, Lecf;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lecf;->d:Lcvi;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lecf;->d:Lcvi;

    invoke-virtual {v0}, Lcvi;->notifyDataSetChanged()V

    .line 77
    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 128
    return-void
.end method
