.class public final Lgwc;
.super Ljava/lang/Object;
.source "ShareAPIImpl.java"

# interfaces
.implements Lgwb;


# static fields
.field private static a:Lgwc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lgwb;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lgwc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgwc;->a:Lgwc;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lgwc;

    invoke-direct {v0}, Lgwc;-><init>()V

    sput-object v0, Lgwc;->a:Lgwc;

    .line 26
    :cond_0
    sget-object v0, Lgwc;->a:Lgwc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgwo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "callback":Lcma;, "Lcma<Lgwo;>;"
    const/4 v4, 0x0

    .line 35
    new-instance v0, Lgwc$1;

    invoke-direct {v0, p0, p2}, Lgwc$1;-><init>(Lgwc;Lcma;)V

    .line 36
    .local v0, "handler":Lcme;, "Lcme<Lgwo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "url is null"

    .line 1036
    invoke-virtual {v0, v2, v3, v4}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :goto_0
    return-void

    .line 40
    :cond_0
    const-class v2, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;

    .line 41
    .local v1, "service":Lcom/alibaba/dingtalk/share/share/idl/ShareIService;
    if-nez v1, :cond_1

    .line 42
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 2036
    invoke-virtual {v0, v2, v3, v4}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;->parseUrl(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/Integer;
    .param p5, "shareModel"    # Lgwo;
    .param p6, "ext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lgwo;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgwn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    .local p7, "callback":Lcma;, "Lcma<Lgwn;>;"
    new-instance v7, Lgwc$3;

    invoke-direct {v7, p0, p7}, Lgwc$3;-><init>(Lgwc;Lcma;)V

    .line 68
    .local v7, "handler":Lcme;, "Lcme<Lgwn;>;"
    const-class v1, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;

    .line 69
    .local v0, "service":Lcom/alibaba/dingtalk/share/share/idl/ShareIService;
    if-nez v0, :cond_0

    .line 70
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "service is null"

    .line 5036
    const/4 v3, 0x0

    invoke-virtual {v7, v1, v2, v3}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 73
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;->checkShareApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgwo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "callback":Lcma;, "Lcma<Lgwo;>;"
    const/4 v4, 0x0

    .line 50
    new-instance v0, Lgwc$2;

    invoke-direct {v0, p0, p2}, Lgwc$2;-><init>(Lgwc;Lcma;)V

    .line 51
    .local v0, "handler":Lcme;, "Lcme<Lgwo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "url is null"

    .line 3036
    invoke-virtual {v0, v2, v3, v4}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    const-class v2, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;

    .line 56
    .local v1, "service":Lcom/alibaba/dingtalk/share/share/idl/ShareIService;
    if-nez v1, :cond_1

    .line 57
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 4036
    invoke-virtual {v0, v2, v3, v4}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v1, p1, v0}, Lcom/alibaba/dingtalk/share/share/idl/ShareIService;->parseUrlFilter(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
