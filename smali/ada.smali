.class public Lada;
.super Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;
.source "MailParticipantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lada$c;,
        Lada$b;,
        Lada$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labn;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field protected j:Z

.field public k:Z

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v0, p0, Lada;->f:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lada;->g:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lada;->h:Z

    .line 67
    iput-object p1, p0, Lada;->m:Landroid/app/Activity;

    .line 68
    new-instance v0, Lfk;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lfk;-><init>(I)V

    iput-object v0, p0, Lada;->a:Lfk;

    .line 70
    iget-object v0, p0, Lada;->a:Lfk;

    const-string/jumbo v1, "read"

    sget v2, Laxo$i;->alm_cmail_recipeint_status_read:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lada;->a:Lfk;

    const-string/jumbo v1, "unread"

    sget v2, Laxo$i;->alm_cmail_recipeint_status_unread:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lada;->a:Lfk;

    const-string/jumbo v1, "sending"

    sget v2, Laxo$i;->alm_cmail_recipeint_status_sending:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lada;->a:Lfk;

    const-string/jumbo v1, "sent"

    sget v2, Laxo$i;->alm_cmail_recipeint_status_sent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lada;->a:Lfk;

    const-string/jumbo v1, "unknown"

    sget v2, Laxo$i;->alm_cmail_recipeint_status_unknown:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lada;->a:Lfk;

    const-string/jumbo v1, "fail"

    sget v2, Laxo$i;->alm_cmail_recipeint_status_fail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method static synthetic a(Lada;)Z
    .locals 1
    .param p0, "x0"    # Lada;

    .prologue
    .line 41
    iget-boolean v0, p0, Lada;->k:Z

    return v0
.end method

.method static synthetic b(Lada;)Z
    .locals 1
    .param p0, "x0"    # Lada;

    .prologue
    .line 41
    iget-boolean v0, p0, Lada;->h:Z

    return v0
.end method

.method static synthetic c(Lada;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lada;

    .prologue
    .line 41
    iget-object v0, p0, Lada;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lada;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lada;

    .prologue
    .line 41
    iget-object v0, p0, Lada;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p1, "mailSnippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 223
    iput-object p1, p0, Lada;->c:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 224
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    const/high16 v10, -0x80000000

    const/4 v8, 0x0

    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v8, 0x0

    iput-object v8, p0, Lada;->d:Ljava/util/List;

    .line 159
    invoke-virtual {p0}, Lada;->notifyDataSetChanged()V

    .line 202
    :goto_0
    return-void

    .line 163
    :cond_0
    const-string/jumbo v9, "from"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 164
    .local v3, "froms":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    const-string/jumbo v9, "to"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 165
    .local v7, "tos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    const-string/jumbo v9, "cc"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 169
    .local v1, "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    if-nez v3, :cond_4

    move v2, v8

    .line 170
    .local v2, "fromcount":I
    :goto_1
    if-nez v7, :cond_5

    move v6, v8

    .line 171
    .local v6, "tocount":I
    :goto_2
    if-nez v1, :cond_6

    move v0, v8

    .line 174
    .local v0, "cccount":I
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    add-int v9, v6, v0

    add-int/2addr v9, v2

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    .local v5, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    if-lez v2, :cond_1

    .line 176
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 177
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iput v10, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 178
    const-string/jumbo v9, "from"

    iput-object v9, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    .line 179
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    iget-object v8, v8, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddress:Ljava/lang/String;

    iput-object v8, p0, Lada;->g:Ljava/lang/String;

    .line 184
    .end local v4    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_1
    if-lez v6, :cond_2

    .line 185
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 186
    .restart local v4    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iput v10, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 187
    const-string/jumbo v8, "to"

    iput-object v8, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    .line 188
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    .end local v4    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_2
    if-lez v0, :cond_3

    .line 193
    new-instance v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;-><init>()V

    .line 194
    .restart local v4    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iput v10, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    .line 195
    const-string/jumbo v8, "cc"

    iput-object v8, v4, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    .line 196
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    .end local v4    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :cond_3
    iput-object v5, p0, Lada;->d:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Lada;->notifyDataSetChanged()V

    goto :goto_0

    .line 169
    .end local v0    # "cccount":I
    .end local v2    # "fromcount":I
    .end local v5    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;"
    .end local v6    # "tocount":I
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .line 170
    .restart local v2    # "fromcount":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_2

    .line 171
    .restart local v6    # "tocount":I
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isScroll"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lada;->j:Z

    .line 150
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "mailCidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Labn;>;"
    iput-object p1, p0, Lada;->b:Ljava/util/Map;

    .line 219
    invoke-virtual {p0}, Lada;->notifyDataSetChanged()V

    .line 220
    return-void
.end method

.method public final d()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v2, p0, Lada;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lada;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 125
    :cond_1
    :goto_0
    return v0

    .line 96
    :cond_2
    iget-boolean v2, p0, Lada;->i:Z

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, p0, Lada;->f:Ljava/lang/String;

    iget-object v3, p0, Lada;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    iget-object v2, p0, Lada;->l:Ljava/util/Set;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lada;->l:Ljava/util/Set;

    iget-object v3, p0, Lada;->g:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 228
    iget-object v1, p0, Lada;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 229
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    iget v1, v0, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientAddressType:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 230
    const/4 v1, 0x0

    .line 232
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lada;->getItemViewType(I)I

    move-result v3

    .line 249
    .local v3, "viewType":I
    const/4 v0, 0x0

    .line 251
    .local v0, "holder":Lada$a;
    if-eqz p2, :cond_1

    .line 252
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 253
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lada$a;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 254
    check-cast v0, Lada$a;

    .line 255
    iget v4, v0, Lada$a;->b:I

    if-eq v3, v4, :cond_1

    .line 256
    const/4 v0, 0x0

    .line 260
    :cond_0
    const/4 p2, 0x0

    .line 265
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_3

    .line 266
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 272
    new-instance v0, Lada$b;

    .end local v0    # "holder":Lada$a;
    invoke-direct {v0, p0}, Lada$b;-><init>(Lada;)V

    .line 276
    .restart local v0    # "holder":Lada$a;
    :goto_0
    iget-object v4, p0, Lada;->e:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lada$a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 277
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    :cond_3
    iput-object p0, v0, Lada$a;->c:Lada;

    .line 283
    iget-object v4, p0, Lada;->d:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 284
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    const-string/jumbo v4, "from"

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 285
    const-string/jumbo v4, "read"

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    .line 288
    :cond_4
    iget-object v4, p0, Lada;->e:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lada$a;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;)V

    .line 290
    return-object p2

    .line 268
    .end local v1    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :pswitch_0
    new-instance v0, Lada$c;

    .end local v0    # "holder":Lada$a;
    invoke-direct {v0, p0}, Lada$c;-><init>(Lada;)V

    .line 269
    .restart local v0    # "holder":Lada$a;
    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Lada;->getItemViewType(I)I

    move-result v0

    .line 238
    .local v0, "viewType":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
