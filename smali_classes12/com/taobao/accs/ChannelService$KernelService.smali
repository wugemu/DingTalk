.class public Lcom/taobao/accs/ChannelService$KernelService;
.super Landroid/app/Service;
.source "ChannelService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ChannelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelService"
.end annotation


# static fields
.field private static a:Lcom/taobao/accs/ChannelService$KernelService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    sput-object p0, Lcom/taobao/accs/ChannelService$KernelService;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/taobao/accs/ChannelService$KernelService;->a:Lcom/taobao/accs/ChannelService$KernelService;

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 155
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ChannelService"

    const-string/jumbo v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/ChannelService;->getInstance()Lcom/taobao/accs/ChannelService;

    move-result-object v3

    .line 123
    .local v3, "realService":Lcom/taobao/accs/ChannelService;
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService$KernelService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService$KernelService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 125
    .local v2, "icon":I
    if-eqz v2, :cond_0

    .line 126
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 129
    const/16 v4, 0x249b

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/ChannelService;->startForeground(ILandroid/app/Notification;)V

    .line 131
    new-instance v0, Landroid/app/Notification$Builder;

    .end local v0    # "builder":Landroid/app/Notification$Builder;
    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 134
    const/16 v4, 0x249b

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/taobao/accs/ChannelService$KernelService;->startForeground(ILandroid/app/Notification;)V

    .line 135
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/taobao/accs/ChannelService$KernelService;->stopForeground(Z)V

    .line 138
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/accs/ChannelService$KernelService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v2    # "icon":I
    .end local v3    # "realService":Lcom/taobao/accs/ChannelService;
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v4

    return v4

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "ChannelService"

    const-string/jumbo v5, " onStartCommand"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
