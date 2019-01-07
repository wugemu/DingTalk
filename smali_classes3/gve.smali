.class public final Lgve;
.super Landroid/widget/LinearLayout;
.source "MultiProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgve$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lgve$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgve;->b:Ljava/util/List;

    .line 33
    iput p2, p0, Lgve;->a:I

    .line 34
    invoke-direct {p0}, Lgve;->a()V

    .line 35
    return-void
.end method

.method static synthetic a(Lgve;)Lgve$a;
    .locals 1
    .param p0, "x0"    # Lgve;

    .prologue
    .line 19
    iget-object v0, p0, Lgve;->c:Lgve$a;

    return-object v0
.end method

.method private a()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 60
    iget v6, p0, Lgve;->a:I

    if-gtz v6, :cond_1

    .line 93
    :cond_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, v11}, Lgve;->setOrientation(I)V

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lgve;->a:I

    if-ge v1, v6, :cond_0

    .line 1096
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    sget v8, Lgtt$g;->Widget_AppCompat_ProgressBar_Horizontal:I

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1099
    const/16 v6, 0x2710

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1100
    invoke-virtual {p0}, Lgve;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lgtt$c;->recruitment_video_pb_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .local v4, "progressBar":Landroid/widget/ProgressBar;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 70
    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 71
    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 72
    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 74
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lgve;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 75
    .local v5, "rlContainer":Landroid/widget/RelativeLayout;
    invoke-virtual {v5, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v0, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v0, "containerLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 79
    invoke-virtual {p0, v5, v0}, Lgve;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    move v2, v1

    .line 82
    .local v2, "index":I
    new-instance v6, Lgve$1;

    invoke-direct {v6, p0, v2}, Lgve$1;-><init>(Lgve;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v6, p0, Lgve;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(IF)V
    .locals 3
    .param p1, "currentPosition"    # I
    .param p2, "progress"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 39
    const/high16 p2, 0x3f800000    # 1.0f

    .line 41
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 42
    const/4 p2, 0x0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lgve;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 45
    if-ge v0, p1, :cond_2

    .line 46
    iget-object v1, p0, Lgve;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 44
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    if-le v0, p1, :cond_3

    .line 48
    iget-object v1, p0, Lgve;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 50
    :cond_3
    iget-object v1, p0, Lgve;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    .line 53
    :cond_4
    return-void
.end method

.method public final setMultiPbBarListener(Lgve$a;)V
    .locals 0
    .param p1, "multiPbBarListener"    # Lgve$a;

    .prologue
    .line 56
    iput-object p1, p0, Lgve;->c:Lgve$a;

    .line 57
    return-void
.end method
