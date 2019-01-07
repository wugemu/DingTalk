.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;
.super Landroid/widget/LinearLayout;
.source "BorderStyleSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;
    }
.end annotation


# instance fields
.field private a:Lbrq;

.field private b:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a()V

    .line 49
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->sheet_border_style_sub_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    new-instance v0, Lbrq;

    const-string/jumbo v1, "borderStyle"

    sget-object v2, Lbrw;->f:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_hair:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_dotted:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_dash_dot_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_dash_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_dashed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_thin:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_medium_dash_dot_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_slanted_dash_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_medium_dash_dot:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_medium_dashed:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_medium:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_thick:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    sget v1, Lbqt$d;->border_style_double:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$1;-><init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;)V

    .line 1063
    iput-object v1, v0, Lbrq;->a:Lbrq$c;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;->a(I)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public setOnStyleSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->b:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;

    .line 97
    return-void
.end method

.method public setStyleSelectedData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a:Lbrq;

    invoke-virtual {v0, p1}, Lbrq;->a(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method
