.class public Lcom/laiwang/protocol/android/LWPService$KernelService;
.super Landroid/app/Service;
.source "LWPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/LWPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    :try_start_0
    invoke-static {}, Lcom/laiwang/protocol/android/LWPService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService$KernelService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/android/LWPService;->access$200(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    .line 289
    .local v1, "notification":Landroid/app/Notification;
    const v2, 0xa804

    invoke-virtual {p0, v2, v1}, Lcom/laiwang/protocol/android/LWPService$KernelService;->startForeground(ILandroid/app/Notification;)V

    .line 290
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/laiwang/protocol/android/LWPService$KernelService;->stopForeground(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/LWPService$KernelService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "Set foreground & stop kernel service"

    invoke-static {v2, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
