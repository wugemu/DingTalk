.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "SheetFramePropertyPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbrq$c;


# instance fields
.field private a:I

.field private b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

.field private c:Lbrq;

.field private d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

.field private e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

.field private f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

.field private g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

.field private h:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

.field private i:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a:I

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->sheet_align_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1069
    sget v0, Lbqt$d;->sheet_align_panel_border_color:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    .line 1070
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->dt_doc_border_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitle(I)V

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->icon_wd_framecolor:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitleIcon(I)V

    .line 1074
    sget v0, Lbqt$d;->sheet_align_panel_border_style:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    sget v1, Lbqt$f;->dt_doc_border_style:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->setTitle(I)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    sget v1, Lbqt$f;->icon_wd_framestyle:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->setTitleIcon(I)V

    .line 1079
    sget v0, Lbqt$d;->sheet_align_panel_bg_color:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->dt_doc_bg_color:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitle(I)V

    .line 1082
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    sget v1, Lbqt$f;->icon_wd_backgroundco:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setTitleIcon(I)V

    .line 1084
    sget v0, Lbqt$d;->sheet_align_panel_auto_line:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    new-instance v0, Lbrq;

    const-string/jumbo v1, "borderType"

    sget-object v2, Lbrw;->g:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lbrq;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_none:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_top:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1090
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_bottom:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_left:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_right:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_outline:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_inside:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    sget v1, Lbqt$d;->sheet_align_border_type_all:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrq;->a(Landroid/view/View;)V

    .line 1096
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    .line 2063
    iput-object p0, v0, Lbrq;->a:Lbrq$c;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;)Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

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
    const/high16 v8, -0x1000000

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v5

    .line 106
    .local v5, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v6, "borderType"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    .local v4, "borderType":Ljava/lang/Object;
    if-eqz v4, :cond_2

    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    if-eqz v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->c:Lbrq;

    invoke-virtual {v6, v4}, Lbrq;->a(Ljava/lang/Object;)V

    .line 111
    :cond_2
    const-string/jumbo v6, "borderColor"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "borderColor":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-eqz v6, :cond_3

    .line 113
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "borderColor":Ljava/lang/Object;
    invoke-static {v2, v8}, Lbrv;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setColor(I)V

    .line 116
    :cond_3
    const-string/jumbo v6, "borderStyle"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "borderStyle":Ljava/lang/Object;
    if-eqz v3, :cond_4

    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    if-eqz v6, :cond_4

    .line 118
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "borderStyle":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a:I

    .line 119
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->e:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;

    iget v7, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelStyleItem;->setBorderStyleIcon(I)V

    .line 122
    :cond_4
    const-string/jumbo v6, "highlight"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, "bgColor":Ljava/lang/Object;
    if-eqz v1, :cond_5

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-eqz v6, :cond_5

    .line 124
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    check-cast v1, Ljava/lang/String;

    .end local v1    # "bgColor":Ljava/lang/Object;
    invoke-static {v1, v8}, Lbrv;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->setColor(I)V

    .line 127
    :cond_5
    const-string/jumbo v6, "wordWrap"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "autoLine":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    if-eqz v6, :cond_0

    .line 129
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    const-string/jumbo v7, "wordWrap"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 136
    .local v0, "id":I
    sget v1, Lbqt$d;->sheet_align_panel_border_color:I

    if-ne v0, v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    new-instance v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setOnColorSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->d:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor(I)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbqt$f;->dt_doc_border_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 196
    :cond_2
    :goto_0
    return-void

    .line 153
    :cond_3
    sget v1, Lbqt$d;->sheet_align_panel_border_style:I

    if-ne v0, v1, :cond_5

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->i:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    if-nez v1, :cond_4

    .line 155
    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->i:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->i:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    new-instance v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->setOnStyleSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$a;)V

    .line 166
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->i:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    iget v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->setStyleSelectedData(Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->i:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbqt$f;->dt_doc_border_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_5
    sget v1, Lbqt$d;->sheet_align_panel_bg_color:I

    if-ne v0, v1, :cond_8

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    if-nez v1, :cond_6

    .line 170
    new-instance v1, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    new-instance v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel$3;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setOnColorSelectListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView$a;)V

    .line 181
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    if-eqz v1, :cond_7

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->f:Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ToolPanelColorItem;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;->setSelectedColor(I)V

    .line 184
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->g:Lcom/alibaba/android/dingtalk/doc/ui/widget/ColorSelectorView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbqt$f;->dt_doc_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_8
    sget v1, Lbqt$d;->sheet_align_panel_auto_line:I

    if-ne v0, v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .line 2267
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a:Z

    .line 187
    if-eqz v1, :cond_9

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setChecked(Z)V

    .line 189
    const-string/jumbo v1, "wordWrap"

    const-string/jumbo v2, "overflow"

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 191
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->b:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->setChecked(Z)V

    .line 192
    const-string/jumbo v1, "wordWrap"

    const-string/jumbo v2, "wordWrap"

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetFramePropertyPanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
