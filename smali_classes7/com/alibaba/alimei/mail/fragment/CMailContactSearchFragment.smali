.class public Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.source "CMailContactSearchFragment.java"


# instance fields
.field private A:I

.field private B:I

.field private C:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagv;",
            ">;>;"
        }
    .end annotation
.end field

.field y:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/SearchContactResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->A:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->B:I

    .line 53
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->C:Lxv;

    .line 119
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->y:Lxv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->A:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;)Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;Ljava/util/List;IZZ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 41
    .line 1306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->getCount()I

    .line 1307
    if-nez p1, :cond_2

    .line 1309
    :goto_0
    if-nez p3, :cond_0

    .line 1310
    if-eqz p4, :cond_3

    .line 1311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    .line 1317
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1318
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->o:Z

    if-eqz v0, :cond_4

    .line 1319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a(Ljava/util/List;)V

    .line 1325
    :cond_1
    :goto_2
    if-eqz p3, :cond_5

    .line 1326
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(I)V

    :goto_3
    return-void

    .line 1307
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    goto :goto_0

    .line 1313
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 1321
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->b(Ljava/util/List;)V

    goto :goto_2

    .line 1328
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(I)V

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

    .line 257
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 258
    if-nez p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->b(Ljava/util/List;)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->c()V

    .line 261
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->o:Z

    .line 267
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->A:I

    .line 268
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->q:I

    .line 269
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 280
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 289
    :cond_4
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 291
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 297
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

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
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laxo$g;->cmail_fragment_mail_search_footer2:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    const v1, 0x1020014

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->h:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    const v1, 0x102000d

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->i:Landroid/widget/ProgressBar;

    .line 184
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    const v1, 0x1020006

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->j:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 190
    :cond_0
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 223
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "object":Ljava/lang/Object;
    instance-of v4, v1, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 226
    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 227
    .local v3, "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    if-eqz v3, :cond_1

    .line 228
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a:Ljava/lang/String;

    invoke-static {v4}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v2

    .line 229
    .local v2, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v2, :cond_0

    .line 230
    const/4 v4, 0x5

    iget-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    iget-object v6, v3, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V

    .line 233
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "account_name"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v4, "target_email"

    iget-object v5, v3, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v4, "/cmail/communicate.html"

    invoke-virtual {p0, v4, v0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    .end local v3    # "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
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
    .line 205
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->h:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_cmail_search_from_server_des:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Laxo$i;->dt_cmail_contacts:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    .line 1075
    iput-object p1, v0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->e:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->B:I

    const/16 v4, 0x50

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->C:Lxv;

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalContactsByPage(Ljava/lang/String;IIILxv;)V

    .line 209
    return-void
.end method

.method protected final c()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

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
    .line 247
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->getTypeDatas(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x5

    return v0
.end method

.method protected final g()I
    .locals 1

    .prologue
    .line 213
    sget v0, Laxo$i;->dt_cmail_not_found_contact:I

    return v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->A:I

    return v0
.end method

.method protected final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 339
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->o:Z

    .line 342
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->m:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->q:I

    const/16 v3, 0x14

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->y:Lxv;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/contact/api/ContactApi;->searchContactsFromServer(Ljava/lang/String;IILxv;)V

    .line 344
    return-void
.end method

.method protected final l_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 194
    new-instance v1, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    .line 195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailContactSearchFragment;->z:Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/alimei/mail/adapter/CMailContactSearchAdapter;->a:Z

    .line 196
    return-void
.end method
