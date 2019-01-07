.class public Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.source "CMailAttachmentSearchFragment.java"


# instance fields
.field private A:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lagu;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

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
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->z:Lxv;

    .line 99
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->A:Lxv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;)Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;Ljava/util/List;IZ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 1263
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->getCount()I

    .line 1264
    if-nez p1, :cond_1

    move v0, v1

    .line 1265
    :goto_0
    if-lt v0, p2, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    .line 1271
    :goto_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->o:Z

    if-eqz v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a(Ljava/util/List;)V

    .line 1279
    :cond_0
    :goto_2
    if-eqz p3, :cond_4

    .line 1280
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(I)V

    :goto_3
    return-void

    .line 1264
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 1275
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->b(Ljava/util/List;)V

    goto :goto_2

    .line 1282
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(I)V

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
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 215
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 216
    if-nez p1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->b(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->c()V

    .line 219
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->o:Z

    .line 225
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->q:I

    .line 226
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    .line 238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 246
    :cond_4
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 248
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxo$g;->cmail_fragment_mail_search_footer2:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    const v1, 0x1020014

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->h:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    const v1, 0x102000d

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->i:Landroid/widget/ProgressBar;

    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    const v1, 0x1020006

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->j:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 156
    :cond_0
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 7
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

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 185
    .local v2, "object":Ljava/lang/Object;
    instance-of v4, v2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 186
    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 188
    .local v1, "mailAttachmentSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 189
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 191
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a:Ljava/lang/String;

    invoke-static {v4}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v3

    .line 192
    .local v3, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v3, :cond_0

    .line 193
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->m:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Lxv;)V

    .line 196
    .end local v0    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v1    # "mailAttachmentSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    .end local v3    # "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 5
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->h:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_cmail_search_from_server_des:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Laxo$i;->dt_mail_filter_attachment_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    .line 1140
    iput-object p1, v0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->e:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    const/16 v1, 0x50

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->z:Lxv;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalAttachmentByPage(Ljava/lang/String;IILxv;)V

    .line 169
    return-void
.end method

.method protected final c()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

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
    .line 204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->getTypeDatas(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x6

    return v0
.end method

.method protected final g()I
    .locals 1

    .prologue
    .line 173
    sget v0, Laxo$i;->dt_cmail_not_found_attachment:I

    return v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method protected final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->o:Z

    .line 296
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->m:Ljava/lang/String;

    const/16 v2, 0x14

    iget v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->q:I

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->A:Lxv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchAttachmentFromServer(Ljava/lang/String;IILxv;)V

    .line 298
    return-void
.end method

.method protected final l_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 160
    new-instance v1, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    .line 161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAttachmentSearchFragment;->y:Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;

    .line 1127
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->f:Z

    .line 1128
    iget-boolean v1, v0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->f:Z

    if-eqz v1, :cond_0

    .line 1129
    iget-object v1, v0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    .line 162
    :cond_0
    return-void
.end method
