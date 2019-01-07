.class public Lcom/uc/webview/export/cyclone/UCVmsize;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "UCVmsize"


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uc/webview/export/cyclone/UCVmsize;->mCtx:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 20
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCService;->initImpl(Ljava/lang/Class;)Lcom/uc/webview/export/cyclone/service/UCServiceInterface;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/cyclone/UCVmsize;->mCtx:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/uc/webview/export/cyclone/service/UCVmsize;->saveChromiumReservedSpace(Landroid/content/Context;)J

    move-result-wide v0

    .line 24
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "UCVmsize"

    invoke-static {v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveChromiumReservedSpace ok with bytes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v2, v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string/jumbo v1, "w"

    const-string/jumbo v2, "UCVmsize"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    const-string/jumbo v2, "saveChromiumReservedSpace error"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method
