.class public Lgqd;
.super Ljava/lang/Object;
.source "SpaceAclUtil.java"


# static fields
.field private static volatile a:Lgqd;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgqd;->b:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgqd;->c:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgqd;->d:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgqd;->e:Ljava/util/Map;

    .line 108
    return-void
.end method

.method public static a()Lgqd;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lgqd;->a:Lgqd;

    if-nez v0, :cond_1

    .line 112
    const-class v1, Lgqd;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lgqd;->a:Lgqd;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lgqd;

    invoke-direct {v0}, Lgqd;-><init>()V

    sput-object v0, Lgqd;->a:Lgqd;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    sget-object v0, Lgqd;->a:Lgqd;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgks;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Lgks;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_0
    const/4 v1, 0x0

    .line 137
    :cond_1
    return-object v1

    .line 127
    :cond_2
    const-string/jumbo v1, ""

    .line 129
    .local v1, "result":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgks;

    .line 130
    .local v0, "actionModel":Lgks;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lgks;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 134
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v0, Lgks;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    goto :goto_0
.end method

.method public static a(ZZZ)Ljava/util/ArrayList;
    .locals 2
    .param p0, "canAddUsers"    # Z
    .param p1, "canAddDepts"    # Z
    .param p2, "canAddConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "allowAddMemberTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    if-eqz p2, :cond_0

    .line 257
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_0
    return-object v0
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "authFlag"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 153
    :cond_1
    const-string/jumbo v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "actions":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 159
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 160
    .local v1, "tempAction":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 161
    const/4 v2, 0x1

    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .param p0, "authFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "checkedActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v2

    .line 226
    :cond_1
    const-string/jumbo v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "actions":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 232
    array-length v4, v0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 233
    .local v1, "tempAction":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 237
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const/4 v2, 0x1

    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static b(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "aclMemberModels":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    if-nez p0, :cond_1

    .line 418
    const/4 v0, 0x0

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    const/4 v0, 0x0

    .line 422
    .local v0, "isAll":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu;

    .line 423
    .local v1, "memberModel":Lgnu;
    if-eqz v1, :cond_2

    .line 4227
    iget v3, v1, Lgnu;->e:I

    .line 427
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 428
    const/4 v0, 0x1

    .line 429
    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2
    .param p0, "authFlag"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v0, "checkedAuthList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "modifyReader"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    const-string/jumbo v1, "modifyReaderUploader"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const-string/jumbo v1, "modifyManager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static {p0, v0}, Lgqd;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public final a(Ljava/util/List;J)I
    .locals 6
    .param p2, "type"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnv;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "aclModels":Ljava/util/List;, "Ljava/util/List<Lgnv;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    :cond_0
    const/4 v1, 0x0

    .line 410
    :cond_1
    :goto_0
    return v1

    .line 393
    :cond_2
    const/4 v1, 0x0

    .line 394
    .local v1, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnv;

    .line 395
    .local v0, "aclModel":Lgnv;
    if-eqz v0, :cond_3

    .line 1103
    iget-wide v4, v0, Lgnv;->b:J

    .line 395
    cmp-long v3, v4, p2

    if-nez v3, :cond_3

    .line 1119
    iget-object v3, v0, Lgnv;->d:Ljava/util/List;

    .line 399
    if-eqz v3, :cond_3

    .line 2119
    iget-object v3, v0, Lgnv;->d:Ljava/util/List;

    .line 399
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3119
    iget-object v3, v0, Lgnv;->d:Ljava/util/List;

    .line 403
    invoke-static {v3}, Lgqd;->b(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 404
    const/4 v1, -0x1

    goto :goto_0

    .line 4119
    :cond_4
    iget-object v3, v0, Lgnv;->d:Ljava/util/List;

    .line 406
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 408
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;JZ)Ljava/util/List;
    .locals 8
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "orgId"    # J
    .param p4, "isPreview"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "JZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 278
    if-nez p1, :cond_1

    move-object v6, v3

    .line 338
    :cond_0
    :goto_0
    return-object v6

    .line 282
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v6, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v0

    const-string/jumbo v1, "downloadFile"

    invoke-direct {v0, p1, v1}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {p1}, Lgpr;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const-string/jumbo v0, "action_file_open"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    const-string/jumbo v0, "action_file_delete"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 289
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->updateDownloadInfo(JLjava/lang/String;J)V

    .line 291
    :cond_4
    const-string/jumbo v0, "action_file_download"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 300
    :cond_5
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "transferFile"

    invoke-direct {p0, p1, v0}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    const-string/jumbo v0, "action_file_send_to_contact"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-nez v0, :cond_6

    .line 303
    const-string/jumbo v0, "action_file_send_as_email"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_6
    const-string/jumbo v0, "createOutLinkFile"

    invoke-direct {p0, p1, v0}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v0

    if-nez v0, :cond_7

    .line 308
    const-string/jumbo v0, "action_file_share_as_link"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_7
    const-string/jumbo v0, "modifyAllFile"

    invoke-direct {p0, p1, v0}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "modifyOtherFile"

    .line 312
    invoke-direct {p0, p1, v0}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "modifySelfFile"

    .line 313
    invoke-direct {p0, p1, v0}, Lgqd;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    :cond_8
    const-string/jumbo v0, "action_file_re_path"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    const-string/jumbo v0, "action_file_delete"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    const-string/jumbo v0, "action_file_rename"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "folder"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 322
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgqd;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 323
    const-string/jumbo v0, "action_folder_acl_modify"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cloudPrint"

    invoke-static {v0, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 330
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 331
    const-string/jumbo v0, "action_file_print"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "listHistory"

    invoke-static {v0, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string/jumbo v0, "action_file_history"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 324
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "readPolicy"

    invoke-static {v0, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 325
    const-string/jumbo v0, "action_folder_acl_view"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3
    .param p1, "spaceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 187
    iget-object v1, p0, Lgqd;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lgqd;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "folderKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 198
    :cond_0
    iget-object v1, p0, Lgqd;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lgqd;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 204
    iget-object v1, p0, Lgqd;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lgqd;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 206
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "folderKey"    # Ljava/lang/String;
    .param p2, "aclFlag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 169
    iget-object v1, p0, Lgqd;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lgqd;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "publicSpaceId"    # Ljava/lang/String;
    .param p2, "flag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 178
    iget-object v1, p0, Lgqd;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lgqd;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authFlag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "modifyReader"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "modifyReaderUploader"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "modifyManager"

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lgqd;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    goto :goto_0
.end method
