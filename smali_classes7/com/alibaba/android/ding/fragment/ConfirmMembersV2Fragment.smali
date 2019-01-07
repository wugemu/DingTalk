.class public Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
.super Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;
.source "ConfirmMembersV2Fragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:Lckm$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lckm$a",
            "<",
            "Lbfe;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private l:Landroid/view/ViewGroup;

.field private m:Laxy;

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

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Lbhr;

.field private y:Lbkn;

.field private z:Lbhw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->q:Z

    .line 97
    new-instance v0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->A:Lckm$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->p:I

    return p1
.end method

.method public static a(Ljava/lang/String;IZZZ)Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
    .locals 6
    .param p0, "dingId"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "mySelfDing"    # Z
    .param p3, "hasSent"    # Z
    .param p4, "isConfirmedList"    # Z

    .prologue
    .line 86
    new-instance v1, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-direct {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;-><init>()V

    .line 87
    .local v1, "fragment":Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ding_id"

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 88
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 89
    const-string/jumbo v2, "ding_my_self"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const-string/jumbo v2, "biz_status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v2, "intent_key_has_sent"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-string/jumbo v2, "intent_key_is_confirmed_list"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
    .param p1, "x1"    # J

    .prologue
    .line 47
    .line 7151
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7154
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    if-nez v0, :cond_0

    .line 7155
    new-instance v0, Lbkn;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lbkn;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    .line 7156
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    new-instance v1, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$2;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    .line 8086
    iput-object v1, v0, Lbkn;->c:Lbkn$a;

    .line 7164
    :cond_0
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 7165
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 7166
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkn;->a(Z)V

    .line 7171
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j()V

    .line 47
    :cond_1
    return-void

    .line 7168
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbkn;->a(Z)V

    .line 7169
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    invoke-virtual {v2, v0, v1}, Lbkn;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Laxy;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    .line 6376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6377
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6378
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6380
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6383
    new-instance v0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$8;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    .line 6415
    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->r:J

    const/4 v4, 0x0

    sget v6, Laxp$i;->ding_remind_type_tip:I

    const-class v1, Lcma;

    .line 6416
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    move-object v1, p0

    .line 6415
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(JILjava/util/List;ILcma;)V

    .line 47
    :cond_1
    return-void
.end method

.method private g()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 229
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

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

    .line 233
    .local v0, "object":Lchg;
    if-eqz v0, :cond_2

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    iget-wide v4, v0, Lchg;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    .end local v0    # "object":Lchg;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    invoke-virtual {v1}, Laxy;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->p:I

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    invoke-virtual {v0}, Laxy;->notifyDataSetChanged()V

    .line 243
    return-void
.end method

.method private j()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 326
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l()Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 372
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    .line 4054
    iget-boolean v2, v2, Lbkn;->a:Z

    .line 335
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    .line 4058
    iget-wide v2, v2, Lbkn;->d:J

    .line 335
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 336
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->f:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->g:Landroid/widget/TextView;

    sget v3, Laxp$i;->dt_ding_later_can_urge_at:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    .line 5058
    iget-wide v6, v6, Lbkn;->d:J

    .line 337
    invoke-static {v5, v6, v7}, Lcog;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 343
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5107
    iget v2, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    .line 344
    if-ne v2, v7, :cond_4

    .line 345
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->f:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 5186
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 351
    .local v1, "selectedCount":I
    if-gtz v1, :cond_5

    .line 352
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    sget v3, Laxp$i;->and_ding_inform_confirm:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 354
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 360
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->f:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->g()Z

    move-result v0

    .line 363
    .local v0, "isSelectAll":Z
    if-eqz v0, :cond_6

    .line 364
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 356
    .end local v0    # "isSelectAll":Z
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Laxp$i;->and_ding_inform_confirm:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getString(I)Ljava/lang/String;

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

    .line 357
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 358
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 367
    .restart local v0    # "isSelectAll":Z
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 47
    .line 8251
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8252
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 8253
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8254
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 8266
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j()V

    .line 8268
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    if-eqz v0, :cond_0

    .line 8269
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    iget-boolean v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->u:Z

    iget-boolean v3, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->t:Z

    .line 9075
    iput-object v1, v0, Laxy;->a:Ljava/util/List;

    .line 9076
    iput-boolean v3, v0, Laxy;->e:Z

    .line 9077
    iput-boolean v2, v0, Laxy;->d:Z

    .line 9078
    invoke-virtual {v0}, Laxy;->notifyDataSetChanged()V

    .line 8273
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9107
    iget v0, p0, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;->c:I

    .line 8273
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8274
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(I)V

    .line 47
    :cond_2
    return-void

    .line 8256
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 8257
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->u:Z

    if-nez v0, :cond_4

    .line 8258
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_yes_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 8259
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_all_people_read:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 8261
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->icon_no_people_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 8262
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Laxp$i;->dt_ding_empty_no_people_read:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method private k()Lbhr;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v1, Lbhr;

    iget-wide v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->r:J

    const/4 v4, 0x0

    iget v5, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->s:I

    new-instance v0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$9;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    const-class v6, Lbhr$a;

    .line 489
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 454
    invoke-static {v0, v6, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbhr$a;

    invoke-direct/range {v1 .. v6}, Lbhr;-><init>(JIILbhr$a;)V

    .line 491
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->t:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->v:Z

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
    .line 176
    if-nez p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h()V

    .line 181
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j()V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    .line 3082
    iput p1, v0, Laxy;->b:I

    .line 3083
    invoke-virtual {v0}, Laxy;->notifyDataSetChanged()V

    .line 183
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i()V

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 434
    iput v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->p:I

    .line 435
    iput-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->q:Z

    .line 436
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    .line 6072
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhr;->a:Z

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k()Lbhr;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    .line 440
    return-void
.end method

.method protected final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    if-nez v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k()Lbhr;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->x:Lbhr;

    iget v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->p:I

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 450
    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v1, "ding_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->r:J

    .line 141
    const-string/jumbo v1, "biz_status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->s:I

    .line 142
    const-string/jumbo v1, "ding_my_self"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->t:Z

    .line 143
    const-string/jumbo v1, "intent_key_has_sent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->v:Z

    .line 144
    const-string/jumbo v1, "intent_key_is_confirmed_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->u:Z

    .line 1222
    :cond_0
    new-instance v1, Laxy;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->o:Ljava/util/HashSet;

    invoke-direct {v1, v2, v3, v4}, Laxy;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashSet;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    .line 1223
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1246
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(I)V

    .line 1247
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d()V

    .line 1280
    new-instance v1, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$3;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->z:Lbhw;

    .line 1286
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->m:Laxy;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->z:Lbhw;

    .line 2095
    iput-object v2, v1, Laxy;->f:Lbhw;

    .line 1288
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1290
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$4;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1298
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$5;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$6;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1314
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->f:Landroid/widget/Button;

    new-instance v2, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$7;-><init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1321
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->A:Lckm$a;

    .line 2266
    iget-object v3, v1, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$34;

    invoke-direct {v4, v1, v2}, Lbbp$34;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d:Landroid/widget/ListView;

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->e:Landroid/view/View;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->ll_remind:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->l:Landroid/view/ViewGroup;

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->btn_urge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->f:Landroid/widget/Button;

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_disable_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->g:Landroid/widget/TextView;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->h:Landroid/widget/TextView;

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_cancel_select_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->i:Landroid/widget/TextView;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_confirm_to_send:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1208
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->e:Landroid/view/View;

    sget v1, Laxp$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->e:Landroid/view/View;

    sget v1, Laxp$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Laxp$i;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->f:Landroid/widget/Button;

    sget v1, Laxp$i;->dt_task_urge:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j:Landroid/widget/TextView;

    sget v1, Laxp$i;->and_ding_inform_confirm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1213
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->j()V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkn;->a(Z)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->y:Lbkn;

    .line 6086
    iput-object v4, v0, Lbkn;->c:Lbkn$a;

    .line 505
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->A:Lckm$a;

    .line 6275
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$35;

    invoke-direct {v3, v0, v1}, Lbbp$35;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 506
    iput-object v4, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->A:Lckm$a;

    .line 507
    invoke-super {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->onDestroy()V

    .line 508
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 426
    add-int v0, p2, p3

    iput v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->w:I

    .line 427
    iget v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->w:I

    add-int/lit8 v1, p4, -0x5

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->d()V

    .line 430
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 421
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 124
    sget v0, Laxp$g;->ding_fragment_ding_complete_list:I

    return v0
.end method
