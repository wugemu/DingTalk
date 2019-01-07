.class public Lbnq;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lbnv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field protected c:J

.field public d:Lboh;

.field public e:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbnv;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

.field public h:Landroid/content/BroadcastReceiver;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v7/widget/LinearLayoutManager;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lbob;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;J)V
    .locals 4
    .param p1, "layoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p2, "uid"    # J

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object v0, p0, Lbnq;->a:Ljava/util/List;

    .line 2019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iput-object v0, p0, Lbnq;->i:Ljava/util/List;

    .line 3019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iput-object v0, p0, Lbnq;->f:Ljava/util/List;

    .line 107
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lbnq;->o:Lfp;

    .line 108
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lbnq;->p:Lfp;

    .line 128
    new-instance v0, Lbnq$1;

    invoke-direct {v0, p0}, Lbnq$1;-><init>(Lbnq;)V

    iput-object v0, p0, Lbnq;->h:Landroid/content/BroadcastReceiver;

    .line 92
    iput-wide p2, p0, Lbnq;->c:J

    .line 93
    iput-object p1, p0, Lbnq;->k:Landroid/support/v7/widget/LinearLayoutManager;

    .line 3119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3120
    const-string/jumbo v1, "circle_on_comment_sent_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3121
    const-string/jumbo v1, "circle_on_before_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3122
    const-string/jumbo v1, "circle_on_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3123
    const-string/jumbo v1, "circle_on_post_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3125
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lbnq;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    invoke-virtual {p0}, Lbnq;->c()Lboh;

    move-result-object v0

    iput-object v0, p0, Lbnq;->d:Lboh;

    .line 4018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    iput-object v0, p0, Lbnq;->n:Ljava/util/Map;

    .line 97
    return-void
.end method

.method static synthetic a(Lbnq;I)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 1
    .param p0, "x0"    # Lbnq;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lbnq;->b(I)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbnq;)Lfp;
    .locals 1
    .param p0, "x0"    # Lbnq;

    .prologue
    .line 43
    iget-object v0, p0, Lbnq;->o:Lfp;

    return-object v0
.end method

