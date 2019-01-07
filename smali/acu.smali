.class public final Lacu;
.super Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.source "CMailAllSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacu$b;,
        Lacu$e;,
        Lacu$h;,
        Lacu$j;,
        Lacu$g;,
        Lacu$l;,
        Lacu$a;,
        Lacu$k;,
        Lacu$c;,
        Lacu$d;,
        Lacu$i;,
        Lacu$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field private c:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lacu$i;

.field private l:Lacu$i;

.field private m:Lacu$i;

.field private n:Lacu$i;

.field private o:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lacu;->b:I

    .line 120
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacu;->o:Lfp;

    .line 121
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacu;->p:Lfp;

    .line 168
    iput-object p2, p0, Lacu;->c:Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacu;->f:Ljava/util/List;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacu;->g:Ljava/util/List;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacu;->h:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacu;->i:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacu;->j:Ljava/util/List;

    .line 174
    new-instance v0, Lacu$d;

    invoke-direct {v0, v1}, Lacu$d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacu;->k:Lacu$i;

    .line 175
    new-instance v0, Lacu$k;

    invoke-direct {v0, v1}, Lacu$k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacu;->l:Lacu$i;

    .line 176
    new-instance v0, Lacu$c;

    invoke-direct {v0, v1}, Lacu$c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacu;->n:Lacu$i;

    .line 177
    new-instance v0, Lacu$a;

    invoke-direct {v0, v1}, Lacu$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lacu;->m:Lacu$i;

    .line 178
    return-void
.end method

.method static synthetic a(Lacu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lacu;

    .prologue
    .line 54
    iget-object v0, p0, Lacu;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lacu;)I
    .locals 1
    .param p0, "x0"    # Lacu;

    .prologue
    .line 54
    iget v0, p0, Lacu;->b:I

    return v0
.end method

.method static synthetic c(Lacu;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lacu;

    .prologue
    .line 54
    iget-object v0, p0, Lacu;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lacu;)Lfp;
    .locals 1
    .param p0, "x0"    # Lacu;

    .prologue
    .line 54
    iget-object v0, p0, Lacu;->o:Lfp;

    return-object v0
.end method

