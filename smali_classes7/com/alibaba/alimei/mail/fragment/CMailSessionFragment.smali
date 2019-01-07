.class public Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;
.super Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;
.source "CMailSessionFragment.java"


# instance fields
.field public f:Landroid/widget/ListView;

.field public g:Landroid/view/View;

.field public h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field public i:Lacv;

.field j:I

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field public o:Ljava/lang/String;

.field public p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

.field public q:Landroid/os/Handler;

.field public r:Lyb;

.field private s:I

.field private t:Landroid/view/View;

.field private u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

.field private v:Ladq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->q:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->r:Lyb;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->s:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->j:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)Ladq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->v:Ladq;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->j:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    .line 7261
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, "mailSnippetModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v1, v0}, Lacv;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v0    # "mailSnippetModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :goto_1
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->g:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method public final a(I)V
    .locals 5
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->v:Ladq;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->v:Ladq;

    invoke-interface {v1, p1}, Ladq;->a(I)V

    .line 352
    :cond_0
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-lez p1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 353
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-lez p1, :cond_2

    :goto_1
    invoke-static {v1, v2}, Lss;->b(Landroid/view/ViewGroup;Z)V

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i()Ljava/util/List;

    move-result-object v0

    .line 356
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Lafn;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setItems(Ljava/util/List;)V

    .line 357
    return-void

    .end local v0    # "menuItems":Ljava/util/List;, "Ljava/util/List<Lafn;>;"
    :cond_1
    move v1, v3

    .line 352
    goto :goto_0

    :cond_2
    move v2, v3

    .line 353
    goto :goto_1
.end method

.method public final b(Landroid/view/View;)V
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 130
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "mail.submaillist.appear"

    invoke-static {v2, v3, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const v2, 0x102000a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    .line 133
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->fragment_mail_session_header:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "headerView":Landroid/view/View;
    sget v2, Laxo$f;->mail_session_subject_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, "subjectTv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 140
    .end local v0    # "headerView":Landroid/view/View;
    .end local v1    # "subjectTv":Landroid/widget/TextView;
    :cond_0
    sget v2, Laxo$f;->content_view:I

    invoke-static {p1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->t:Landroid/view/View;

    .line 141
    sget v2, Laxo$f;->action_button_layout:I

    invoke-static {p1, v2}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    .line 142
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->e:Lafo;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setOnMenuItemClickListener(Lafo;)V

    .line 144
    sget v2, Laxo$f;->list_empty_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 145
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v3, Laxo$e;->alm_cmail_empty_icon:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 146
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v3, Laxo$i;->alm_cmail_no_mails:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 148
    sget v2, Laxo$f;->progressContainer:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->g:Landroid/view/View;

    .line 149
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method protected final b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 1
    .param p1, "mailModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v0, p1}, Lacv;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 322
    return-void
.end method

.method protected final b(Z)V
    .locals 3
    .param p1, "editor"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->b(Z)V

    .line 304
    if-eqz p1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    const/4 v2, 0x1

    .line 8241
    iput v2, v1, Lacv;->b:I

    .line 310
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->v:Ladq;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->v:Ladq;

    invoke-interface {v0, p1}, Ladq;->a(Z)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v0}, Lacv;->notifyDataSetChanged()V

    .line 316
    return-void

    .line 307
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    .line 9241
    iput v0, v1, Lacv;->b:I

    .line 308
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v1}, Lacv;->i()V

    goto :goto_0

    .line 310
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 125
    sget v0, Laxo$g;->alm_cmail_fragment_mail_session:I

    return v0
.end method

.method public final bridge synthetic f()Lcom/alibaba/alimei/framework/model/AbsBaseModel;
    .locals 1

    .prologue
    .line 41
    .line 11120
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->n:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 41
    return-object v0
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 338
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v1}, Lacv;->j()Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    return-object v0
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    .line 6261
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->p:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->addLoaderObserver(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;)V

    .line 247
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->m()V

    .line 248
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.submaillist.appear"

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Z)V

    .line 326
    return-void
.end method

.method public final l()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 389
    .line 9924
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->c:Z

    .line 389
    if-eqz v1, :cond_0

    .line 10325
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->a(Z)V

    .line 391
    const/4 v0, 0x1

    .line 394
    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->m:Z

    .line 166
    new-instance v1, Lacv;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 1159
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->l:Ljava/lang/String;

    .line 166
    invoke-direct {v1, v0, v2}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    .line 167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    iput-boolean v3, v0, Lacv;->l:Z

    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    .line 1199
    iput-object p0, v0, Lacv;->q:Lacm;

    .line 169
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    .line 1492
    iput-boolean v4, v0, Lacv;->g:Z

    .line 170
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    const v1, 0x7fffffff

    .line 1500
    iput v1, v0, Lacv;->k:I

    .line 171
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V

    .line 2359
    iput-object v1, v0, Lacv;->h:Lacv$d;

    .line 181
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->n:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0, v1}, Lacv;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    .line 3250
    iput-boolean v4, v0, Lacv;->a:Z

    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i:Lacv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->f:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->j()V

    .line 5085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->r:Lyb;

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "ptcpUnreadCountChanged"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 5377
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->removeAllViews()V

    .line 5378
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->i()Ljava/util/List;

    move-result-object v0

    .line 5379
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/FooterActionLayout;->setItems(Ljava/util/List;)V

    .line 5380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-static {v0, v4}, Lss;->a(Landroid/view/ViewGroup;Z)V

    .line 5381
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->u:Lcom/alibaba/alimei/mail/widget/FooterActionLayout;

    invoke-static {v0, v4}, Lss;->b(Landroid/view/ViewGroup;Z)V

    .line 192
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/AbsCMailFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    :try_start_0
    check-cast p1, Ladq;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSessionFragment;->v:Ladq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
