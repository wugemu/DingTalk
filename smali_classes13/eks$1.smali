.class final Leks$1;
.super Ljava/lang/Object;
.source "DocLensProxyImpl.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leks;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Leks;


# direct methods
.method constructor <init>(Leks;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Leks;

    .prologue
    .line 61
    iput-object p1, p0, Leks$1;->c:Leks;

    iput-object p2, p0, Leks$1;->a:Ljava/lang/String;

    iput-object p3, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    .local v0, "top":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Leks$1;->c:Leks;

    const v2, 0x7f091db1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1048
    invoke-virtual {v1, v0, v2}, Leks;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Leks$1;->c:Leks;

    invoke-static {v0}, Leks;->a(Leks;)V

    .line 84
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "DocLensProxyImpl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkDynamicSo exception : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " msg : "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Void;

    .line 1093
    iget-object v0, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 61
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 61
    check-cast p1, Ljava/lang/Void;

    .line 2073
    iget-object v0, p0, Leks$1;->c:Leks;

    invoke-static {v0}, Leks;->a(Leks;)V

    .line 2074
    iget-object v0, p0, Leks$1;->c:Leks;

    iget-object v1, p0, Leks$1;->a:Ljava/lang/String;

    .line 3101
    sget-boolean v0, Leks;->a:Z

    if-nez v0, :cond_0

    .line 3103
    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3104
    const/4 v0, 0x1

    sput-boolean v0, Leks;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    :cond_0
    :goto_0
    iget-object v0, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 2076
    iget-object v0, p0, Leks$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 61
    :cond_1
    return-void

    .line 3105
    :catch_0
    move-exception v0

    .line 3106
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "DocLensProxyImpl"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "load library : "

    aput-object v6, v4, v5

    aput-object v1, v4, v7

    const/4 v1, 0x2

    const-string/jumbo v5, " exception : "

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
