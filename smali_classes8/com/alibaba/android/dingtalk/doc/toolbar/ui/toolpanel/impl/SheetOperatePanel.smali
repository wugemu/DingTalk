.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;
.source "SheetOperatePanel.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/ToolPropertyPanel;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbqt$e;->sheet_operate_panel_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1059
    sget v0, Lbqt$d;->insert_line_above_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->b:Landroid/widget/RelativeLayout;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$1;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    sget v0, Lbqt$d;->insert_line_below_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->c:Landroid/widget/RelativeLayout;

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$2;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1073
    sget v0, Lbqt$d;->insert_line_delete_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->d:Landroid/widget/RelativeLayout;

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$3;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    sget v0, Lbqt$d;->insert_row_right_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->e:Landroid/widget/RelativeLayout;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$4;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    sget v0, Lbqt$d;->insert_row_left_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->f:Landroid/widget/RelativeLayout;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$5;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    sget v0, Lbqt$d;->insert_row_delete_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->g:Landroid/widget/RelativeLayout;

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$6;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    sget v0, Lbqt$d;->insert_cell_merge_rl:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a:Landroid/widget/RelativeLayout;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel$7;-><init>(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    sget v0, Lbqt$d;->insert_cell_merge_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    .line 1122
    sget v0, Lbqt$d;->insert_cell_merge_icon_iftv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    sget v1, Lbqt$f;->dt_doc_merge_cell:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1124
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbqt$a;->text_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->j:Z

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lbqy;)V
    .locals 6
    .param p1, "toolDescriptor"    # Lbqy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v3

    if-nez v3, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Lbqy;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 135
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "merge"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "isMerge":Ljava/lang/Object;
    const-string/jumbo v3, "unmerge"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, "isUnMerge":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    move-object v3, v1

    .line 138
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    :cond_2
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "isMerge":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->j:Z

    .line 146
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 147
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    sget v4, Lbqt$f;->dt_doc_unmerge_cell:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->doc_tool_item_icon_default_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->doc_tool_item_icon_default_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 150
    :cond_3
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "isUnMerge":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 157
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->j:Z

    .line 158
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 159
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    sget v4, Lbqt$f;->dt_doc_merge_cell:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->doc_tool_item_gray_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->doc_tool_item_gray_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 164
    :cond_4
    iput-boolean v4, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->j:Z

    .line 165
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 166
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    sget v4, Lbqt$f;->dt_doc_merge_cell:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 167
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->doc_tool_item_icon_default_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/SheetOperatePanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbqt$a;->doc_tool_item_icon_default_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto/16 :goto_0
.end method
