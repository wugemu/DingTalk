.class public Leny;
.super Ljava/lang/Object;
.source "BaseSearchMiniApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leny$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lhlm;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhlp;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Leny$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "miniAppId"    # Ljava/lang/String;
    .param p3, "miniAppVersion"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Leny;->d:Ljava/util/Map;

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "bd":Landroid/os/Bundle;
    iput-object p2, p0, Leny;->a:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Leny;->b:Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "appId"

    iget-object v2, p0, Leny;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Leny;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Leny;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;

    move-result-object v1

    iput-object v1, p0, Leny;->c:Lhlm;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "bd":Landroid/os/Bundle;
    const-string/jumbo v1, "appId"

    iget-object v2, p0, Leny;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Leny;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Leny;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->prepareTargetEApp(Landroid/os/Bundle;Lhlo;)V

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "pageId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v2, p0, Leny;->c:Lhlm;

    invoke-interface {v2}, Lhlm;->b()Z

    move-result v0

    .line 43
    .local v0, "enableLaunch":Z
    if-eqz v0, :cond_5

    .line 44
    iget-object v2, p0, Leny;->c:Lhlm;

    invoke-interface {v2, p1}, Lhlm;->b(Ljava/lang/String;)Lhlp;

    move-result-object v1

    .line 45
    .local v1, "page":Lhlp;
    if-eqz v1, :cond_1

    .line 46
    iget-object v2, p0, Leny;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v1}, Lhlp;->b()V

    .line 48
    iget-object v2, p0, Leny;->e:Leny$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leny;->e:Leny$a;

    invoke-interface {v2, v1}, Leny$a;->a(Lhlp;)V

    .line 80
    .end local v1    # "page":Lhlp;
    .end local p1    # "pageId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v1    # "page":Lhlp;
    .restart local p1    # "pageId":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Leny;->e:Leny$a;

    if-eqz v2, :cond_2

    iget-object v2, p0, Leny;->e:Leny$a;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Leny$a;->a(I)V

    .line 52
    :cond_2
    const-string/jumbo v3, "MiniApp page init failed, appId:%s  appVersion:%s  pageId:%s"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Leny;->a:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v2, p0, Leny;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string/jumbo v2, "null"

    :goto_1
    aput-object v2, v4, v5

    const/4 v2, 0x2

    if-nez p1, :cond_3

    const-string/jumbo p1, "null"

    .end local p1    # "pageId":Ljava/lang/String;
    :cond_3
    aput-object p1, v4, v2

    .line 1050
    const-string/jumbo v2, "search"

    invoke-static {v2, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    .restart local p1    # "pageId":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Leny;->b:Ljava/lang/String;

    goto :goto_1

    .line 56
    .end local v1    # "page":Lhlp;
    :cond_5
    iget-object v2, p0, Leny;->c:Lhlm;

    new-instance v3, Leny$1;

    invoke-direct {v3, p0, p1}, Leny$1;-><init>(Leny;Ljava/lang/String;)V

    invoke-interface {v2, p1, v3}, Lhlm;->a(Ljava/lang/String;Lhln;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v1, p0, Leny;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlp;

    .line 84
    .local v0, "page":Lhlp;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhlp;->c()V

    goto :goto_0

    .line 86
    .end local v0    # "page":Lhlp;
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    iget-object v1, p0, Leny;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlp;

    .line 90
    .local v0, "page":Lhlp;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhlp;->d()V

    goto :goto_0

    .line 92
    .end local v0    # "page":Lhlp;
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v1, p0, Leny;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlp;

    .line 96
    .local v0, "page":Lhlp;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhlp;->e()V

    goto :goto_0

    .line 98
    .end local v0    # "page":Lhlp;
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Leny;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlp;

    .line 102
    .local v0, "page":Lhlp;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhlp;->f()V

    goto :goto_0

    .line 104
    .end local v0    # "page":Lhlp;
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v1, p0, Leny;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhlp;

    .line 108
    .local v0, "page":Lhlp;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhlp;->g()V

    goto :goto_0

    .line 110
    .end local v0    # "page":Lhlp;
    :cond_1
    return-void
.end method
