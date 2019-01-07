.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;
.super Landroid/widget/LinearLayout;
.source "SpaceToolBarView.java"

# interfaces
.implements Lgqo;


# instance fields
.field private a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

.field private b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

.field private c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

.field private d:Lgqp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c()V

    .line 42
    return-void
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lfzs$g;->space_tool_bar:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->addView(Landroid/view/View;)V

    .line 49
    sget v2, Lfzs$f;->menu_category:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    .line 50
    sget v2, Lfzs$f;->menu_sort:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    .line 51
    sget v2, Lfzs$f;->menu_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    .line 1056
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    new-instance v3, Lgqn;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfzs$h;->space_op_sort_time:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lgqn;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    new-instance v3, Lgqn;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfzs$h;->space_op_sort_letter:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lgqn;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v3, v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setMenuItems(Ljava/util/List;)V

    .line 1060
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, v6}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setType(I)V

    .line 1062
    new-instance v2, Lgqn;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfzs$h;->dt_space_list_operation_filter:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgqn;-><init>(ILjava/lang/String;)V

    .line 1063
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setMenuItems(Ljava/util/List;)V

    .line 1066
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setType(I)V

    .line 1068
    new-instance v2, Lgqn;

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfzs$h;->space_op_multi_select:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgqn;-><init>(ILjava/lang/String;)V

    .line 1069
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setMenuItems(Ljava/util/List;)V

    .line 1072
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setType(I)V

    .line 1074
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setMenuSelectedListener(Lgqo;)V

    .line 1075
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setMenuSelectedListener(Lgqo;)V

    .line 1076
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2, p0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->setMenuSelectedListener(Lgqo;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b()V

    .line 156
    :cond_2
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 107
    .line 2080
    packed-switch p1, :pswitch_data_0

    .line 2086
    :goto_0
    return-void

    .line 2082
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a()V

    goto :goto_0

    .line 2085
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a()V

    goto :goto_0

    .line 2088
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a()V

    .line 2089
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a()V

    goto :goto_0

    .line 2080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lgqn;)V
    .locals 2
    .param p1, "item"    # Lgqn;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->d:Lgqp;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->d:Lgqp;

    .line 1081
    iget v1, p1, Lgqn;->c:I

    .line 97
    invoke-interface {v0, v1}, Lgqp;->b_(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    .line 173
    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Z)V

    goto :goto_0
.end method

.method public getDropDownMenuCategory()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    return-object v0
.end method

.method public getDropDownMenuEdit()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    return-object v0
.end method

.method public getDropDownMenuSort()Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    return-object v0
.end method

.method public setDefaultSort(I)V
    .locals 6
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 114
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfzs$h;->space_op_sort_letter:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Ljava/lang/String;)V

    .line 124
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->getDropDownItems()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "sortDropDownItems":Ljava/util/List;, "Ljava/util/List<Lgqn;>;"
    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgqn;

    .line 131
    .local v0, "dropDownItem":Lgqn;
    if-eqz v0, :cond_3

    .line 3081
    iget v2, v0, Lgqn;->c:I

    .line 135
    if-ne p1, v2, :cond_5

    move v2, v3

    .line 3093
    :goto_3
    iput-boolean v2, v0, Lgqn;->d:Z

    goto :goto_2

    .line 120
    .end local v0    # "dropDownItem":Lgqn;
    .end local v1    # "sortDropDownItems":Ljava/util/List;, "Ljava/util/List<Lgqn;>;"
    :cond_4
    if-ne p1, v3, :cond_2

    .line 121
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfzs$h;->space_op_sort_time:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .restart local v0    # "dropDownItem":Lgqn;
    .restart local v1    # "sortDropDownItems":Ljava/util/List;, "Ljava/util/List<Lgqn;>;"
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 138
    .end local v0    # "dropDownItem":Lgqn;
    :cond_6
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a:Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/dropdown/DropDownMenu;->b()V

    goto :goto_0
.end method

.method public setToolBarItemSelectListener(Lgqp;)V
    .locals 0
    .param p1, "toolBarItemSelectListener"    # Lgqp;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->d:Lgqp;

    .line 103
    return-void
.end method
