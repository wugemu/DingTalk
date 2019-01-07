.class public final Lfwv;
.super Ljava/lang/Object;
.source "BlacklistBizService.java"


# static fields
.field private static b:Lfwv;


# instance fields
.field public a:Lcom/alibaba/wukong/im/BlacklistListener;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfwv;->c:Ljava/util/Map;

    .line 47
    new-instance v0, Lfwv$1;

    invoke-direct {v0, p0}, Lfwv$1;-><init>(Lfwv;)V

    iput-object v0, p0, Lfwv;->a:Lcom/alibaba/wukong/im/BlacklistListener;

    .line 79
    return-void
.end method

.method public static declared-synchronized a()Lfwv;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lfwv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfwv;->b:Lfwv;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lfwv;

    invoke-direct {v0}, Lfwv;-><init>()V

    sput-object v0, Lfwv;->b:Lfwv;

    .line 75
    :cond_0
    sget-object v0, Lfwv;->b:Lfwv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lfwv;JZ)V
    .locals 3
    .param p0, "x0"    # Lfwv;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 38
    .line 1298
    iget-object v0, p0, Lfwv;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Lfwv;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method static synthetic a(Lfwv;Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;)Z
    .locals 1
    .param p0, "x0"    # Lfwv;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    .prologue
    .line 38
    .line 1288
    sget-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BLACKLISTING:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;->BOTH:Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 4
    .param p0, "uid"    # J

    .prologue
    .line 303
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 304
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 305
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 306
    invoke-virtual {v1, p0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 308
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a(JLcma;)V
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/BlacklistService;

    .line 102
    .local v1, "service":Lcom/alibaba/wukong/im/BlacklistService;
    new-instance v0, Lfwv$2;

    invoke-direct {v0, p0, p3}, Lfwv$2;-><init>(Lfwv;Lcma;)V

    .line 147
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Blacklist;>;"
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/im/BlacklistService;->addToBlacklist(JLcom/alibaba/wukong/Callback;)V

    .line 148
    return-void
.end method

.method public final a(J)Z
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 294
    iget-object v0, p0, Lfwv;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Lfwv;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 294
    return v0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 250
    const-class v2, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/BlacklistService;

    .line 251
    .local v1, "service":Lcom/alibaba/wukong/im/BlacklistService;
    new-instance v0, Lfwv$5;

    invoke-direct {v0, p0}, Lfwv$5;-><init>(Lfwv;)V

    .line 282
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Blacklist;>;>;"
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/BlacklistService;->blacklist(IILcom/alibaba/wukong/Callback;)V

    .line 284
    return-void
.end method

.method public final b(JLcma;)V
    .locals 3
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/BlacklistService;

    .line 154
    .local v1, "service":Lcom/alibaba/wukong/im/BlacklistService;
    new-instance v0, Lfwv$3;

    invoke-direct {v0, p0, p3}, Lfwv$3;-><init>(Lfwv;Lcma;)V

    .line 202
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Blacklist;>;"
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/im/BlacklistService;->removeFromBlacklist(JLcom/alibaba/wukong/Callback;)V

    .line 203
    return-void
.end method