.method static synthetic e(Lacu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacu;

    .prologue
    .line 54
    iget-object v0, p0, Lacu;->e:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 247
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_contacts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v0, p0, Lacu;->k:Lacu$i;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_more_contacts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lacu$i;->a:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->k:Lacu$i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    new-instance v1, Lacu$f;

    invoke-direct {v1, v5}, Lacu$f;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->mail_topic:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    iget-object v0, p0, Lacu;->l:Lacu$i;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_more_mails:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lacu;->e:Landroid/content/Context;

    sget v4, Laxo$i;->mail_topic:I

    .line 257
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lacu;->a:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 256
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lacu$i;->a:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->l:Lacu$i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    new-instance v1, Lacu$f;

    invoke-direct {v1, v5}, Lacu$f;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_body:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v0, p0, Lacu;->n:Lacu$i;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_more_mails:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lacu;->e:Landroid/content/Context;

    sget v4, Laxo$i;->dt_cmail_body:I

    .line 265
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lacu;->a:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 264
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lacu$i;->a:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->n:Lacu$i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    new-instance v1, Lacu$f;

    invoke-direct {v1, v5}, Lacu$f;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_mail_filter_attachment_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iget-object v0, p0, Lacu;->m:Lacu$i;

    iget-object v1, p0, Lacu;->e:Landroid/content/Context;

    sget v2, Laxo$i;->dt_cmail_more_attachment:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lacu;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lacu$i;->a:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    iget-object v1, p0, Lacu;->m:Lacu$i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    new-instance v1, Lacu$f;

    invoke-direct {v1, v5}, Lacu$f;-><init>(B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    invoke-virtual {p0, v0}, Lacu;->a(Ljava/util/List;)V

    .line 276
    return-void
.end method

.method static synthetic f(Lacu;)Lfp;
    .locals 1
    .param p0, "x0"    # Lacu;

    .prologue
    .line 54
    iget-object v0, p0, Lacu;->p:Lfp;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 288
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    instance-of v1, p1, Lacu$f;

    if-eqz v1, :cond_2

    .line 291
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    :cond_2
    instance-of v1, p1, Lacu$d;

    if-eqz v1, :cond_3

    .line 293
    const/4 v0, 0x5

    goto :goto_0

    .line 294
    :cond_3
    instance-of v1, p1, Lacu$k;

    if-eqz v1, :cond_4

    .line 295
    const/4 v0, 0x6

    goto :goto_0

    .line 296
    :cond_4
    instance-of v1, p1, Lacu$c;

    if-eqz v1, :cond_5

    .line 297
    const/4 v0, 0x7

    goto :goto_0

    .line 298
    :cond_5
    instance-of v1, p1, Lacu$a;

    if-eqz v1, :cond_6

    .line 299
    const/16 v0, 0x8

    goto :goto_0

    .line 300
    :cond_6
    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    if-eqz v1, :cond_7

    .line 301
    const/4 v0, 0x2

    goto :goto_0

    .line 302
    :cond_7
    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v1, :cond_8

    .line 303
    const/4 v0, 0x3

    goto :goto_0

    .line 304
    :cond_8
    instance-of v1, p1, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    if-eqz v1, :cond_0

    .line 305
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected final a(I)Lrs;
    .locals 2
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 318
    packed-switch p1, :pswitch_data_0

    .line 335
    new-instance v0, Lacu$l;

    invoke-direct {v0, v1}, Lacu$l;-><init>(B)V

    :goto_0
    return-object v0

    .line 320
    :pswitch_0
    new-instance v0, Lacu$l;

    invoke-direct {v0, v1}, Lacu$l;-><init>(B)V

    goto :goto_0

    .line 322
    :pswitch_1
    new-instance v0, Lacu$g;

    invoke-direct {v0, v1}, Lacu$g;-><init>(B)V

    goto :goto_0

    .line 327
    :pswitch_2
    new-instance v0, Lacu$j;

    invoke-direct {v0, v1}, Lacu$j;-><init>(B)V

    goto :goto_0

    .line 329
    :pswitch_3
    new-instance v0, Lacu$e;

    invoke-direct {v0, p0, v1}, Lacu$e;-><init>(Lacu;B)V

    goto :goto_0

    .line 331
    :pswitch_4
    new-instance v0, Lacu$h;

    invoke-direct {v0, p0, v1}, Lacu$h;-><init>(Lacu;B)V

    goto :goto_0

    .line 333
    :pswitch_5
    new-instance v0, Lacu$b;

    invoke-direct {v0, p0, v1}, Lacu$b;-><init>(Lacu;B)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;->a()V

    .line 346
    iget-object v0, p0, Lacu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    iget-object v0, p0, Lacu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    iget-object v0, p0, Lacu;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, p0, Lacu;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 350
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 181
    .local p1, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;>;"
    iget-object v2, p0, Lacu;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 182
    iget-object v2, p0, Lacu;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "count":I
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;

    .line 187
    .local v1, "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    if-eqz v1, :cond_0

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 191
    iget-object v3, p0, Lacu;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 198
    .end local v1    # "searchModel":Lcom/alibaba/alimei/sdk/model/MailContactSearchModel;
    :cond_1
    invoke-direct {p0}, Lacu;->e()V

    .line 199
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 202
    .local p1, "subjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lacu;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 203
    iget-object v2, p0, Lacu;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "count":I
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 208
    .local v1, "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v1, :cond_0

    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    iget-object v3, p0, Lacu;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 220
    .end local v1    # "mailModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    invoke-direct {p0}, Lacu;->e()V

    .line 221
    return-void
.end method

.method public final g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 224
    .local p1, "attachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;>;"
    iget-object v2, p0, Lacu;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 225
    iget-object v2, p0, Lacu;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "count":I
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 230
    .local v0, "attachmentSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    if-eqz v0, :cond_0

    .line 234
    add-int/lit8 v1, v1, 0x1

    .line 235
    iget-object v3, p0, Lacu;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    .line 242
    .end local v0    # "attachmentSearchModel":Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;
    :cond_1
    invoke-direct {p0}, Lacu;->e()V

    .line 243
    return-void
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x9

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-virtual {p0, p1}, Lacu;->getItemViewType(I)I

    move-result v0

    .line 313
    .local v0, "viewType":I
    if-nez v0, :cond_0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
