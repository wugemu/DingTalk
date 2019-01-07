.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "AlignPropertyPanel.java"

# interfaces
.implements Lbrq$b;
.implements Lbrq$c;


# instance fields
.field private a:Lbrq;

.field private b:Lbrq;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->align_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1036
    new-instance v0, Lbrq;

    const-string/jumbo v1, "hAlign"

    sget-object v2, Lbrw;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    .line 1037
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    sget v1, Lbqt$d;->align_panel_align_left_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1038
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    sget v1, Lbqt$d;->align_panel_align_middle_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    sget v1, Lbqt$d;->align_panel_align_right_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1040
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    sget v1, Lbqt$d;->align_panel_align_both_end_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1041
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    .line 2063
    iput-object p0, v0, Lbrq;->a:Lbrq$c;

    .line 1043
    sget v0, Lbqt$d;->align_panel_indent_left_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->c:Landroid/view/View;

    .line 1044
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    sget v0, Lbqt$d;->align_panel_indent_right_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->d:Landroid/view/View;

    .line 1052
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    new-instance v0, Lbrq;

    const-string/jumbo v1, "list"

    sget-object v2, Lbrw;->b:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    .line 3046
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbrq;->c:Z

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    sget v1, Lbqt$d;->align_panel_ulist_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    sget v1, Lbqt$d;->align_panel_olist_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    .line 3063
    iput-object p0, v0, Lbrq;->a:Lbrq$c;

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    .line 3067
    iput-object p0, v0, Lbrq;->b:Lbrq$b;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lbqy;)V
    .locals 3
    .param p1, "toolDescriptor"    # Lbqy;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 74
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a:Lbrq;

    const-string/jumbo v2, "hAlign"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbrq;->a(Ljava/lang/Object;)V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->b:Lbrq;

    const-string/jumbo v2, "list"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbrq;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/AlignPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method
