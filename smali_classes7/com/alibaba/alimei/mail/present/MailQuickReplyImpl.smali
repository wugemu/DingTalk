.class public Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;
.super Ljava/lang/Object;
.source "MailQuickReplyImpl.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Laef;

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field public e:Laek;

.field public f:I

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    .line 52
    iput-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->i:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->j:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p2, "x2"    # Z

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V

    return-void
.end method

.method public static a(Ljava/util/List;Lagz;)V
    .locals 5
    .param p1, "sendMail"    # Lagz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;",
            "Lagz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v1, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 495
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 496
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    .end local v0    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_1
    if-eqz p1, :cond_2

    .line 501
    iput-object v1, p1, Lagz;->p:Ljava/util/List;

    .line 504
    .end local v1    # "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    .line 488
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "signature_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    new-instance v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$2;-><init>(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->clearQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V

    .line 133
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 162
    iput p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    .line 164
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V
    .locals 13
    .param p1, "sourceMail"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p2, "messageLoad"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1231
    if-eqz p1, :cond_d

    .line 1232
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1234
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    .line 1237
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    .line 1240
    if-eqz v0, :cond_15

    .line 1241
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1242
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    .line 1247
    :goto_0
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1249
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1251
    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move v0, v1

    move v3, v1

    .line 1262
    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    .line 1265
    const/4 v4, 0x0

    .line 1267
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v5, :cond_14

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 1268
    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v2

    move v6, v0

    move v7, v3

    move v3, v2

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1269
    iget-object v11, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1270
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1272
    if-nez v3, :cond_1

    .line 1273
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1274
    const-string/jumbo v4, ","

    invoke-virtual {v9, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1276
    :cond_0
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iget-object v11, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v4, v11}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1277
    add-int/lit8 v7, v7, 0x1

    .line 1280
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 1283
    add-int/lit8 v6, v6, 0x1

    .line 1284
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    .line 1287
    :cond_2
    if-lt v7, v12, :cond_13

    move v0, v1

    :goto_3
    move v3, v0

    .line 1290
    goto :goto_2

    .line 1244
    :cond_3
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v0, v6

    .line 1293
    :goto_4
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    if-eqz v6, :cond_9

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 1294
    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1295
    iget-object v11, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    if-eqz v11, :cond_12

    iget-object v11, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 1296
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1298
    if-nez v3, :cond_6

    .line 1299
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1300
    const-string/jumbo v4, ","

    invoke-virtual {v9, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1302
    :cond_5
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iget-object v11, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v4, v11}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1303
    add-int/lit8 v7, v7, 0x1

    .line 1306
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 1309
    add-int/lit8 v6, v6, 0x1

    .line 1310
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    move v0, v6

    .line 1313
    :goto_6
    if-lt v7, v12, :cond_7

    move v3, v1

    :cond_7
    move v6, v0

    .line 1316
    goto :goto_5

    :cond_8
    move v0, v6

    .line 1319
    :cond_9
    if-gt v5, v1, :cond_a

    if-ne v1, v5, :cond_b

    if-eqz v4, :cond_b

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lafh;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1320
    :cond_a
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    .line 1323
    :cond_b
    if-eqz v3, :cond_c

    .line 1324
    sub-int v3, v0, v7

    .line 1325
    if-lez v3, :cond_c

    .line 1326
    iget-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->j:Landroid/content/Context;

    sget v4, Laxo$i;->dt_mail_quick_and_more_peoples:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1330
    :cond_c
    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->i:Ljava/lang/String;

    .line 2172
    :cond_d
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 2173
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->i:Ljava/lang/String;

    .line 2178
    :goto_7
    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b:Laef;

    if-eqz v1, :cond_e

    .line 2179
    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b:Laef;

    invoke-interface {v1, v0}, Laef;->a(Ljava/lang/String;)V

    .line 342
    :cond_e
    if-eqz p2, :cond_f

    if-eqz p1, :cond_f

    .line 343
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    :goto_8
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b(Ljava/lang/String;)V

    .line 345
    :cond_f
    return-void

    .line 2175
    :cond_10
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    goto :goto_7

    .line 343
    :cond_11
    const-string/jumbo v0, ""

    goto :goto_8

    :cond_12
    move v0, v6

    goto :goto_6

    :cond_13
    move v0, v3

    goto/16 :goto_3

    :cond_14
    move v5, v2

    move v7, v3

    move v3, v2

    goto/16 :goto_4

    :cond_15
    move v0, v2

    move v3, v2

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    .line 138
    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object p1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->draftBrief:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 143
    .local v0, "api":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    new-instance v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$3;-><init>(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->saveQuickReplyContent(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lxv;)V

    .line 158
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b:Laef;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b:Laef;

    invoke-interface {v0, p1}, Laef;->b(Ljava/lang/String;)V

    .line 353
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 377
    const/4 v2, 0x0

    .line 379
    .local v2, "result":Z
    iget-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->e:Laek;

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->e:Laek;

    invoke-interface {v3}, Laek;->c()Ljava/util/List;

    move-result-object v1

    .line 381
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 382
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    .local v0, "commonText":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    const/4 v2, 0x1

    .line 393
    .end local v0    # "commonText":Ljava/lang/String;
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return v2

    .line 389
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
