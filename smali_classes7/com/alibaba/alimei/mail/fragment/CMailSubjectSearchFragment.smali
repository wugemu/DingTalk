.class public Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.source "CMailSubjectSearchFragment.java"


# instance fields
.field private A:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lacv;

.field private z:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;-><init>()V

    .line 42
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->z:Lxv;

    .line 84
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->A:Lxv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;Ljava/util/List;IZ)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    .line 1241
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    .line 1242
    if-nez p1, :cond_1

    move v0, v1

    .line 1243
    :goto_0
    if-lt v0, p2, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v2}, Lss;->a(Landroid/view/View;Z)V

    .line 1249
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    .line 1363
    iput-boolean v2, v0, Lacv;->i:Z

    .line 1250
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->m:Ljava/lang/String;

    .line 1367
    iput-object v1, v0, Lacv;->j:Ljava/lang/String;

    .line 1252
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->o:Z

    if-eqz v0, :cond_3

    .line 1254
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0, p1}, Lacv;->c(Ljava/util/List;)V

    .line 1260
    :cond_0
    :goto_2
    if-eqz p3, :cond_4

    .line 1261
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(I)V

    :goto_3
    return-void

    .line 1242
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 1256
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0, p1}, Lacv;->a(Ljava/util/List;)V

    goto :goto_2

    .line 1263
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(I)V

    goto :goto_3
.end method


# virtual methods
.method protected final a(I)V
    .locals 4
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 199
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 200
    if-nez p1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lacv;->a(Ljava/util/List;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->d()V

    .line 203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->o:Z

    .line 207
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->q:I

    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    .line 220
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 227
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 228
    :cond_4
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxo$g;->cmail_fragment_mail_search_footer2:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    const v1, 0x1020014

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->h:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    const v1, 0x102000d

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->i:Landroid/widget/ProgressBar;

    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    const v1, 0x1020006

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->j:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 164
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 167
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 169
    .local v0, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-static {v3, v4, v7, v7}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 170
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v3, :cond_0

    .line 171
    iput-boolean v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 172
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v3}, Lacv;->notifyDataSetChanged()V

    .line 173
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a:Ljava/lang/String;

    invoke-static {v3}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v3, v8, v7, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    .line 176
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a:Ljava/lang/String;

    invoke-static {v3}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v2

    .line 177
    .local v2, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v2, :cond_1

    .line 178
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->m:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v7}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Lxv;)V

    .line 181
    .end local v0    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    :cond_1
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 6
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->l:I

    .line 153
    .local v0, "searchType":I
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->h:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_cmail_search_from_server_des:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Laxo$i;->mail_topic:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->z:Lxv;

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalMailByPage(Ljava/lang/String;IILxv;)V

    .line 155
    return-void
.end method

.method protected final c()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    return-object v0
.end method

.method protected final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->getTypeDatas(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x2

    return v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    return v0
.end method

.method protected final i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 274
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i()V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->o:Z

    .line 277
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->m:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->l:I

    const/16 v3, 0x14

    iget v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->q:I

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->A:Lxv;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchMailFromServer(Ljava/lang/String;IIILxv;)V

    .line 279
    return-void
.end method

.method protected final l_()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 145
    new-instance v1, Lacv;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    .line 146
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailSubjectSearchFragment;->y:Lacv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lacv;->a(Z)V

    .line 147
    return-void
.end method
