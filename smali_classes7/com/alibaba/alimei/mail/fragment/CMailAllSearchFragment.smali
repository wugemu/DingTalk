.class public Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.source "CMailAllSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;
    }
.end annotation


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private D:Landroid/os/Handler;

.field private y:I

.field private z:Lacu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;-><init>()V

    .line 54
    iput v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->y:I

    .line 76
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;B)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->y:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->y:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    .line 3372
    const/16 v0, 0xe

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->y:I

    and-int/lit8 v1, v1, 0xe

    if-ne v0, v1, :cond_0

    .line 3373
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3374
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3375
    :goto_0
    return-void

    .line 3376
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3377
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Lacu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->A:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->C:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->B:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 113
    return-void
.end method

.method protected final a(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 14
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

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-static {v8}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v6

    .line 158
    .local v6, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    .line 160
    .local v5, "object":Ljava/lang/Object;
    instance-of v8, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v8, :cond_2

    move-object v4, v5

    .line 161
    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 162
    .local v4, "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 163
    iget-boolean v8, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v8, :cond_0

    .line 164
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 165
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    invoke-virtual {v8}, Lacu;->notifyDataSetChanged()V

    .line 166
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-static {v8}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-interface {v8, v9, v10, v11}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    .line 169
    :cond_0
    if-eqz v6, :cond_1

    .line 170
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->m:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Lxv;)V

    .line 208
    .end local v4    # "mailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    instance-of v8, v5, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    if-eqz v8, :cond_3

    move-object v3, v5

    .line 173
    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 174
    .local v3, "mailAttachmentSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    iget-object v1, v3, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 175
    .local v1, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v3, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    invoke-static {v8, v9, v1}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 177
    if-eqz v6, :cond_1

    .line 178
    const/4 v8, 0x6

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->m:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Lxv;)V

    goto :goto_0

    .line 180
    .end local v1    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v3    # "mailAttachmentSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    :cond_3
    instance-of v8, v5, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    if-eqz v8, :cond_5

    move-object v7, v5

    .line 181
    check-cast v7, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 182
    .local v7, "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    if-eqz v7, :cond_1

    .line 183
    if-eqz v6, :cond_4

    .line 184
    const/4 v8, 0x5

    iget-object v9, v7, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    iget-object v10, v7, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->alias:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V

    .line 186
    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "account_name"

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v8, "target_email"

    iget-object v9, v7, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;->address:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v8, "/cmail/communicate.html"

    invoke-virtual {p0, v8, v2}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 191
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    :cond_5
    instance-of v8, v5, Lacu$d;

    if-eqz v8, :cond_6

    .line 192
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    if-eqz v8, :cond_1

    .line 193
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;->a(I)V

    goto :goto_0

    .line 195
    :cond_6
    instance-of v8, v5, Lacu$k;

    if-eqz v8, :cond_7

    .line 196
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    if-eqz v8, :cond_1

    .line 197
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;->a(I)V

    goto :goto_0

    .line 199
    :cond_7
    instance-of v8, v5, Lacu$a;

    if-eqz v8, :cond_8

    .line 200
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    if-eqz v8, :cond_1

    .line 201
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;->a(I)V

    goto/16 :goto_0

    .line 203
    :cond_8
    instance-of v8, v5, Lacu$c;

    if-eqz v8, :cond_1

    .line 204
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    if-eqz v8, :cond_1

    .line 205
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;->a(I)V

    goto/16 :goto_0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 10
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->y:I

    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    .line 2279
    iput-object p1, v0, Lacu;->a:Ljava/lang/String;

    .line 3226
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3227
    new-instance v5, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    .line 3277
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    move-object v1, p1

    move v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalContactsByPage(Ljava/lang/String;IIILxv;)V

    .line 3282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3283
    new-instance v9, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    .line 3319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    const/4 v6, 0x2

    move-object v5, p1

    move v7, v3

    move v8, v2

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalMailByPage(Ljava/lang/String;IIILxv;)V

    .line 3323
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3324
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;)V

    .line 3368
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    invoke-interface {v1, p1, v3, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchLocalAttachmentByPage(Ljava/lang/String;IILxv;)V

    .line 147
    return-void
.end method

.method protected final c()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    return-object v0
.end method

.method protected final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, -0x1

    return v0
.end method

.method protected final l_()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 122
    new-instance v0, Lacu;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lacu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->A:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->B:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->C:Ljava/util/List;

    .line 126
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 383
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->onDestroy()V

    .line 385
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->B:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->A:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->C:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->D:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 400
    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    .line 1283
    iput p2, v0, Lacu;->b:I

    .line 133
    if-nez p2, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailAllSearchFragment;->z:Lacu;

    invoke-virtual {v0}, Lacu;->notifyDataSetChanged()V

    .line 137
    :cond_0
    return-void
.end method
