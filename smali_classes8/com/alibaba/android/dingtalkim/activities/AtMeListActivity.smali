.class public Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AtMeListActivity.java"

# interfaces
.implements Ldbr$b;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lctz;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ldbr$a;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->g:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Lctz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->i:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->h:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->h:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->j:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->j:I

    return v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    invoke-interface {v0}, Ldbr$a;->a()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->k:I

    return v0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    invoke-interface {v0}, Ldbr$a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    invoke-interface {v0}, Ldbr$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)Ldbr$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->dismissLoadingDialog()V

    .line 237
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    invoke-interface {v1}, Ldbr$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lctz;->b(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    invoke-virtual {v0}, Lctz;->notifyDataSetChanged()V

    .line 215
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "historyMsgId"    # J

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lctz;

    invoke-direct {v0, p0}, Lctz;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    invoke-interface {v1}, Ldbr$a;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lctz;->b(Ljava/util/List;)V

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    .line 3031
    iput-wide p1, v0, Lctz;->d:J

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f()V

    .line 176
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    .local p1, "readMsg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    if-eqz v1, :cond_2

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 195
    .local v0, "messageId":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lctz;->a(J)V

    goto :goto_0

    .line 199
    .end local v0    # "messageId":Ljava/lang/Long;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    invoke-virtual {v1}, Lctz;->notifyDataSetChanged()V

    .line 201
    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "hasMore"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->g:Z

    .line 189
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->showLoadingDialog()V

    .line 232
    return-void
.end method

.method public final b(J)V
    .locals 1
    .param p1, "historyMsgId"    # J

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    .line 4031
    iput-wide p1, v0, Lctz;->d:J

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    invoke-virtual {v0}, Lctz;->notifyDataSetChanged()V

    .line 184
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 205
    .line 4241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f()V

    .line 207
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->b:Lctz;

    invoke-virtual {v0, p1}, Lctz;->a(Ljava/util/List;)V

    .line 222
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 246
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lctk$g;->activity_layout_at_me_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->setContentView(I)V

    .line 57
    sget v0, Lctk$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a:Landroid/widget/ListView;

    .line 58
    sget v0, Lctk$f;->rl_load_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->c:Landroid/widget/RelativeLayout;

    .line 59
    sget v0, Lctk$f;->tv_empty_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->d:Landroid/widget/TextView;

    .line 60
    sget v0, Lctk$f;->tv_retry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e:Landroid/widget/TextView;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2067
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_at_me_messages:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2070
    :cond_0
    new-instance v0, Ldbs;

    invoke-direct {v0, p0, p0}, Ldbs;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldbr$b;)V

    .line 2072
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->e()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    invoke-interface {v0}, Ldbr$a;->i()V

    .line 254
    :cond_0
    invoke-static {}, Ldbu;->a()Ldbu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldbu;->a(Z)V

    .line 255
    invoke-static {}, Ldbq;->a()Ldbq;

    move-result-object v0

    invoke-virtual {v0}, Ldbq;->b()V

    .line 256
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 257
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Ldbr$a;

    .line 5226
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AtMeListActivity;->f:Ldbr$a;

    .line 33
    return-void
.end method
