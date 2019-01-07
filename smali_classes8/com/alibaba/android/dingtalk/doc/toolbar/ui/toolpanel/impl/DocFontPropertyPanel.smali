.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "DocFontPropertyPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lbrq;

.field private f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

.field private g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

.field private h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->doc_font_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1047
    sget v0, Lbqt$d;->font_panel_bold_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a:Landroid/widget/TextView;

    .line 1048
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    sget v0, Lbqt$d;->font_panel_italic_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b:Landroid/widget/TextView;

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    sget v0, Lbqt$d;->font_panel_strickout_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c:Landroid/widget/TextView;

    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    sget v0, Lbqt$d;->font_panel_underline_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->d:Landroid/widget/TextView;

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    new-instance v0, Lbrq;

    const-string/jumbo v1, "heading"

    sget-object v2, Lbrw;->c:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_title1_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_title2_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_title3_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_title4_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_text_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)V

    .line 2063
    iput-object v1, v0, Lbrq;->a:Lbrq$c;

    .line 1072
    sget v0, Lbqt$d;->font_panel_text_color:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->dt_doc_font_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitle(I)V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->icon_wd_fontcolor:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitleIcon(I)V

    .line 1077
    sget v0, Lbqt$d;->font_panel_bg_color:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->dt_doc_bg_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitle(I)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->icon_wd_backgroundco:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitleIcon(I)V

    .line 1082
    sget v0, Lbqt$d;->font_panel_text_size_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->setOnAmountChangeListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;)V

    .line 1090
    sget v0, Lbqt$d;->font_panel_clear_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->i:Landroid/view/View;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lbqy;)V
    .locals 11
    .param p1, "toolDescriptor"    # Lbqy;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v10, -0x1000000

    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v8

    if-nez v8, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v1

    .line 148
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "bold"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, "isBold":Ljava/lang/Object;
    instance-of v8, v2, Ljava/lang/Boolean;

    if-eqz v8, :cond_2

    .line 150
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "isBold":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 153
    :cond_2
    const-string/jumbo v8, "italic"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "isItalic":Ljava/lang/Object;
    instance-of v8, v3, Ljava/lang/Boolean;

    if-eqz v8, :cond_3

    .line 155
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "isItalic":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 158
    :cond_3
    const-string/jumbo v8, "strikethrough"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 159
    .local v4, "isStrickout":Ljava/lang/Object;
    instance-of v8, v4, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    .line 160
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c:Landroid/widget/TextView;

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "isStrickout":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 163
    :cond_4
    const-string/jumbo v8, "underline"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 164
    .local v5, "isUnderline":Ljava/lang/Object;
    instance-of v8, v5, Ljava/lang/Boolean;

    if-eqz v8, :cond_5

    .line 165
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->d:Landroid/widget/TextView;

    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "isUnderline":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 168
    :cond_5
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->e:Lbrq;

    const-string/jumbo v9, "heading"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lbrq;->a(Ljava/lang/Object;)V

    .line 170
    const-string/jumbo v8, "color"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 171
    .local v6, "textColor":Ljava/lang/Object;
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 172
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    check-cast v6, Ljava/lang/String;

    .end local v6    # "textColor":Ljava/lang/Object;
    invoke-static {v6, v10}, Lbrv;->a(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setColor(I)V

    .line 174
    :cond_6
    const-string/jumbo v8, "highlight"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "bgColor":Ljava/lang/Object;
    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 176
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "bgColor":Ljava/lang/Object;
    invoke-static {v0, v10}, Lbrv;->a(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setColor(I)V

    .line 179
    :cond_7
    const-string/jumbo v8, "sz"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 180
    .local v7, "textSize":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 181
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "textSize":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->setAmount(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 97
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a:Landroid/widget/TextView;

    if-ne p1, v6, :cond_2

    .line 98
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 99
    .local v2, "isBold":Z
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 100
    const-string/jumbo v5, "bold"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .end local v2    # "isBold":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b:Landroid/widget/TextView;

    if-ne p1, v6, :cond_4

    .line 102
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v2

    .line 103
    .local v3, "isItalic":Z
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 104
    const-string/jumbo v5, "italic"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "isItalic":Z
    :cond_3
    move v3, v5

    .line 102
    goto :goto_2

    .line 105
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c:Landroid/widget/TextView;

    if-ne p1, v6, :cond_6

    .line 106
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v2

    .line 107
    .local v4, "isStrickout":Z
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 108
    const-string/jumbo v5, "strikethrough"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v4    # "isStrickout":Z
    :cond_5
    move v4, v5

    .line 106
    goto :goto_3

    .line 109
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->d:Landroid/widget/TextView;

    if-ne p1, v6, :cond_8

    .line 110
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_7

    move v1, v2

    .line 111
    .local v1, "hasUnderline":Z
    :goto_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 112
    const-string/jumbo v5, "underline"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "hasUnderline":Z
    :cond_7
    move v1, v5

    .line 110
    goto :goto_4

    .line 113
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-ne p1, v5, :cond_9

    .line 114
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "colorSelectorView":Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->getColor()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor(I)V

    .line 116
    new-instance v5, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$3;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setOnColorSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;)V

    .line 123
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbqt$f;->dt_doc_font_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    .end local v0    # "colorSelectorView":Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-ne p1, v5, :cond_a

    .line 125
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v0    # "colorSelectorView":Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setDeselectionVisible(Z)V

    .line 127
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->getColor()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor(I)V

    .line 128
    new-instance v5, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel$4;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setOnColorSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;)V

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbqt$f;->dt_doc_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 136
    .end local v0    # "colorSelectorView":Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    :cond_a
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->i:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 137
    const-string/jumbo v5, "clearStyle"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/DocFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
