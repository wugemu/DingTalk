.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "SheetFontPropertyPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbrq$c;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lbrq;

.field private f:Lbrq;

.field private g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

.field private h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->sheet_font_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1048
    sget v0, Lbqt$d;->font_panel_bold_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a:Landroid/widget/TextView;

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    sget v0, Lbqt$d;->font_panel_italic_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->b:Landroid/widget/TextView;

    .line 1052
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    sget v0, Lbqt$d;->font_panel_strickout_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->c:Landroid/widget/TextView;

    .line 1055
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    sget v0, Lbqt$d;->font_panel_underline_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->d:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1060
    new-instance v0, Lbrq;

    const-string/jumbo v1, "hAlign"

    sget-object v2, Lbrw;->e:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->e:Lbrq;

    .line 1061
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_hAlign_left_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1062
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_hAlign_middle_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1063
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->e:Lbrq;

    sget v1, Lbqt$d;->font_panel_hAlign_right_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1064
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->e:Lbrq;

    .line 2063
    iput-object p0, v0, Lbrq;->a:Lbrq$c;

    .line 1066
    new-instance v0, Lbrq;

    const-string/jumbo v1, "vAlign"

    sget-object v2, Lbrw;->d:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->f:Lbrq;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->f:Lbrq;

    sget v1, Lbqt$d;->font_panel_vAlign_left_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1068
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->f:Lbrq;

    sget v1, Lbqt$d;->font_panel_vAlign_middle_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->f:Lbrq;

    sget v1, Lbqt$d;->font_panel_vAlign_right_tv:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->f:Lbrq;

    .line 3063
    iput-object p0, v0, Lbrq;->a:Lbrq$c;

    .line 1072
    sget v0, Lbqt$d;->font_panel_text_color:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->dt_doc_font_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitle(I)V

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->icon_wd_fontcolor:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitleIcon(I)V

    .line 1077
    sget v0, Lbqt$d;->font_panel_text_size_amount:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->setOnAmountChangeListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView$a;)V

    .line 1085
    sget v0, Lbqt$d;->font_panel_clear_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->i:Landroid/view/View;

    .line 1086
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lbqy;)V
    .locals 9
    .param p1, "toolDescriptor"    # Lbqy;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v7

    if-nez v7, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 130
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v7, "bold"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "isBold":Ljava/lang/Object;
    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    .line 132
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a:Landroid/widget/TextView;

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "isBold":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 135
    :cond_2
    const-string/jumbo v7, "italic"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 136
    .local v2, "isItalic":Ljava/lang/Object;
    instance-of v7, v2, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 137
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->b:Landroid/widget/TextView;

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "isItalic":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 140
    :cond_3
    const-string/jumbo v7, "strikethrough"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 141
    .local v3, "isStrickout":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    .line 142
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->c:Landroid/widget/TextView;

    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "isStrickout":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    :cond_4
    const-string/jumbo v7, "underline"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 146
    .local v4, "isUnderline":Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    .line 147
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->d:Landroid/widget/TextView;

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "isUnderline":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 150
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->e:Lbrq;

    const-string/jumbo v8, "hAlign"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbrq;->a(Ljava/lang/Object;)V

    .line 151
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->f:Lbrq;

    const-string/jumbo v8, "vAlign"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbrq;->a(Ljava/lang/Object;)V

    .line 153
    const-string/jumbo v7, "color"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 154
    .local v5, "textColor":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 155
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    check-cast v5, Ljava/lang/String;

    .end local v5    # "textColor":Ljava/lang/Object;
    const/high16 v8, -0x1000000

    invoke-static {v5, v8}, Lbrv;->a(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setColor(I)V

    .line 158
    :cond_6
    const-string/jumbo v7, "sz"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 159
    .local v6, "textSize":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 160
    iget-object v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;

    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "textSize":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalk/doc/ui/widget/AmountView;->setAmount(I)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    return-void
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

    .line 91
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a:Landroid/widget/TextView;

    if-ne p1, v6, :cond_2

    .line 92
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 93
    .local v2, "isBold":Z
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 94
    const-string/jumbo v5, "bold"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .end local v2    # "isBold":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v5

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->b:Landroid/widget/TextView;

    if-ne p1, v6, :cond_4

    .line 96
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v2

    .line 97
    .local v3, "isItalic":Z
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 98
    const-string/jumbo v5, "italic"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "isItalic":Z
    :cond_3
    move v3, v5

    .line 96
    goto :goto_2

    .line 99
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->c:Landroid/widget/TextView;

    if-ne p1, v6, :cond_6

    .line 100
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->c:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v2

    .line 101
    .local v4, "isStrickout":Z
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 102
    const-string/jumbo v5, "strikethrough"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v4    # "isStrickout":Z
    :cond_5
    move v4, v5

    .line 100
    goto :goto_3

    .line 103
    :cond_6
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->d:Landroid/widget/TextView;

    if-ne p1, v6, :cond_8

    .line 104
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isSelected()Z

    move-result v6

    if-nez v6, :cond_7

    move v1, v2

    .line 105
    .local v1, "hasUnderline":Z
    :goto_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 106
    const-string/jumbo v5, "underline"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "hasUnderline":Z
    :cond_7
    move v1, v5

    .line 104
    goto :goto_4

    .line 107
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-ne p1, v5, :cond_9

    .line 108
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "colorSelectorView":Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->getColor()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor(I)V

    .line 110
    new-instance v5, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setOnColorSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;)V

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbqt$f;->dt_doc_font_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    .end local v0    # "colorSelectorView":Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->i:Landroid/view/View;

    if-ne p1, v5, :cond_0

    .line 119
    const-string/jumbo v5, "clearStyle"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFontPropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
