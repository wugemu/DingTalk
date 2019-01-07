.class public Laco;
.super Ljava/lang/Object;
.source "MailAliasManager.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laco;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laco;->d:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Laco;->a:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laco;->b:Ljava/util/Set;

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/String;)Laco;
    .locals 5
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v3, Laco;->d:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laco;

    .line 58
    .local v1, "manager":Laco;
    if-nez v1, :cond_1

    .line 59
    const-class v4, Laco;

    monitor-enter v4

    .line 60
    :try_start_0
    sget-object v3, Laco;->d:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Laco;

    move-object v1, v0

    .line 61
    if-nez v1, :cond_0

    .line 62
    new-instance v2, Laco;

    invoke-direct {v2, p0}, Laco;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v1    # "manager":Laco;
    .local v2, "manager":Laco;
    :try_start_1
    sget-object v3, Laco;->d:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 65
    .end local v2    # "manager":Laco;
    .restart local v1    # "manager":Laco;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 67
    :cond_1
    return-object v1

    .line 65
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "manager":Laco;
    .restart local v2    # "manager":Laco;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "manager":Laco;
    .restart local v1    # "manager":Laco;
    goto :goto_0
.end method

.method static synthetic a(Laco;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Laco;

    .prologue
    .line 28
    iget-object v0, p0, Laco;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Laco;Lcma;)V
    .locals 2
    .param p0, "x0"    # Laco;
    .param p1, "x1"    # Lcma;

    .prologue
    .line 28
    .line 4219
    iget-object v0, p0, Laco;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v0

    .line 4220
    if-eqz v0, :cond_0

    .line 4221
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Laco;->a(ZLcma;)Lxv;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V

    :goto_0
    return-void

    .line 4223
    :cond_0
    const-string/jumbo v0, "MailAliasManager"

    const-string/jumbo v1, "getUserSelfFromLocal fail for contactApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Laco;Ljava/lang/String;Ljava/lang/String;Lcma;)Z
    .locals 1
    .param p0, "x0"    # Laco;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcma;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Laco;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcma;)Z
    .locals 11
    .param p1, "originAccount"    # Ljava/lang/String;
    .param p2, "targetAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 185
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    const-string/jumbo v4, "MailAliasManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "handleAccountRename fail for originAccount: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 215
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 191
    :cond_1
    :try_start_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 192
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-nez v0, :cond_2

    .line 193
    const-string/jumbo v4, "MailAliasManager"

    const-string/jumbo v6, "handleAccountRename error for accountApi is null!!!"

    invoke-static {v4, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    const-string/jumbo v4, "MailAliasManager"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "handleAccountRename originAccount:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ", targetAccount: "

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iput-object p2, p0, Laco;->c:Ljava/lang/String;

    .line 200
    const/4 v1, 0x1

    .line 201
    .local v1, "handle":Z
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v2

    .line 202
    .local v2, "isAccountLogin":Z
    if-eqz v2, :cond_c

    .line 2228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2232
    iget-object v4, p0, Laco;->b:Ljava/util/Set;

    .line 2233
    if-eqz v4, :cond_5

    .line 2234
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2235
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2236
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2240
    const-string/jumbo v9, "@dingtalk.com"

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    move v3, v7

    .line 204
    .local v3, "isDingtalkMail":Z
    :goto_1
    if-eqz v3, :cond_b

    .line 205
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v5

    .line 2317
    iget-object v4, v5, Lacr;->c:Labx;

    if-eqz v4, :cond_4

    iget-object v4, v5, Lacr;->c:Labx;

    iget-object v4, v4, Labx;->d:Ljava/lang/String;

    .line 2319
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2320
    :cond_4
    if-eqz p3, :cond_0

    .line 2321
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 185
    .end local v0    # "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    .end local v1    # "handle":Z
    .end local v2    # "isAccountLogin":Z
    .end local v3    # "isDingtalkMail":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2247
    .restart local v0    # "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    .restart local v1    # "handle":Z
    .restart local v2    # "isAccountLogin":Z
    :cond_5
    :try_start_2
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2248
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v3, v7

    .line 2249
    goto :goto_1

    .line 2252
    :cond_7
    const-string/jumbo v4, "@dingtalk.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_8

    move v3, v7

    goto :goto_1

    :cond_8
    move v3, v5

    goto :goto_1

    .line 2327
    .restart local v3    # "isDingtalkMail":Z
    :cond_9
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    invoke-virtual {v4}, Lacr;->n()Ljava/lang/String;

    move-result-object v8

    .line 2330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2331
    iget-object v4, v5, Lacr;->c:Labx;

    iget-object v4, v4, Labx;->d:Ljava/lang/String;

    .line 2334
    :goto_2
    new-instance v9, Lru;

    invoke-direct {v9}, Lru;-><init>()V

    .line 2335
    iget-object v10, v5, Lacr;->c:Labx;

    iget-object v10, v10, Labx;->b:Ljava/lang/String;

    .line 3041
    iput-object v10, v9, Lru;->a:Ljava/lang/String;

    .line 3049
    iput-object v4, v9, Lru;->b:Ljava/lang/String;

    .line 2337
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v6

    .line 3057
    :goto_3
    iput v4, v9, Lru;->c:I

    .line 2340
    const-string/jumbo v4, "pref_key_dingtalk_org_destribute"

    .line 3065
    invoke-static {v9}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2340
    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string/jumbo v4, "pref_key_dingtalk_org_destribute_check"

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2343
    const-string/jumbo v4, "MultiMailManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v9, "resetDingtalkOrgMail orgMail: "

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    iget-object v4, v5, Lacr;->c:Labx;

    iput-object p2, v4, Labx;->d:Ljava/lang/String;

    .line 2345
    iget-object v4, v5, Lacr;->c:Labx;

    invoke-virtual {v5, v4}, Lacr;->a(Labx;)V

    .line 2346
    invoke-virtual {v5}, Lacr;->p()V

    .line 2347
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v6

    .line 2349
    new-instance v7, Lacr$3;

    invoke-direct {v7, v5, v4, p3}, Lacr$3;-><init>(Lacr;Ljava/lang/String;Lcma;)V

    invoke-interface {v6, v8, v7}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v4, v7

    .line 2337
    goto :goto_3

    .line 207
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 213
    .end local v3    # "isDingtalkMail":Z
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    .restart local v3    # "isDingtalkMail":Z
    :cond_d
    move-object v4, p2

    goto :goto_2
.end method

.method static synthetic b(Laco;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Laco;

    .prologue
    .line 28
    iget-object v0, p0, Laco;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(ZLcma;)Lxv;
    .locals 1
    .param p1, "fromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/contact/model/UserSelfContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Laco$1;

    invoke-direct {v0, p0, p2, p1}, Laco$1;-><init>(Laco;Lcma;Z)V

    .line 140
    .local v0, "sdkListener":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    return-object v0
.end method
