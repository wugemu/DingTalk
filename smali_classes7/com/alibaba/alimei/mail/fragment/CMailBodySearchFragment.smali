.class public Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.source "CMailBodySearchFragment.java"


# instance fields
.field private y:Lacv;

.field private z:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSearchResultModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;-><init>()V

    .line 36
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->z:Lxv;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;)Lacv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;Ljava/util/List;IZ)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 30
    const/16 v2, 0x14

    .line 1161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    .line 1163
    if-nez p1, :cond_1

    move v0, v1

    .line 1164
    :goto_0
    if-lt v0, v2, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v3}, Lss;->a(Landroid/view/View;Z)V

    .line 1170
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    .line 1363
    iput-boolean v3, v0, Lacv;->i:Z

    .line 1171
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->m:Ljava/lang/String;

    .line 1367
    iput-object v1, v0, Lacv;->j:Ljava/lang/String;

    .line 1173
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->o:Z

    if-eqz v0, :cond_3

    .line 1175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0, p1}, Lacv;->c(Ljava/util/List;)V

    .line 1182
    :cond_0
    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a(I)V

    return-void

    .line 1163
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 1167
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v1}, Lss;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 1177
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0, p1}, Lacv;->a(Ljava/util/List;)V

    goto :goto_2
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

    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 126
    if-nez p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lacv;->a(Ljava/util/List;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->d()V

    .line 129
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->q:I

    .line 133
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->o:Z

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/4 v0, 0x2

    if-eq v0, p1, :cond_4

    .line 139
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 156
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected final a(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
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
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 104
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 107
    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 109
    .local v0, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-static {v3, v4, v8, v8}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 110
    iget-boolean v3, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v3, :cond_0

    .line 111
    iput-boolean v7, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 112
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v3}, Lacv;->notifyDataSetChanged()V

    .line 113
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a:Ljava/lang/String;

    invoke-static {v3}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v3, v7, v8, v4}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a:Ljava/lang/String;

    invoke-static {v3}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v2

    .line 117
    .local v2, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v2, :cond_1

    .line 118
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->m:Ljava/lang/String;

    invoke-interface {v2, v7, v3, v8}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Lxv;)V

    .line 121
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
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->l:I

    const/16 v3, 0x14

    iget v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->q:I

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->z:Lxv;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchMailFromServer(Ljava/lang/String;IIILxv;)V

    .line 95
    return-void
.end method

.method protected final c()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

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
    .line 199
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->getTypeDatas(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method protected final h()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    invoke-virtual {v0}, Lacv;->getCount()I

    move-result v0

    return v0
.end method

.method protected final l_()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    new-instance v1, Lacv;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->a:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lacv;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBodySearchFragment;->y:Lacv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lacv;->a(Z)V

    .line 89
    return-void
.end method
