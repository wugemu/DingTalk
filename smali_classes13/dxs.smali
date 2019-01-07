.class public Ldxs;
.super Ljava/lang/Object;
.source "GroupRecommendationApiImpl.java"

# interfaces
.implements Ldxr;


# static fields
.field private static volatile a:Ldxs;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldxr;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Ldxs;->a:Ldxs;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Ldxs;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Ldxs;->a:Ldxs;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ldxs;

    invoke-direct {v0}, Ldxs;-><init>()V

    sput-object v0, Ldxs;->a:Ldxs;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Ldxs;->a:Ldxs;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "listener"    # Lcma;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->unknown_error:I

    .line 46
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {p2, v2, v3}, Ldxs;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 49
    :cond_0
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRecommendationService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRecommendationService;

    .line 50
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRecommendationService;
    if-nez v1, :cond_1

    .line 51
    const-string/jumbo v2, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->unknown_error:I

    .line 52
    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {p2, v2, v3}, Ldxs;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ldxs$1;

    invoke-direct {v0, p0, p2}, Ldxs$1;-><init>(Ldxs;Lcma;)V

    .line 73
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/ConversationModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/GroupRecommendationService;->getSimilarGroups(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
