.class public Lcom/alibaba/android/ding/widget/SubTaskViewContainer;
.super Landroid/widget/FrameLayout;
.source "SubTaskViewContainer.java"


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field public c:Z

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private h:Layn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    .line 191
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$2;-><init>(Lcom/alibaba/android/ding/widget/SubTaskViewContainer;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->h:Layn;

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    .line 191
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$2;-><init>(Lcom/alibaba/android/ding/widget/SubTaskViewContainer;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->h:Layn;

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    .line 191
    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$2;-><init>(Lcom/alibaba/android/ding/widget/SubTaskViewContainer;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->h:Layn;

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a()V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/SubTaskViewContainer;)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    return-object v0
.end method

.method private b()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 118
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    sget-object v10, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 127
    .local v1, "displayCount":I
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v10, "[SubTaskViewContainer]refreshSubTaskViews displayCount="

    aput-object v10, v7, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v7}, Lbkd;->a([Ljava/lang/String;)V

    .line 128
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v7}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    .line 130
    .local v3, "isMeeting":Z
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v10, -0x2

    invoke-direct {v4, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 132
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 133
    .local v5, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v5, :cond_3

    .line 2184
    if-ltz v2, :cond_4

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 2185
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "childView":Landroid/view/View;
    :goto_2
    instance-of v7, v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    if-eqz v7, :cond_5

    move-object v6, v0

    .line 137
    check-cast v6, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 146
    .local v6, "subTaskDetailView":Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    :goto_3
    if-eqz v3, :cond_6

    .line 148
    invoke-virtual {v6, v5, v9}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 158
    :cond_2
    :goto_4
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->h:Layn;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setTaskFinishStateChangedListener(Layn;)V

    .line 131
    .end local v0    # "childView":Landroid/view/View;
    .end local v6    # "subTaskDetailView":Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2188
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 139
    .restart local v0    # "childView":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 140
    new-instance v6, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v6    # "subTaskDetailView":Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    sget v7, Laxp$c;->ding_detail_sub_task_bg_color:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setBgColor(I)V

    .line 142
    invoke-virtual {v6, v8}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setShowSplitView(Z)V

    .line 143
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 150
    :cond_6
    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_8

    move v7, v8

    :goto_5
    invoke-virtual {v6, v5, v7}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 152
    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_2

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    .line 153
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gt v7, v11, :cond_7

    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 154
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v7

    if-le v7, v11, :cond_2

    .line 155
    :cond_7
    invoke-virtual {v6, v8}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setSplitViewVisibleState(Z)V

    goto :goto_4

    :cond_8
    move v7, v9

    .line 150
    goto :goto_5

    .line 163
    .end local v0    # "childView":Landroid/view/View;
    .end local v5    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .end local v6    # "subTaskDetailView":Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    :cond_9
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 165
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->removeViews(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/widget/SubTaskViewContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/SubTaskViewContainer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->c:Z

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_layout_ding_sub_list:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget v0, Laxp$f;->ll_sublist_parent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->a:Landroid/widget/LinearLayout;

    .line 69
    sget v0, Laxp$f;->tv_show_all:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->d:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer$1;-><init>(Lcom/alibaba/android/ding/widget/SubTaskViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Laxp$f;->ll_meeting_summary:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->e:Landroid/view/View;

    .line 87
    sget v0, Laxp$f;->tv_meeting_summary:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->f:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "meetingSummary"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x5

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b()V

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1202
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->o()I

    move-result v0

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1203
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_meeting_minutes_detail:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1209
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->d:Landroid/widget/TextView;

    sget v1, Laxp$i;->dt_ding_task_see_all_subtask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1212
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskViewContainer;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
