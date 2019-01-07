.class public Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ChatListDetailActivity.java"

# interfaces
.implements Ldgi$b;
.implements Ldmz;


# instance fields
.field private a:Ldgi$a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Lcom/alibaba/wukong/im/Conversation;

.field private e:Lcom/alibaba/wukong/im/Message;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/alibaba/android/dingtalkim/views/NestListView;

.field private l:Ldgs;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ldnw;

.field private r:Ldoj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 170
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->r:Ldoj;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->e:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Ldoj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->r:Ldoj;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)Ldgi$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->dismissLoadingDialog()V

    .line 328
    return-void
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->finish()V

    .line 306
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 296
    const-wide/16 v0, 0x0

    .line 297
    .local v0, "orgId":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 300
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 301
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "chatDetailModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 281
    .line 3194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3196
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->view_chat_detail_time_split:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->f:Landroid/view/View;

    .line 3197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->k:Lcom/alibaba/android/dingtalkim/views/NestListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v5}, Lcom/alibaba/android/dingtalkim/views/NestListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 3200
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 3203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    move-object v1, v3

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .line 3204
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3205
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->timeSpan:Ljava/lang/String;

    .line 3207
    :cond_1
    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->timeSpan:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 3208
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->timeSpan:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    .line 3210
    goto :goto_0

    .line 3212
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3213
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3219
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->f:Landroid/view/View;

    sget v1, Lctk$f;->tv_time_split:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3221
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v4

    .line 3225
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 3226
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->f:Landroid/view/View;

    if-eqz v0, :cond_7

    move v0, v5

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    if-eqz v0, :cond_8

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    invoke-virtual {v0, p1}, Ldgs;->b(Ljava/util/List;)V

    .line 5276
    :goto_5
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->p:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->n:Z

    if-eqz v0, :cond_9

    .line 5231
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5232
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5264
    :goto_7
    return-void

    .line 3216
    :cond_6
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v5

    const-string/jumbo v2, " ~ "

    aput-object v2, v0, v4

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move v0, v6

    .line 3226
    goto :goto_4

    .line 285
    :cond_8
    new-instance v0, Ldgs;

    invoke-direct {v0, p0, p1, v4}, Ldgs;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->c:J

    .line 4083
    iput-wide v2, v0, Ldgs;->d:J

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->e:Lcom/alibaba/wukong/im/Message;

    .line 4091
    iput-object v1, v0, Ldgs;->e:Lcom/alibaba/wukong/im/Message;

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 5087
    iput-object v1, v0, Ldgs;->f:Lcom/alibaba/wukong/im/Conversation;

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->k:Lcom/alibaba/android/dingtalkim/views/NestListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->l:Ldgs;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/NestListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_5

    :cond_9
    move v4, v5

    .line 5276
    goto :goto_6

    .line 5236
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5238
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->o:Z

    if-eqz v0, :cond_b

    .line 5239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5250
    :goto_8
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->p:Z

    if-eqz v0, :cond_c

    .line 5251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5262
    :goto_9
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->n:Z

    if-eqz v0, :cond_d

    .line 5263
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->j:Landroid/widget/LinearLayout;

    sget v1, Lctk$f;->btn_save:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 5247
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8

    .line 5259
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9

    .line 5271
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    move v0, v5

    goto/16 :goto_3

    :cond_f
    move-object v2, v3

    goto/16 :goto_2

    :cond_10
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->showLoadingDialog()V

    .line 323
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()Ldxc;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    invoke-interface {v0}, Ldgi$a;->e()Ldxc;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ldne;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    invoke-interface {v0}, Ldgi$a;->d()Ldne;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ldnw;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->q:Ldnw;

    return-object v0
.end method

