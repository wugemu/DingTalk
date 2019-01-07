.class public Lcom/alibaba/analytics/AnalyticsService;
.super Landroid/app/Service;
.source "AnalyticsService.java"


# instance fields
.field a:Lajt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lajs;

    invoke-virtual {p0}, Lcom/alibaba/analytics/AnalyticsService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lajs;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    invoke-interface {v0}, Lajt;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 29
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/AnalyticsService;->a:Lajt;

    invoke-interface {v0}, Lajt;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 41
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
