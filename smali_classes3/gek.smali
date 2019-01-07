.class public final Lgek;
.super Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
.source "DentryFooterViewHolder.java"


# instance fields
.field private final a:I

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;-><init>(Landroid/view/View;)V

    .line 38
    iput p2, p0, Lgek;->a:I

    .line 39
    sget v0, Lfzs$f;->ll_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lgek;->b:Landroid/widget/LinearLayout;

    .line 40
    sget v0, Lfzs$f;->pb_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lgek;->c:Landroid/widget/ProgressBar;

    .line 41
    sget v0, Lfzs$f;->tv_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgek;->d:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;ILandroid/content/Context;)Lgek;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "viewType"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lfzs$g;->cspace_dentry_footer:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lgek;

    invoke-direct {v1, v0, p1}, Lgek;-><init>(Landroid/view/View;I)V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 46
    instance-of v4, p1, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    if-nez v4, :cond_1

    .line 47
    iget-object v3, p0, Lgek;->b:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 76
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .line 1125
    .local v0, "dentryListAdapter":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    invoke-interface {v4}, Lged$a;->b()Lgeg;

    move-result-object v2

    .line 52
    .local v2, "listWrapper":Lgeg;
    if-nez v2, :cond_2

    .line 53
    iget-object v3, p0, Lgek;->b:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 2023
    :cond_2
    iget-object v4, v2, Lgeg;->b:Ljava/util/List;

    .line 57
    if-eqz v4, :cond_3

    .line 3023
    iget-object v4, v2, Lgeg;->b:Ljava/util/List;

    .line 57
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 58
    .local v1, "isEmptyList":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 3027
    iget-boolean v4, v2, Lgeg;->c:Z

    .line 58
    if-nez v4, :cond_5

    .line 59
    iget-object v3, p0, Lgek;->b:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .end local v1    # "isEmptyList":Z
    :cond_4
    move v1, v3

    .line 57
    goto :goto_1

    .line 63
    .restart local v1    # "isEmptyList":Z
    :cond_5
    iget-object v4, p0, Lgek;->b:Landroid/widget/LinearLayout;

    invoke-static {v4, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 4027
    iget-boolean v4, v2, Lgeg;->c:Z

    .line 65
    if-nez v4, :cond_6

    .line 66
    iget-object v3, p0, Lgek;->c:Landroid/widget/ProgressBar;

    invoke-static {v3, v5}, Lgpk;->a(Landroid/view/View;I)V

    .line 67
    iget-object v3, p0, Lgek;->d:Landroid/widget/TextView;

    sget v4, Lfzs$h;->alm_cmail_load_complete:I

    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_6
    iget-object v4, p0, Lgek;->c:Landroid/widget/ProgressBar;

    invoke-static {v4, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 72
    iget-object v3, p0, Lgek;->d:Landroid/widget/TextView;

    sget v4, Lfzs$h;->loading_tip:I

    invoke-static {v4}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4160
    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 73
    if-eqz v3, :cond_0

    .line 5160
    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 74
    invoke-interface {v3}, Lged$a;->f()V

    goto :goto_0
.end method
