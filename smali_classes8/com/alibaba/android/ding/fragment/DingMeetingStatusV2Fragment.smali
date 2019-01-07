.class public Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
.super Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;
.source "DingMeetingStatusV2Fragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private l:Landroid/view/ViewGroup;

.field private m:Layb;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbff;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:J

.field private s:I

.field private t:I

.field private u:Z

.field private v:Lbhr;

.field private w:Lbkn;

.field private x:Lbhw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->p:I

    return p1
.end method

.method public static a(Ljava/lang/String;IZ)Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
    .locals 6
    .param p0, "dingId"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "enableOperation"    # Z

    .prologue
    .line 77
    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    invoke-direct {v1}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;-><init>()V

    .line 78
    .local v1, "fragment":Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ding_id"

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 79
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 80
    const-string/jumbo v2, "biz_status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v2, "enable_operation"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
    .param p1, "x1"    # J

    .prologue
    .line 44
    .line 7115
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7118
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    if-nez v0, :cond_0

    .line 7119
    new-instance v0, Lbkn;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lbkn;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    .line 7120
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    .line 8086
    iput-object v1, v0, Lbkn;->c:Lbkn$a;

    .line 7128
    :cond_0
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 7129
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 7130
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkn;->a(Z)V

    .line 7135
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h()V

    .line 44
    :cond_1
    return-void

    .line 7132
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbkn;->a(Z)V

    .line 7133
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    invoke-virtual {v2, v0, v1}, Lbkn;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    .line 6362
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6363
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6366
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$7;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    .line 6398
    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->r:J

    const/4 v4, 0x0

    sget v6, Laxp$i;->ding_remind_type_tip:I

    const-class v1, Lcma;

    .line 6399
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    move-object v1, p0

    .line 6398
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(JILjava/util/List;ILcma;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)Layb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->p:I

    return v0
.end method

.method private g()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    return-object v0
.end method

.method private h()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 183
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 191
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    .line 4054
    iget-boolean v2, v2, Lbkn;->a:Z

    .line 191
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    .line 4058
    iget-wide v2, v2, Lbkn;->d:J

    .line 191
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 192
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->f:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->g:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_ding_later_can_urge_at:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    .line 5058
    iget-wide v6, v6, Lbkn;->d:J

    .line 193
    invoke-static {v5, v6, v7}, Lcog;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5107
    iget v2, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    .line 200
    if-ne v2, v7, :cond_4

    .line 201
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->f:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5172
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 207
    .local v1, "selectedCount":I
    if-gtz v1, :cond_5

    .line 208
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    sget v3, Laxp$i;->and_ding_inform_confirm:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 210
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->f:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->g()Z

    move-result v0

    .line 219
    .local v0, "isSelectAll":Z
    if-eqz v0, :cond_6

    .line 220
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "isSelectAll":Z
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Laxp$i;->and_ding_inform_confirm:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const-string/jumbo v4, "("

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const-string/jumbo v5, ")"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 214
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 223
    .restart local v0    # "isSelectAll":Z
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 233
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 234
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchg;

    .line 238
    .local v0, "object":Lchg;
    if-eqz v0, :cond_2

    .line 239
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    iget-wide v4, v0, Lchg;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    .end local v0    # "object":Lchg;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    invoke-virtual {v1}, Layb;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 44
    .line 8256
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8257
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8258
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8259
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 8274
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h()V

    .line 8276
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    if-eqz v0, :cond_1

    .line 8277
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    .line 9082
    iput-object v1, v0, Layb;->a:Ljava/util/List;

    .line 9083
    iget-object v1, v0, Layb;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 9084
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Layb;->a:Ljava/util/List;

    .line 9086
    :cond_0
    invoke-virtual {v0}, Layb;->notifyDataSetChanged()V

    .line 8281
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9107
    iget v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    .line 8281
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8282
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(I)V

    .line 44
    :cond_3
    return-void

    .line 8261
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 8262
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->s:I

    invoke-static {v0}, Lbkh;->e(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8263
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_no_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 8264
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_people_confirm_join:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 8265
    :cond_5
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->s:I

    invoke-static {v0}, Lbkh;->f(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8266
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_no_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 8267
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_people_confirm_not_join:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 8269
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_yes_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 8270
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_all_people_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    invoke-virtual {v0}, Layb;->notifyDataSetChanged()V

    .line 248
    return-void
.end method

.method private k()Lbhr;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v1, Lbhr;

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->r:J

    const/4 v4, 0x2

    iget v5, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->s:I

    new-instance v0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$8;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    const-class v6, Lbhr$a;

    .line 452
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 417
    invoke-static {v0, v6, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbhr$a;

    invoke-direct/range {v1 .. v6}, Lbhr;-><init>(JIILbhr$a;)V

    .line 454
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->u:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->s:I

    invoke-static {v0}, Lbkh;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final b(I)V
    .locals 1
    .param p1, "choosingMode"    # I

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i()V

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h()V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    .line 3090
    iput p1, v0, Layb;->b:I

    .line 3091
    invoke-virtual {v0}, Layb;->notifyDataSetChanged()V

    .line 148
    return-void

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->p:I

    .line 301
    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->q:Z

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    .line 6072
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhr;->a:Z

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k()Lbhr;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    .line 306
    return-void
.end method

.method protected final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k()Lbhr;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->v:Lbhr;

    iget v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->p:I

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 316
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v1, "ding_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->r:J

    .line 105
    const-string/jumbo v1, "biz_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->s:I

    .line 106
    const-string/jumbo v1, "enable_operation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->u:Z

    .line 1293
    :cond_0
    new-instance v1, Layb;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->o:Ljava/util/HashSet;

    iget v5, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->s:I

    invoke-direct {v1, v2, v3, v4, v5}, Layb;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashSet;I)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    .line 1294
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2251
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(I)V

    .line 2252
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d()V

    .line 2319
    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$2;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->x:Lbhw;

    .line 2325
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->m:Layb;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->x:Lbhw;

    .line 3074
    iput-object v2, v1, Layb;->e:Lbhw;

    .line 2327
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2329
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$3;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2337
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$4;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2346
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$5;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2353
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->f:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment$6;-><init>(Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d:Landroid/widget/ListView;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->e:Landroid/view/View;

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->ll_remind:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->l:Landroid/view/ViewGroup;

    .line 1156
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->btn_urge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->f:Landroid/widget/Button;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_disable_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->g:Landroid/widget/TextView;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h:Landroid/widget/TextView;

    .line 1159
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_cancel_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->i:Landroid/widget/TextView;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_confirm_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->e:Landroid/view/View;

    sget v1, Laxp$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->e:Landroid/view/View;

    sget v1, Laxp$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Laxp$i;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->f:Landroid/widget/Button;

    sget v1, Laxp$i;->dt_ding_confirm_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1289
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->j:Landroid/widget/TextView;

    sget v1, Laxp$i;->and_ding_inform_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1168
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->h()V

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 463
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkn;->a(Z)V

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->w:Lbkn;

    const/4 v1, 0x0

    .line 6086
    iput-object v1, v0, Lbkn;->c:Lbkn$a;

    .line 467
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->onDestroy()V

    .line 468
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 409
    add-int v0, p2, p3

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->t:I

    .line 410
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->t:I

    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->d()V

    .line 413
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 404
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 88
    sget v0, Laxp$g;->ding_fragment_ding_complete_list:I

    return v0
.end method
