.class public Lfce;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ConnectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lfcm;",
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

.field protected b:J

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfcm;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

.field public f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Landroid/support/v7/widget/LinearLayoutManager;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lfcs;

.field private m:Lfcy;

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
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
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
    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iput-object v0, p0, Lfce;->a:Ljava/util/List;

    .line 2020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iput-object v0, p0, Lfce;->g:Ljava/util/List;

    .line 3020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iput-object v0, p0, Lfce;->d:Ljava/util/List;

    .line 106
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lfce;->o:Lfp;

    .line 107
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lfce;->p:Lfp;

    .line 127
    new-instance v0, Lfce$1;

    invoke-direct {v0, p0}, Lfce$1;-><init>(Lfce;)V

    iput-object v0, p0, Lfce;->f:Landroid/content/BroadcastReceiver;

    .line 91
    iput-wide p2, p0, Lfce;->b:J

    .line 92
    iput-object p1, p0, Lfce;->j:Landroid/support/v7/widget/LinearLayoutManager;

    .line 3118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3119
    const-string/jumbo v1, "connection_on_comment_sent_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3120
    const-string/jumbo v1, "connection_on_before_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3121
    const-string/jumbo v1, "connection_on_delete_post"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3122
    const-string/jumbo v1, "connection_on_post_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3124
    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lfce;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 94
    invoke-virtual {p0}, Lfce;->c()Lfcy;

    move-result-object v0

    iput-object v0, p0, Lfce;->m:Lfcy;

    .line 4018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    iput-object v0, p0, Lfce;->n:Ljava/util/Map;

    .line 96
    return-void
.end method

.method static synthetic a(Lfce;I)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p0, "x0"    # Lfce;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lfce;->b(I)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lfce;)Lfp;
    .locals 1
    .param p0, "x0"    # Lfce;

    .prologue
    .line 42
    iget-object v0, p0, Lfce;->o:Lfp;

    return-object v0
.end method

.method static synthetic a(Lfce;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 6
    .param p0, "x0"    # Lfce;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 42
    .line 10183
    if-eqz p1, :cond_0

    .line 10186
    iget-object v0, p0, Lfce;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10192
    :cond_0
    :goto_0
    return-void

    .line 10189
    :cond_1
    iget-object v0, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 10190
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iget-wide v4, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 10191
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    goto :goto_0
.end method

.method private b(I)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 344
    invoke-virtual {p0}, Lfce;->e()I

    move-result v0

    sub-int/2addr p1, v0

    .line 345
    if-ltz p1, :cond_0

    iget-object v0, p0, Lfce;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 346
    iget-object v0, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lfce;)Lfp;
    .locals 1
    .param p0, "x0"    # Lfce;

    .prologue
    .line 42
    iget-object v0, p0, Lfce;->p:Lfp;

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lfce;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    return v0
.end method