.method static synthetic a(Lbnq;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 6
    .param p0, "x0"    # Lbnq;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 43
    .line 9180
    if-eqz p1, :cond_0

    .line 9183
    iget-object v0, p0, Lbnq;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9189
    :cond_0
    :goto_0
    return-void

    .line 9186
    :cond_1
    iget-object v0, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 9187
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 9188
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    goto :goto_0
.end method

.method private b(I)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Lbnq;->e()I

    move-result v0

    sub-int/2addr p1, v0

    .line 335
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbnq;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 336
    iget-object v0, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 338
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lbnq;)Lfp;
    .locals 1
    .param p0, "x0"    # Lbnq;

    .prologue
    .line 43
    iget-object v0, p0, Lbnq;->p:Lfp;

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lbnq;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 115
    iget-wide v0, p0, Lbnq;->c:J

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lbnv;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 296
    sparse-switch p2, :sswitch_data_0

    .line 310
    iget-object v1, p0, Lbnq;->d:Lboh;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lboh;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lbnv;

    move-result-object v0

    .line 313
    .local v0, "holder":Lbnv;
    :goto_0
    iget-object v1, p0, Lbnq;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    iget-object v1, p0, Lbnq;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    iget-object v2, p0, Lbnq;->e:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    .line 5192
    iget-object v1, v0, Lbnv;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lbnv;->b:Landroid/view/View;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v1, :cond_1

    .line 5193
    iget-object v1, v0, Lbnv;->b:Landroid/view/View;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 5194
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setOnExpandStateChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;)V

    .line 318
    :cond_1
    return-object v0

    .line 298
    .end local v0    # "holder":Lbnv;
    :sswitch_0
    new-instance v0, Lbnx;

    iget-object v1, p0, Lbnq;->i:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v2, p0, Lbnq;->b:Z

    invoke-direct {v0, v1, v2}, Lbnx;-><init>(Landroid/view/View;Z)V

    .line 299
    .restart local v0    # "holder":Lbnv;
    goto :goto_0

    .line 301
    .end local v0    # "holder":Lbnv;
    :sswitch_1
    new-instance v0, Lbny;

    iget-object v1, p0, Lbnq;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-wide v2, p0, Lbnq;->c:J

    invoke-virtual {p0}, Lbnq;->d()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lbny;-><init>(Landroid/view/View;JZ)V

    .line 302
    .restart local v0    # "holder":Lbnv;
    goto :goto_0

    .line 304
    .end local v0    # "holder":Lbnv;
    :sswitch_2
    new-instance v0, Lbob;

    iget-object v1, p0, Lbnq;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lbnq;->l:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lbob;-><init>(Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lbnq;->m:Lbob;

    .line 305
    .restart local v0    # "holder":Lbnv;
    goto :goto_0

    .line 307
    .end local v0    # "holder":Lbnv;
    :sswitch_3
    new-instance v0, Lbnl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbnl;-><init>(Landroid/view/View;)V

    .line 308
    .restart local v0    # "holder":Lbnv;
    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_1
        0x7d0 -> :sswitch_2
        0xbb8 -> :sswitch_0
        0xfa0 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 163
    iget-object v2, p0, Lbnq;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 164
    .local v0, "firstVisibleItemPosition":I
    iget-object v2, p0, Lbnq;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 166
    .local v1, "lastVisibleItemPosition":I
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lbnq;->notifyItemChanged(I)V

    .line 169
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 172
    iget-object v1, p0, Lbnq;->p:Lfp;

    .line 4096
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 173
    .local v0, "post":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    invoke-virtual {p0, v1}, Lbnq;->b(Ljava/util/List;)V

    .line 176
    invoke-virtual {p0}, Lbnq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 7
    .param p1, "headerView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 212
    iget-object v6, p0, Lbnq;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 213
    .local v4, "oldCount":I
    iget-object v6, p0, Lbnq;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 214
    iget-object v6, p0, Lbnq;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0, v4}, Lbnq;->notifyItemInserted(I)V

    .line 217
    iget-object v6, p0, Lbnq;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 218
    .local v1, "firstPosition":I
    iget-object v6, p0, Lbnq;->k:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 220
    .local v2, "lastPosition":I
    add-int/lit8 v5, v4, 0x1

    .line 222
    .local v5, "start":I
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 223
    .local v3, "maxStart":I
    sub-int v6, v2, v3

    add-int/lit8 v0, v6, 0x1

    .line 225
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lbnq;->notifyItemChanged(ILjava/lang/Object;)V

    .line 232
    .end local v0    # "count":I
    .end local v1    # "firstPosition":I
    .end local v2    # "lastPosition":I
    .end local v3    # "maxStart":I
    .end local v5    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0, v4}, Lbnq;->a(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .param p1, "noticeHeader"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 235
    .local p2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    iput-object p2, p0, Lbnq;->l:Ljava/util/List;

    .line 236
    iget-object v0, p0, Lbnq;->m:Lbob;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lbnq;->m:Lbob;

    iget-object v1, p0, Lbnq;->l:Ljava/util/List;

    .line 5069
    if-eqz v1, :cond_0

    .line 5070
    iput-object v1, v0, Lbob;->j:Ljava/util/List;

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lbnq;->a(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    iput-object p1, p0, Lbnq;->j:Ljava/util/List;

    .line 197
    invoke-virtual {p0, p1}, Lbnq;->b(Ljava/util/List;)V

    .line 198
    return-void
.end method

.method public final b()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    .line 285
    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-wide v2

    .line 286
    :cond_1
    invoke-virtual {p0}, Lbnq;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Lbnq;->f()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lbnq;->e()I

    move-result v4

    sub-int v0, v1, v4

    .line 287
    .local v0, "position":I
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 288
    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 4
    .param p1, "footerView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 257
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    :try_start_0
    iget-object v2, p0, Lbnq;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    iget-object v2, p0, Lbnq;->i:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {p0}, Lbnq;->getItemCount()I

    move-result v0

    .line 265
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lbnq;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addFooterView has encounter an error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5076
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    return-void
.end method

.method protected c()Lboh;
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lboj;

    invoke-direct {v0}, Lboj;-><init>()V

    return-object v0
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lbnq;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v0, p0, Lbnq;->i:Ljava/util/List;

    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lbnq;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0}, Lbnq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lbnq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 424
    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 425
    .local v0, "dataSize":I
    :goto_0
    invoke-virtual {p0}, Lbnq;->e()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lbnq;->f()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 424
    .end local v0    # "dataSize":I
    :cond_0
    iget-object v1, p0, Lbnq;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 393
    invoke-virtual {p0}, Lbnq;->e()I

    move-result v1

    .line 394
    .local v1, "headerViewCount":I
    invoke-direct {p0}, Lbnq;->f()I

    move-result v0

    .line 396
    .local v0, "footerViewCount":I
    if-ge p1, v1, :cond_1

    .line 397
    if-nez p1, :cond_0

    .line 398
    const/16 v2, 0x3e8

    .line 5416
    :goto_0
    return v2

    .line 400
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p0}, Lbnq;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p1, v2, :cond_2

    .line 403
    const/16 v2, 0xbb8

    goto :goto_0

    .line 5410
    :cond_2
    iget-object v2, p0, Lbnq;->j:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 5412
    :cond_3
    invoke-direct {p0, p1}, Lbnq;->b(I)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v2

    .line 5414
    if-nez v2, :cond_4

    .line 5415
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CircleTag"

    const-string/jumbo v4, "postObject == null in getNormalType"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    const/4 v2, -0x1

    goto :goto_0

    .line 5419
    :cond_4
    invoke-static {v2}, Lboj;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 43
    check-cast p1, Lbnv;

    .line 6350
    iget-object v0, p0, Lbnq;->n:Ljava/util/Map;

    .line 7199
    iput-object v0, p1, Lbnv;->f:Ljava/util/Map;

    .line 6351
    iget-object v0, p0, Lbnq;->g:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    .line 8179
    iput-object v0, p1, Lbnv;->g:Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;

    .line 6352
    invoke-direct {p0, p2}, Lbnq;->b(I)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v1

    .line 6354
    iget-object v0, p1, Lbnv;->itemView:Landroid/view/View;

    sget v2, Lbpu$d;->circle_item_data:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6355
    if-eqz v1, :cond_0

    .line 6356
    iget-object v0, p0, Lbnq;->o:Lfp;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 6359
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6360
    :cond_1
    if-nez v1, :cond_2

    instance-of v0, p1, Lbnx;

    if-nez v0, :cond_4

    .line 6361
    :cond_2
    invoke-virtual {p1, v1}, Lbnv;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 6365
    :cond_3
    :goto_0
    return-void

    .line 6362
    :cond_4
    instance-of v0, p1, Lbnx;

    if-eqz v0, :cond_3

    .line 6363
    check-cast p1, Lbnx;

    .line 6364
    iget-boolean v0, p0, Lbnq;->b:Z

    .line 9044
    iput-boolean v0, p1, Lbnx;->j:Z

    .line 9045
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbnx;->b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0

    .line 6367
    :cond_5
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6372
    invoke-virtual {p1, v1}, Lbnv;->e(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lbnq;->a(Landroid/view/ViewGroup;I)Lbnv;

    move-result-object v0

    return-object v0
.end method
