.class public final Lenc;
.super Ljava/lang/Object;
.source "SearchAPIImpl.java"

# interfaces
.implements Lenb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lenc$a;
    }
.end annotation


# static fields
.field private static a:Lenc;


# instance fields
.field private b:Lenb$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic a(Lenc;Leop;)Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;
    .locals 8
    .param p0, "x0"    # Lenc;
    .param p1, "x1"    # Leop;

    .prologue
    const/4 v7, 0x0

    .line 95
    .line 8431
    new-instance v1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;-><init>()V

    .line 8433
    if-eqz p1, :cond_1

    iget-object v0, p1, Leop;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    .line 8435
    iget-object v0, p1, Leop;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leoo;

    .line 8436
    if-eqz v0, :cond_0

    .line 8439
    invoke-virtual {v0}, Leoo;->a()Lcom/alibaba/wukong/idl/im/models/ConversationModel;

    move-result-object v3

    .line 8440
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    .line 8439
    invoke-static {v3, v4, v5}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromConversationModel(Lcom/alibaba/wukong/idl/im/models/ConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v3

    .line 8441
    if-eqz v3, :cond_0

    .line 8442
    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->conversationList:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;

    iget-object v6, v0, Leoo;->q:Ljava/lang/String;

    iget-object v0, v0, Leoo;->r:Ljava/lang/Integer;

    invoke-direct {v5, v3, v6, v0}, Lcom/alibaba/android/search/model/idl/objects/ConversationWrapper;-><init>(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8446
    :cond_1
    iget-object v0, p1, Leop;->b:Ljava/lang/Integer;

    .line 9033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 8446
    iput v0, v1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->totalCount:I

    .line 8447
    iget-object v0, p1, Leop;->c:Ljava/lang/Integer;

    .line 10033
    invoke-static {v0, v7}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 8447
    iput v0, v1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->nextCursor:I

    .line 8448
    iget-object v0, p1, Leop;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;->logMap:Ljava/lang/String;

    .line 95
    return-object v1
.end method

.method public static declared-synchronized b()Lenb;
    .locals 2

    .prologue
    .line 107
    const-class v1, Lenc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lenc;->a:Lenc;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lenc;

    invoke-direct {v0}, Lenc;-><init>()V

    sput-object v0, Lenc;->a:Lenc;

    .line 111
    :cond_0
    sget-object v0, Lenc;->a:Lenc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 2

    .prologue
    .line 593
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 594
    .local v0, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 595
    const-string/jumbo v1, "search.robot"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 596
    return-object v0
.end method


# virtual methods
.method public final a(IJLjava/lang/String;JILcma;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "uid"    # J
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "cursor"    # J
    .param p7, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "JI",
            "Lcma",
            "<",
            "Lchr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p8, "listener":Lcma;, "Lcma<Lchr;>;"
    new-instance v6, Lenc$1;

    invoke-direct {v6, p0, p8}, Lenc$1;-><init>(Lenc;Lcma;)V

    .line 138
    .local v6, "handler":Lcmg;, "Lcmg<Lcfv;Lchr;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 139
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p4, :cond_0

    .line 140
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 142
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/SearchIService;->search(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;>;"
    new-instance v0, Lenc$29;

    invoke-direct {v0, p0, p3}, Lenc$29;-><init>(Lenc;Lcma;)V

    .line 1059
    .local v0, "handler":Lcmg;, "Lcmg<Leos;Lcom/alibaba/android/search/model/idl/objects/OrgRightsInfoObject;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchBossIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchBossIService;

    .line 1060
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchBossIService;
    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 1061
    :cond_0
    const-string/jumbo v2, "getOrgRightsInfo"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    :goto_0
    return-void

    .line 1068
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/search/api/idl/SearchBossIService;->getOrgRightsInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;Lcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "query"    # Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p4, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v0, Lenc$6;

    invoke-direct {v0, p0, p4}, Lenc$6;-><init>(Lenc;Lcma;)V

    .line 486
    .local v0, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/ExternalContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/ExternalContactIService;

    .line 487
    .local v1, "service":Lcom/alibaba/android/search/api/idl/ExternalContactIService;
    if-eqz p3, :cond_0

    if-nez v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-static {p3}, Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/ContactQueryObject;)Lcdc;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/alibaba/android/search/api/idl/ExternalContactIService;->listContacts(JLcdc;Liyv;)V

    goto :goto_0
.end method

.method public final a(JZLcma;)V
    .locals 5
    .param p1, "baseTime"    # J
    .param p3, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p4, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;>;"
    new-instance v0, Lenc$11;

    invoke-direct {v0, p0, p4}, Lenc$11;-><init>(Lenc;Lcma;)V

    .line 641
    .local v0, "handlerExt":Lcmg;, "Lcmg<Leox;Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 642
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-nez v1, :cond_0

    .line 643
    const-string/jumbo v2, "getUserIntimacyPushModelData"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->getUserIntimacyPushModelData(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 673
    .local p1, "callback":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;>;"
    new-instance v0, Lenc$a;

    invoke-direct {v0, p1}, Lenc$a;-><init>(Lcma;)V

    .line 4291
    iget-object v1, v0, Lenc$a;->f:Lcma;

    if-eqz v1, :cond_0

    .line 4294
    invoke-virtual {v0}, Lenc$a;->a()V

    .line 674
    :cond_0
    return-void
.end method

.method public final a(Lenb$a;)V
    .locals 0
    .param p1, "provider"    # Lenb$a;

    .prologue
    .line 1126
    iput-object p1, p0, Lenc;->b:Lenb$a;

    .line 1127
    return-void
.end method

.method public final a(Lepw;Lcma;)V
    .locals 6
    .param p1, "searchMessageParamObject"    # Lepw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepw;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1349
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    if-nez p2, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1353
    :cond_0
    if-nez p1, :cond_1

    .line 1354
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1358
    :cond_1
    new-instance v0, Lenc$37;

    invoke-direct {v0, p0, p2}, Lenc$37;-><init>(Lenc;Lcma;)V

    .line 1365
    .local v0, "handler":Lcmg;, "Lcmg<Leoq;Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 8092
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    new-instance v2, Lepc;

    invoke-direct {v2}, Lepc;-><init>()V

    .line 8093
    iget-object v3, p1, Lepw;->a:Ljava/lang/String;

    iput-object v3, v2, Lepc;->a:Ljava/lang/String;

    .line 8094
    iget-object v3, p1, Lepw;->b:Ljava/util/List;

    iput-object v3, v2, Lepc;->b:Ljava/util/List;

    .line 8095
    const/4 v3, 0x0

    iput-object v3, v2, Lepc;->c:Ljava/util/List;

    .line 8096
    iget-object v3, p1, Lepw;->c:Ljava/util/List;

    iput-object v3, v2, Lepc;->d:Ljava/util/List;

    .line 8097
    iget-wide v4, p1, Lepw;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lepc;->e:Ljava/lang/Long;

    .line 8098
    iget-wide v4, p1, Lepw;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lepc;->f:Ljava/lang/Long;

    .line 8099
    iget-object v3, p1, Lepw;->f:Ljava/lang/String;

    iput-object v3, v2, Lepc;->g:Ljava/lang/String;

    .line 8100
    iget-object v3, p1, Lepw;->g:Ljava/lang/String;

    iput-object v3, v2, Lepc;->h:Ljava/lang/String;

    .line 8101
    iget v3, p1, Lepw;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lepc;->i:Ljava/lang/Integer;

    .line 8102
    iget v3, p1, Lepw;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lepc;->j:Ljava/lang/Integer;

    .line 8103
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lepc;->k:Ljava/lang/Boolean;

    .line 8104
    iget-object v3, p1, Lepw;->j:Ljava/util/List;

    iput-object v3, v2, Lepc;->l:Ljava/util/List;

    .line 1366
    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchHistoryMessage(Lepc;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILcma;)V
    .locals 4
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 454
    .local p4, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v0, Lenc$5;

    invoke-direct {v0, p0, p4}, Lenc$5;-><init>(Lenc;Lcma;)V

    .line 464
    .local v0, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/ExternalContactIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/ExternalContactIService;

    .line 465
    .local v1, "service":Lcom/alibaba/android/search/api/idl/ExternalContactIService;
    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 468
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_2

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/search/api/idl/ExternalContactIService;->multiSearchContacts(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "model"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v6, Lenc$39;

    invoke-direct {v6, p0, p5}, Lenc$39;-><init>(Lenc;Lcma;)V

    .line 308
    .local v6, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 309
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 312
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    const-string/jumbo v1, "-1"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;

    move-result-object v5

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/SearchIService;->multiSearchV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcdn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIILcma;)V
    .locals 10
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "industryCode"    # I
    .param p3, "province"    # Ljava/lang/String;
    .param p4, "city"    # Ljava/lang/String;
    .param p5, "sort"    # I
    .param p6, "offset"    # I
    .param p7, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Lcma",
            "<",
            "Lepq;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 786
    .local p8, "apiEventListener":Lcma;, "Lcma<Lepq;>;"
    new-instance v9, Lenc$15;

    move-object/from16 v0, p8

    invoke-direct {v9, p0, v0}, Lenc$15;-><init>(Lenc;Lcma;)V

    .line 792
    .local v9, "handler":Lcmg;, "Lcmg<Leoi;Lepq;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 793
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p1, :cond_0

    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 796
    :cond_0
    if-eqz v1, :cond_1

    if-ltz p6, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    :cond_1
    const-string/jumbo v2, "searchChannelSquare"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    if-eqz p8, :cond_2

    .line 799
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :cond_2
    :goto_0
    return-void

    .line 803
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, p1

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchChannelSquare(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JIILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcma;)V
    .locals 8
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "oid"    # J
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .param p6, "filter"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JII",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v6, Lenc$31;

    invoke-direct {v6, p0, p7}, Lenc$31;-><init>(Lenc;Lcma;)V

    .line 209
    .local v6, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/ContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/ContactIService;

    .line 210
    .local v0, "service":Lcom/alibaba/android/search/api/idl/ContactIService;
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 213
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 214
    :cond_1
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "keyWord :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3033
    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p6}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)Lcdn;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/ContactIService;->searchList(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcdn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JILcma;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p5, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lenc$10;

    invoke-direct {v0, p0, p5}, Lenc$10;-><init>(Lenc;Lcma;)V

    .line 619
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 620
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 623
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    if-gtz p4, :cond_3

    .line 624
    :cond_1
    const-string/jumbo v2, "externalOrgNameQp"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    if-eqz p5, :cond_2

    .line 626
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_2
    :goto_0
    return-void

    .line 630
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->externalOrgNameQp(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILcma;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 386
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    new-instance v5, Lenc$3;

    invoke-direct {v5, p0, p5}, Lenc$3;-><init>(Lenc;Lcma;)V

    .line 395
    .local v5, "handler":Lcmg;, "Lcmg<Leop;Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 396
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 397
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 399
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    new-instance v6, Lhzx;

    invoke-direct {v6}, Lhzx;-><init>()V

    .line 404
    .local v6, "filter":Lhzx;
    const-wide/16 v2, 0x3e8

    .line 3043
    iput-wide v2, v6, Lhzx;->a:J

    .line 405
    invoke-virtual {v5, v6}, Lcmg;->addBeforeFiler(Liyt;)V

    .line 406
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchIntimacyConversation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILcmb;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 276
    .local p5, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v5, Lenc$38;

    const-wide/16 v2, 0x7d0

    invoke-direct {v5, p0, p5, v2, v3}, Lenc$38;-><init>(Lenc;Lcmb;J)V

    .line 286
    .local v5, "handler":Lcmf;, "Lcmf<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 287
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 290
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->multiSearchV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JIILcma;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "oid"    # J
    .param p5, "offset"    # I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p7, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v6, Lenc$21;

    invoke-direct {v6, p0, p7}, Lenc$21;-><init>(Lenc;Lcma;)V

    .line 186
    .local v6, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 187
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 190
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 191
    :cond_1
    const-string/jumbo v1, "err_parameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "oid is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "keyWord :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2033
    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/SearchIService;->orgSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcma;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "orgName"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "offset"    # Ljava/lang/String;
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lepr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p7, "apiEventListener":Lcma;, "Lcma<Lepr;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 812
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gtz p6, :cond_2

    .line 813
    :cond_0
    const-string/jumbo v1, "searchExternalByOrg"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    if-eqz p7, :cond_1

    .line 815
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p7, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_1
    :goto_0
    return-void

    .line 821
    :cond_2
    new-instance v6, Lenc$16;

    invoke-direct {v6, p0, p7}, Lenc$16;-><init>(Lenc;Lcma;)V

    .line 834
    .local v6, "handler":Lcmg;, "Lcmg<Leol;Lepr;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchExternalByOrg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcmb;)V
    .locals 11
    .param p1, "uuId"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "offset"    # Ljava/lang/String;
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p7, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const/16 v7, 0x64

    invoke-static {}, Lenc;->c()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lenc;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    .line 590
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V
    .locals 13
    .param p1, "uuId"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "offset"    # Ljava/lang/String;
    .param p6, "size"    # I
    .param p7, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p8, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v2, Lenc$9;

    move-object v3, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lenc$9;-><init>(Lenc;Lcmb;Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    new-instance v11, Lenc$8;

    const-wide/16 v4, 0x7d0

    invoke-direct {v11, p0, v2, v4, v5}, Lenc$8;-><init>(Lenc;Lcmb;J)V

    .line 3526
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 3527
    if-eqz p2, :cond_3

    .line 3528
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3530
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    if-nez p7, :cond_1

    .line 3531
    :cond_0
    :goto_1
    return-void

    .line 3535
    :cond_1
    if-eqz p7, :cond_2

    const-string/jumbo v2, "sys.recommend.visible"

    move-object/from16 v0, p7

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3536
    new-instance v2, Lhzx;

    invoke-direct {v2}, Lhzx;-><init>()V

    .line 3537
    const-wide/16 v6, 0x3e8

    .line 4043
    iput-wide v6, v2, Lhzx;->a:J

    .line 3538
    invoke-virtual {v11, v2}, Lcmf;->addBeforeFiler(Liyt;)V

    .line 3540
    :cond_2
    invoke-virtual/range {p7 .. p7}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->toIdl()Lcdn;

    move-result-object v10

    move-object v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/android/search/api/idl/SearchIService;->contactSearchUnion(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcdn;Liyv;)V

    goto :goto_1

    :cond_3
    move-object v5, p2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 918
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    new-instance v0, Lenc$20;

    invoke-direct {v0, p0, p3}, Lenc$20;-><init>(Lenc;Lcma;)V

    .line 924
    .local v0, "handler":Lcmg;, "Lcmg<Lccf;Lccm;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 925
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 926
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 928
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 929
    :cond_1
    const-string/jumbo v2, "searchOrgByNameForRegister"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lenc$22;

    invoke-direct {v3, p0, p3}, Lenc$22;-><init>(Lenc;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 942
    :goto_0
    return-void

    .line 941
    :cond_2
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchOrgByNameForRegister(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Leqa;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 868
    .local p5, "apiEventListener":Lcma;, "Lcma<Leqa;>;"
    new-instance v5, Lenc$18;

    invoke-direct {v5, p0, p5}, Lenc$18;-><init>(Lenc;Lcma;)V

    .line 874
    .local v5, "handler":Lcmg;, "Lcmg<Lepg;Leqa;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 875
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 876
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 878
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 879
    :cond_1
    const-string/jumbo v1, "searchMicroTemplate"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :goto_0
    return-void

    .line 886
    :cond_2
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchMicroTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcmb;)V
    .locals 10
    .param p1, "uuId"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 584
    .local p5, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-wide/16 v4, -0x1

    const/16 v7, 0x64

    invoke-static {}, Lenc;->c()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lenc;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcmb;)V

    .line 585
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Lcma;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "size"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Lepy;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 753
    .local p3, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "apiEventListener":Lcma;, "Lcma<Lepy;>;"
    new-instance v6, Lenc$14;

    invoke-direct {v6, p0, p6}, Lenc$14;-><init>(Lenc;Lcma;)V

    .line 759
    .local v6, "handler":Lcmg;, "Lcmg<Lepe;Lepy;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 760
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 761
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 763
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_3

    .line 764
    :cond_1
    const-string/jumbo v1, "searchMicroAppWithType"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    if-eqz p6, :cond_2

    .line 766
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 771
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchMicroAppWithType(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Ljava/lang/String;IILcmb;)V
    .locals 16
    .param p1, "uuid"    # Ljava/lang/String;
    .param p4, "startTime"    # J
    .param p6, "endTime"    # J
    .param p8, "keyword"    # Ljava/lang/String;
    .param p9, "offset"    # Ljava/lang/String;
    .param p10, "size"    # I
    .param p11, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 679
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p12, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    new-instance v13, Lenc$13;

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v13, v0, v1, v4, v5}, Lenc$13;-><init>(Lenc;Lcmb;J)V

    .line 686
    .local v13, "handler":Lcmf;, "Lcmf<Leoq;Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    const-class v3, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 687
    .local v2, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p8, :cond_0

    .line 688
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    .line 692
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 693
    if-nez v2, :cond_2

    .line 694
    const-string/jumbo v3, "searchMessage service = null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-nez v3, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-nez v3, :cond_5

    invoke-static/range {p3 .. p3}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static/range {p2 .. p2}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 699
    if-eqz p12, :cond_1

    .line 700
    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lemt$g;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p12

    invoke-interface {v0, v3, v4}, Lcmb;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_3
    if-eqz v2, :cond_4

    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-gtz p10, :cond_5

    .line 706
    :cond_4
    const-string/jumbo v3, "searchMessage"

    const/4 v4, 0x0

    const-string/jumbo v5, "invalid data"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    if-eqz p12, :cond_1

    .line 708
    const-string/jumbo v3, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lemt$g;->unknown_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p12

    invoke-interface {v0, v3, v4}, Lcmb;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5118
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lenc;->b:Lenb$a;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lenc;->b:Lenb$a;

    invoke-interface {v3}, Lenb$a;->b()Z

    move-result v3

    if-nez v3, :cond_8

    .line 716
    :cond_6
    :goto_1
    sget-object v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->UnMerged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->getValue()I

    move-result v3

    move/from16 v0, p11

    if-ne v0, v3, :cond_7

    .line 717
    new-instance v14, Lhzx;

    invoke-direct {v14}, Lhzx;-><init>()V

    .line 718
    .local v14, "filter":Lhzx;
    const-wide/16 v4, 0x2710

    .line 7043
    iput-wide v4, v14, Lhzx;->a:J

    .line 719
    invoke-virtual {v13, v14}, Lcmf;->addBeforeFiler(Liyt;)V

    .line 722
    .end local v14    # "filter":Lhzx;
    :cond_7
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v2 .. v13}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchMessageEx(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V

    goto/16 :goto_0

    .line 5122
    :cond_8
    new-instance v3, Lhzx;

    invoke-direct {v3}, Lhzx;-><init>()V

    .line 5123
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, p0

    iget-object v5, v0, Lenc;->b:Lenb$a;

    invoke-interface {v5}, Lenb$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lhzx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5124
    const-string/jumbo v4, "debug"

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v4, v5}, Lhzx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    invoke-virtual {v13, v3}, Lcmi;->addBeforeFiler(Liyt;)V

    .line 5126
    const-string/jumbo v3, "debug searching"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 6050
    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushUserObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1159
    .local p1, "userVersions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    new-instance v0, Lenc$34;

    invoke-direct {v0, p0, p2}, Lenc$34;-><init>(Lenc;Lcma;)V

    .line 1173
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Leow;>;Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushUserObject;>;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1174
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1175
    :cond_0
    const-string/jumbo v2, "getNewUserIntimacyPushModelData"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    if-eqz p2, :cond_1

    .line 1177
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_1
    :goto_0
    return-void

    .line 1182
    :cond_2
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->getNewUserIntimacyPushModelData(Ljava/util/Map;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "log":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    .line 1100
    invoke-virtual {p0}, Lenc;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1104
    :cond_0
    new-instance v0, Lenc$32;

    invoke-direct {v0, p0, v4}, Lenc$32;-><init>(Lenc;Lcma;)V

    .line 1110
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1111
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-nez v1, :cond_1

    .line 1112
    const-string/jumbo v2, "addDebugLog"

    const-string/jumbo v3, "invalid data"

    invoke-static {v2, v4, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1119
    :cond_1
    const-string/jumbo v2, "uuid"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string/jumbo v2, "receiver"

    iget-object v3, p0, Lenc;->b:Lenb$a;

    invoke-interface {v3}, Lenb$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->addDebugLog(Ljava/util/Map;Liyv;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lenc;->b:Lenb$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lenc;->b:Lenb$a;

    invoke-interface {v0}, Lenb$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(JZLcma;)V
    .locals 5
    .param p1, "baseTime"    # J
    .param p3, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p4, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;>;"
    new-instance v0, Lenc$12;

    invoke-direct {v0, p0, p4}, Lenc$12;-><init>(Lenc;Lcma;)V

    .line 660
    .local v0, "handlerExt":Lcmg;, "Lcmg<Leov;Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 661
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-nez v1, :cond_0

    .line 662
    const-string/jumbo v2, "getGroupIntimacyPushModelData"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lemt$g;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_0
    return-void

    .line 668
    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->getGroupIntimacyPushModelData(Ljava/lang/Long;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    new-instance v5, Lenc$4;

    invoke-direct {v5, p0, p5}, Lenc$4;-><init>(Lenc;Lcma;)V

    .line 420
    .local v5, "handler":Lcmg;, "Lcmg<Leop;Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 421
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 424
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchPublicEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IILcmb;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    .local p5, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    new-instance v5, Lenc$2;

    const-wide/16 v2, 0x7d0

    invoke-direct {v5, p0, p5, v2, v3}, Lenc$2;-><init>(Lenc;Lcmb;J)V

    .line 373
    .local v5, "handler":Lcmf;, "Lcmf<Leop;Lcom/alibaba/android/search/model/idl/objects/ConversationSearchObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 374
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 375
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 377
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchConversationEX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;JIILcma;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "orgName"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "offset"    # I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p7, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 844
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz v0, :cond_0

    if-ltz p5, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    :cond_0
    const-string/jumbo v1, "externalSearchContactsByOrg"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p7, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_0
    return-void

    .line 852
    :cond_1
    new-instance v6, Lenc$17;

    invoke-direct {v6, p0, p7}, Lenc$17;-><init>(Lenc;Lcma;)V

    .line 860
    .local v6, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/search/api/idl/SearchIService;->externalSearchContactsByOrg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 949
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    new-instance v0, Lenc$23;

    invoke-direct {v0, p0, p3}, Lenc$23;-><init>(Lenc;Lcma;)V

    .line 955
    .local v0, "handler":Lcmg;, "Lcmg<Lccf;Lccm;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 956
    .local v1, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 957
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 959
    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 960
    :cond_1
    const-string/jumbo v2, "searchOrgByNameForCreate"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lenc$24;

    invoke-direct {v3, p0, p3}, Lenc$24;-><init>(Lenc;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 973
    :goto_0
    return-void

    .line 972
    :cond_2
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchOrgByNameForCreate(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lepv;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 891
    .local p5, "callback":Lcma;, "Lcma<Lepv;>;"
    new-instance v5, Lenc$19;

    invoke-direct {v5, p0, p5}, Lenc$19;-><init>(Lenc;Lcma;)V

    .line 897
    .local v5, "handler":Lcmg;, "Lcmg<Lepa;Lepv;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 898
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 899
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 901
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    :cond_1
    const-string/jumbo v1, "searchMicroTemplate"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    if-eqz p5, :cond_2

    .line 904
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    :cond_2
    :goto_0
    return-void

    .line 909
    :cond_3
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;IILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 497
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    new-instance v5, Lenc$7;

    invoke-direct {v5, p0, p5}, Lenc$7;-><init>(Lenc;Lcma;)V

    .line 507
    .local v5, "handler":Lcmg;, "Lcmg<Lcfd;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 508
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 509
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 511
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 514
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->externalMultiSearchContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lccm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 980
    .local p3, "apiEventListener":Lcma;, "Lcma<Lccm;>;"
    new-instance v0, Lenc$25;

    invoke-direct {v0, p0, p3}, Lenc$25;-><init>(Lenc;Lcma;)V

    .line 987
    .local v0, "handler":Lcmg;, "Lcmg<Lccf;Lccm;>;"
    const-class v2, Lcom/alibaba/android/search/api/idl/RECRCommonIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/RECRCommonIService;

    .line 989
    .local v1, "service":Lcom/alibaba/android/search/api/idl/RECRCommonIService;
    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 990
    :cond_0
    const-string/jumbo v2, "searchSchoolByNameForRegister"

    const/4 v3, 0x0

    const-string/jumbo v4, "invalid data"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lenc$26;

    invoke-direct {v3, p0, p3}, Lenc$26;-><init>(Lenc;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1003
    :goto_0
    return-void

    .line 1002
    :cond_1
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/search/api/idl/RECRCommonIService;->searchSchoolByNameForRegister(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1136
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;>;"
    new-instance v5, Lenc$33;

    invoke-direct {v5, p0, p5}, Lenc$33;-><init>(Lenc;Lcma;)V

    .line 1142
    .local v5, "handler":Lcmg;, "Lcmg<Lepj;Lcom/alibaba/android/search/model/idl/objects/NewRetailMemberObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1143
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 1144
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1146
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1147
    :cond_1
    const-string/jumbo v1, "searchNewRetailMember"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    if-eqz p5, :cond_2

    .line 1149
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_2
    :goto_0
    return-void

    .line 1154
    :cond_3
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchMember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;IILcma;)V
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1073
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;>;"
    new-instance v5, Lenc$30;

    invoke-direct {v5, p0, p5}, Lenc$30;-><init>(Lenc;Lcma;)V

    .line 1079
    .local v5, "handler":Lcmg;, "Lcmg<Lcgl;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1080
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 1081
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1083
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1084
    :cond_1
    const-string/jumbo v1, "searchFriend"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :goto_0
    return-void

    .line 1091
    :cond_2
    new-instance v6, Lhzx;

    invoke-direct {v6}, Lhzx;-><init>()V

    .line 1092
    .local v6, "filter":Lhzx;
    const-wide/16 v2, 0x7d0

    .line 8043
    iput-wide v2, v6, Lhzx;->a:J

    .line 1093
    invoke-virtual {v5, v6}, Lcmg;->addBeforeFiler(Liyt;)V

    .line 1095
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchFriend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1010
    .local p3, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    const-string/jumbo v1, "searchProfessionByNameForRegister"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid query"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lenc$27;

    invoke-direct {v2, p0, p3}, Lenc$27;-><init>(Lenc;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1029
    :goto_0
    return-void

    .line 1022
    :cond_0
    new-instance v0, Lenc$28;

    invoke-direct {v0, p0, p3}, Lenc$28;-><init>(Lenc;Lcma;)V

    .line 1028
    .local v0, "handler":Lcmg;, "Lcmg<Lcch;Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionResultObject;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/RECRCommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/api/idl/RECRCommonIService;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/search/api/idl/RECRCommonIService;->searchProfessionByNameForRegister(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1187
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;>;"
    new-instance v5, Lenc$35;

    invoke-direct {v5, p0, p5}, Lenc$35;-><init>(Lenc;Lcma;)V

    .line 1193
    .local v5, "handler":Lcmg;, "Lcmg<Leok;Lcom/alibaba/android/search/model/idl/objects/DeptSearchObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1194
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 1195
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1197
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1198
    :cond_1
    const-string/jumbo v1, "searchDept"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :goto_0
    return-void

    .line 1205
    :cond_2
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchDept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1324
    .local p5, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;>;"
    new-instance v5, Lenc$36;

    invoke-direct {v5, p0, p5}, Lenc$36;-><init>(Lenc;Lcma;)V

    .line 1332
    .local v5, "handler":Lcmg;, "Lcmg<Lepl;Lcom/alibaba/android/search/model/idl/objects/SuggestionGuideObjectList;>;"
    const-class v1, Lcom/alibaba/android/search/api/idl/SearchIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/api/idl/SearchIService;

    .line 1333
    .local v0, "service":Lcom/alibaba/android/search/api/idl/SearchIService;
    if-eqz p2, :cond_0

    .line 1334
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1336
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1337
    :cond_1
    const-string/jumbo v1, "searchSuggestionGuide"

    const/4 v2, 0x0

    const-string/jumbo v3, "invalid data"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v1, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lemt$g;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    :goto_0
    return-void

    .line 1344
    :cond_2
    const/16 v4, 0x14

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/search/api/idl/SearchIService;->searchSuggestionGuide(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILiyv;)V

    goto :goto_0
.end method