# virtual methods
.method protected final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 114
    iget-wide v0, p0, Lfce;->b:J

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lfcm;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 302
    sparse-switch p2, :sswitch_data_0

    .line 316
    iget-object v1, p0, Lfce;->m:Lfcy;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lfcy;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lfcm;

    move-result-object v0

    .line 319
    .local v0, "holder":Lfcm;
    :goto_0
    iget-object v1, p0, Lfce;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lfce;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    iget-object v2, p0, Lfce;->c:Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;

    .line 6202
    iget-object v1, v0, Lfcm;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lfcm;->b:Landroid/view/View;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    if-eqz v1, :cond_1

    .line 6203
    iget-object v1, v0, Lfcm;->b:Landroid/view/View;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;

    .line 6204
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView;->setOnExpandStateChangeListener(Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;)V

    .line 324
    :cond_1
    return-object v0

    .line 304
    .end local v0    # "holder":Lfcm;
    :sswitch_0
    new-instance v0, Lfco;

    iget-object v1, p0, Lfce;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-boolean v2, p0, Lfce;->i:Z

    invoke-direct {v0, v1, v2}, Lfco;-><init>(Landroid/view/View;Z)V

    .line 305
    .restart local v0    # "holder":Lfcm;
    goto :goto_0

    .line 307
    .end local v0    # "holder":Lfcm;
    :sswitch_1
    new-instance v0, Lfcp;

    iget-object v1, p0, Lfce;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-wide v2, p0, Lfce;->b:J

    invoke-virtual {p0}, Lfce;->d()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lfcp;-><init>(Landroid/view/View;JZ)V

    .line 308
    .restart local v0    # "holder":Lfcm;
    goto :goto_0

    .line 310
    .end local v0    # "holder":Lfcm;
    :sswitch_2
    new-instance v0, Lfcs;

    iget-object v1, p0, Lfce;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lfce;->k:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lfcs;-><init>(Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lfce;->l:Lfcs;

    .line 311
    .restart local v0    # "holder":Lfcm;
    goto :goto_0

    .line 313
    .end local v0    # "holder":Lfcm;
    :sswitch_3
    new-instance v0, Lfcb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfcb;-><init>(Landroid/view/View;)V

    .line 314
    .restart local v0    # "holder":Lfcm;
    goto :goto_0

    .line 302
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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 164
    iget-object v2, p0, Lfce;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 165
    .local v0, "firstVisibleItemPosition":I
    iget-object v2, p0, Lfce;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 167
    .local v1, "lastVisibleItemPosition":I
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lfce;->notifyItemChanged(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "postId"    # J

    .prologue
    .line 173
    iget-object v1, p0, Lfce;->p:Lfp;

    .line 4096
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 174
    .local v0, "post":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    invoke-virtual {p0, v1}, Lfce;->b(Ljava/util/List;)V

    .line 179
    invoke-virtual {p0}, Lfce;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 7
    .param p1, "headerView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 214
    iget-object v6, p0, Lfce;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 215
    .local v4, "oldCount":I
    iget-object v6, p0, Lfce;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 216
    iget-object v6, p0, Lfce;->a:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {p0, v4}, Lfce;->notifyItemInserted(I)V

    .line 219
    iget-object v6, p0, Lfce;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 220
    .local v1, "firstPosition":I
    iget-object v6, p0, Lfce;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 222
    .local v2, "lastPosition":I
    add-int/lit8 v5, v4, 0x1

    .line 224
    .local v5, "start":I
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 225
    .local v3, "maxStart":I
    sub-int v6, v2, v3

    add-int/lit8 v0, v6, 0x1

    .line 227
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lfce;->notifyItemChanged(ILjava/lang/Object;)V

    .line 234
    .end local v0    # "count":I
    .end local v1    # "firstPosition":I
    .end local v2    # "lastPosition":I
    .end local v3    # "maxStart":I
    .end local v5    # "start":I
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0, v4}, Lfce;->a(I)V

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
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 237
    .local p2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    iput-object p2, p0, Lfce;->k:Ljava/util/List;

    .line 238
    iget-object v0, p0, Lfce;->l:Lfcs;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lfce;->l:Lfcs;

    iget-object v1, p0, Lfce;->k:Ljava/util/List;

    .line 5069
    if-eqz v1, :cond_0

    .line 5070
    iput-object v1, v0, Lfcs;->j:Ljava/util/List;

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lfce;->a(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public final a(Lfcm$b;)V
    .locals 1
    .param p1, "listener"    # Lfcm$b;

    .prologue
    .line 110
    iget-object v0, p0, Lfce;->m:Lfcy;

    invoke-virtual {v0, p1}, Lfcy;->a(Lfcm$b;)V

    .line 111
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    iput-object p1, p0, Lfce;->h:Ljava/util/List;

    .line 200
    invoke-virtual {p0, p1}, Lfce;->b(Ljava/util/List;)V

    .line 201
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "hasMore"    # Z

    .prologue
    .line 84
    iget-boolean v0, p0, Lfce;->i:Z

    if-eq v0, p1, :cond_0

    .line 85
    iput-boolean p1, p0, Lfce;->i:Z

    .line 86
    invoke-virtual {p0}, Lfce;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lfce;->a(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public final b()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    .line 289
    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-wide v2

    .line 292
    :cond_1
    invoke-virtual {p0}, Lfce;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Lfce;->f()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lfce;->e()I

    move-result v4

    sub-int v0, v1, v4

    .line 293
    .local v0, "position":I
    int-to-long v4, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 294
    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 4
    .param p1, "footerView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 259
    if-nez p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    :try_start_0
    iget-object v2, p0, Lfce;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    iget-object v2, p0, Lfce;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lfce;->getItemCount()I

    move-result v0

    .line 267
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lfce;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addFooterView has encounter an error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6060
    const/4 v3, 0x0

    invoke-static {v3, v2}, Lffe;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;>;"
    return-void
.end method

.method protected c()Lfcy;
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lfda;

    invoke-direct {v0}, Lfda;-><init>()V

    return-object v0
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 275
    iget-object v0, p0, Lfce;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 1
    .param p1, "footer"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lfce;->g:Ljava/util/List;

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lfce;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0}, Lfce;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lfce;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 435
    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 436
    .local v0, "dataSize":I
    :goto_0
    invoke-virtual {p0}, Lfce;->e()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lfce;->f()I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 435
    .end local v0    # "dataSize":I
    :cond_0
    iget-object v1, p0, Lfce;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 403
    invoke-virtual {p0}, Lfce;->e()I

    move-result v1

    .line 404
    .local v1, "headerViewCount":I
    invoke-direct {p0}, Lfce;->f()I

    move-result v0

    .line 406
    .local v0, "footerViewCount":I
    if-ge p1, v1, :cond_1

    .line 407
    if-nez p1, :cond_0

    .line 408
    const/16 v2, 0x3e8

    .line 6427
    :goto_0
    return v2

    .line 410
    :cond_0
    const/16 v2, 0x7d0

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lfce;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p1, v2, :cond_2

    .line 413
    const/16 v2, 0xbb8

    goto :goto_0

    .line 6419
    :cond_2
    iget-object v2, p0, Lfce;->h:Ljava/util/List;

    if-nez v2, :cond_3

    .line 6420
    const/4 v2, 0x0

    goto :goto_0

    .line 6423
    :cond_3
    invoke-direct {p0, p1}, Lfce;->b(I)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v2

    .line 6425
    if-nez v2, :cond_4

    .line 6426
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CircleTag"

    const-string/jumbo v4, "postObject == null in getNormalType"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6427
    const/4 v2, -0x1

    goto :goto_0

    .line 6430
    :cond_4
    invoke-static {v2}, Lfda;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    check-cast p1, Lfcm;

    .line 7359
    iget-object v0, p0, Lfce;->n:Ljava/util/Map;

    .line 8209
    iput-object v0, p1, Lfcm;->f:Ljava/util/Map;

    .line 7360
    iget-object v0, p0, Lfce;->e:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

    .line 9187
    iput-object v0, p1, Lfcm;->g:Lcom/alibaba/android/user/connection/shield/ShieldPresenter$ShieldOperation$a;

    .line 7361
    invoke-direct {p0, p2}, Lfce;->b(I)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v1

    .line 7363
    iget-object v0, p1, Lfcm;->itemView:Landroid/view/View;

    sget v2, Lezg$h;->circle_item_data:I

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 7364
    if-eqz v1, :cond_0

    .line 7365
    iget-object v0, p0, Lfce;->o:Lfp;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lfp;->b(JLjava/lang/Object;)V

    .line 7368
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7369
    :cond_1
    if-nez v1, :cond_2

    instance-of v0, p1, Lfco;

    if-nez v0, :cond_4

    .line 7370
    :cond_2
    invoke-virtual {p1, v1}, Lfcm;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    .line 7374
    :cond_3
    :goto_0
    return-void

    .line 7371
    :cond_4
    instance-of v0, p1, Lfco;

    if-eqz v0, :cond_3

    .line 7372
    check-cast p1, Lfco;

    .line 7373
    iget-boolean v0, p0, Lfce;->i:Z

    .line 10046
    iput-boolean v0, p1, Lfco;->j:Z

    .line 10047
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lfco;->b(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0

    .line 7377
    :cond_5
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 7382
    invoke-virtual {p1, v1}, Lfcm;->d(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lfce;->a(Landroid/view/ViewGroup;I)Lfcm;

    move-result-object v0

    return-object v0
.end method