.method public final h()Lldm;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    invoke-interface {v0}, Ldgi$a;->c()Lldm;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/alibaba/wukong/im/Message;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->e:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1112
    const-string/jumbo v0, "title"

    invoke-static {v1, v0}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->m:Ljava/lang/String;

    .line 1113
    const-string/jumbo v0, "intent_key_ding_id"

    invoke-static {v1, v0, v8, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->c:J

    .line 1114
    const-string/jumbo v0, "conversation"

    invoke-static {v1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 1116
    const-string/jumbo v0, "message"

    invoke-static {v1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->e:Lcom/alibaba/wukong/im/Message;

    .line 1118
    const-string/jumbo v0, "intent_key_chat_list_can_save_to_space"

    invoke-static {v1, v0, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->n:Z

    .line 1119
    const-string/jumbo v0, "intent_key_chat_list_can_forward"

    invoke-static {v1, v0, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->o:Z

    .line 1120
    const-string/jumbo v0, "intent_key_chat_list_can_to_task"

    invoke-static {v1, v0, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->p:Z

    .line 1122
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->n:Z

    if-eqz v0, :cond_0

    .line 1124
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->o:Z

    .line 1125
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->p:Z

    .line 1129
    :cond_0
    if-eqz p1, :cond_4

    .line 1130
    const-string/jumbo v0, "intent_key_time_stamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1134
    :goto_0
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ldvi;->b(J)Ljava/util/List;

    move-result-object v0

    .line 2041
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move-object v0, v12

    .line 1136
    :goto_1
    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    .line 1137
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1138
    :cond_2
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "ChatListDetailActivity"

    const-string/jumbo v2, "ChatDetailModels is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    sget v0, Lctk$g;->layout_chat_detail_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->setContentView(I)V

    .line 2143
    sget v0, Lctk$f;->listview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/NestListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->k:Lcom/alibaba/android/dingtalkim/views/NestListView;

    .line 2144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->k:Lcom/alibaba/android/dingtalkim/views/NestListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/NestListView;->setExpanded(Z)V

    .line 2145
    sget v0, Lctk$f;->rl_bottom:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->g:Landroid/widget/RelativeLayout;

    .line 2146
    sget v0, Lctk$f;->ll_forward:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->h:Landroid/widget/LinearLayout;

    .line 2147
    sget v0, Lctk$f;->ll_to_task:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->i:Landroid/widget/LinearLayout;

    .line 2148
    sget v0, Lctk$f;->ll_save_to_space:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->j:Landroid/widget/LinearLayout;

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_menu_seed"

    invoke-static {v0, v1, v8, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v4

    .line 96
    .local v4, "menuSeed":J
    new-instance v1, Ldgj;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    move-object v2, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ldgj;-><init>(Landroid/app/Activity;Ljava/util/List;JLdgi$b;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    invoke-interface {v0}, Ldgi$a;->b()V

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0, v1}, Ldgi$a;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 3062
    :goto_2
    new-instance v6, Ldnw$a;

    invoke-direct {v6}, Ldnw$a;-><init>()V

    .line 2152
    const-string/jumbo v0, "IMAGE"

    .line 2153
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->k:Lcom/alibaba/android/dingtalkim/views/NestListView;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;

    invoke-direct {v10, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V

    new-instance v11, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$2;

    invoke-direct {v11, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;)V

    move-object v7, p0

    .line 2152
    invoke-virtual/range {v6 .. v12}, Ldnw$a;->a(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ListView;Ldnu$b;Ldnu$a;Ldnu$c;)Ldnw;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->q:Ldnw;

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    invoke-interface {v0}, Ldgi$a;->a()V

    .line 106
    return-void

    .line 1132
    .end local v4    # "menuSeed":J
    :cond_4
    const-string/jumbo v0, "intent_key_time_stamp"

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_0

    .line 2045
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2046
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2047
    invoke-static {v0}, Ldgu;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    move-result-object v0

    .line 2048
    if-eqz v0, :cond_6

    .line 2049
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 2052
    goto/16 :goto_1

    .line 102
    .restart local v4    # "menuSeed":J
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    invoke-interface {v0}, Ldgi$a;->i()V

    .line 345
    :cond_0
    invoke-static {}, Ldds;->a()Ldds;

    move-result-object v0

    .line 6060
    iget-object v0, v0, Ldds;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 346
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 347
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 183
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .line 184
    .local v1, "model":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-eqz v5, :cond_0

    .line 185
    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v1    # "model":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    :cond_1
    invoke-static {}, Ldvi;->a()Ldvi;

    move-result-object v4

    invoke-virtual {v4, v0}, Ldvi;->a(Ljava/util/List;)J

    move-result-wide v2

    .line 189
    .local v2, "timeStamp":J
    const-string/jumbo v4, "intent_key_time_stamp"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    .end local v0    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    .end local v2    # "timeStamp":J
    :cond_2
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Ldgi$a;

    .line 6317
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatListDetailActivity;->a:Ldgi$a;

    .line 59
    return-void
.end method
