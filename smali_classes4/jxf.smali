.class public abstract Ljxf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxf$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Landroid/content/Context;

.field private static c:J

.field private static d:Lcom/xiaomi/mipush/sdk/as;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Ljxf;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Ljxf;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljxq;->a(I)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 6

    .prologue
    .line 0
    .line 51009
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v3, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.xiaomi.mipush.sdk.PushMessageHandler"

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    double-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.mipush.sdk.WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "waker_pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/xmpush/thrift/u;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/u;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->c(I)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->a(I)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->b(I)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/u;->a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/u;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/u;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/xiaomi/xmpush/thrift/w;)V
    .locals 5

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 37000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    .line 0
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Ljvt;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 38000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    .line 39000
    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/c$a;->b:Ljava/lang/String;

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/c;->b()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/xmpush/thrift/aj;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/aj;-><init>()V

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/xmpush/thrift/aj;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v3, v1}, Lcom/xiaomi/xmpush/thrift/aj;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/aj;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/aj;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/aj;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/aj;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v3, p1}, Lcom/xiaomi/xmpush/thrift/aj;->a(Lcom/xiaomi/xmpush/thrift/w;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Ljxq;->a(Lcom/xiaomi/xmpush/thrift/aj;Z)V

    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alias_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/u;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ai;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 40000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    :goto_0
    const-string/jumbo v1, "bar:click"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/ai;->a(Z)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v1, v0, v2, v3, p2}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "do not report clicked message"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/ai;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "do not report clicked message"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    const-string/jumbo v0, "bar:click"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/ai;->a(Z)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/u;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 0
    new-instance v0, Ljxi;

    invoke-direct {v0}, Ljxi;-><init>()V

    .line 1000
    invoke-static {}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljxf;->t(Landroid/content/Context;)V

    :cond_0
    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2000
    iget-object v1, v0, Ljxi;->a:Lcom/xiaomi/push/service/module/PushChannelRegion;

    .line 1000
    sget-object v2, Lcom/xiaomi/push/service/module/PushChannelRegion;->China:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-static {p0}, Lcom/xiaomi/push/service/a;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/service/a;->a(Lcom/xiaomi/push/service/module/PushChannelRegion;)V

    :cond_1
    invoke-static {p0}, Ljxz;->a(Landroid/content/Context;)Ljxz;

    move-result-object v1

    .line 3000
    iput-object v0, v1, Ljxz;->a:Ljxi;

    .line 5000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 6000
    const-string/jumbo v3, "mipush_extra"

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "geo_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5000
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 7000
    invoke-static {p0}, Lkbf;->a(Landroid/content/Context;)Lkbf;

    move-result-object v0

    const-string/jumbo v1, "mipush_extra"

    const-string/jumbo v2, "geo_switch"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lkbf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5000
    invoke-static {p0, v6}, Ljyi;->a(Landroid/content/Context;Z)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljxf;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 1000
    :cond_2
    invoke-static {}, Ljxk;->a()V

    invoke-static {p0}, Ljvd;->a(Landroid/content/Context;)Ljvd;

    move-result-object v0

    new-instance v1, Ljyl;

    invoke-direct {v1, p0, p1, p2}, Ljyl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8000
    invoke-virtual {v0, v1, v6}, Ljvd;->a(Ljava/lang/Runnable;I)V

    .line 0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-wide/32 v10, 0x36ee80

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "set-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Ljxf;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    invoke-static {p0}, Ljxj;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v8, v0, :cond_1

    move-object v0, p3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "set-alias"

    move-object v7, v5

    move-wide v8, v2

    move-object v10, v4

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-static {p0, v0}, Ljxj;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unset-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Ljxf;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Don\'t cancel alias for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "set-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Ljxf;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_5

    invoke-static {p0}, Ljxj;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v8, v0, :cond_4

    move-object v0, p3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "set-account"

    move-object v7, v5

    move-wide v8, v2

    move-object v10, v4

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-static {p0, v0}, Ljxj;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "unset-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p2}, Ljxf;->i(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Don\'t cancel account for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, p1, v5, p3}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljxf$a;)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 0
    const-string/jumbo v0, "context"

    invoke-static {p0, v0}, Ljxf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "appID"

    invoke-static {p1, v0}, Ljxf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "appToken"

    invoke-static {p2, v0}, Ljxf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljxf;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Ljxf;->b:Landroid/content/Context;

    :cond_0
    invoke-static {p0}, Ljuq;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9000
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljyj;

    invoke-direct {v1, p0}, Ljyj;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 0
    :cond_1
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 10000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->j:I

    .line 11000
    invoke-static {}, Ljux;->c()I

    move-result v1

    .line 0
    if-eq v0, v1, :cond_3

    move v1, v6

    :goto_0
    if-nez v1, :cond_5

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    .line 12000
    const-string/jumbo v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "last_reg_request"

    const-wide/16 v8, -0x1

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    move v0, v6

    .line 0
    :goto_1
    if-nez v0, :cond_5

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->a()V

    const-string/jumbo v0, "Could not send  register message within 5s repeatly ."

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v7

    goto :goto_0

    :cond_4
    move v0, v7

    .line 12000
    goto :goto_1

    .line 0
    :cond_5
    if-nez v1, :cond_15

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 13000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_15

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->c()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Ljxj;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v6, v0, :cond_12

    const/4 v0, 0x0

    const-string/jumbo v1, "callback"

    invoke-static {v0, v1}, Ljxf;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    :goto_3
    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->a()V

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 15000
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/c;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/channel/commonutils/android/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v6

    .line 0
    :goto_4
    if-eqz v0, :cond_7

    new-instance v0, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ai;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 16000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    const-string/jumbo v1, "client_info_update"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v2, "app_version"

    sget-object v3, Ljxf;->b:Landroid/content/Context;

    sget-object v4, Ljxf;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/channel/commonutils/android/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v2, "app_version_code"

    sget-object v3, Ljxf;->b:Landroid/content/Context;

    sget-object v4, Ljxf;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/channel/commonutils/android/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v2, "push_sdk_vn"

    const-string/jumbo v3, "3_6_2"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v2, "push_sdk_vc"

    const/16 v3, 0x778a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 17000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->g:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/ai;->h:Ljava/util/Map;

    const-string/jumbo v3, "deviceid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/u;)V

    invoke-static {p0}, Ljxk;->a(Landroid/content/Context;)V

    :cond_7
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    const-string/jumbo v1, "update_devId"

    .line 18000
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 0
    if-nez v0, :cond_8

    .line 19000
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljyn;

    invoke-direct {v1}, Ljyn;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 0
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    const-string/jumbo v1, "update_devId"

    .line 20000
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    :cond_8
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    .line 21000
    invoke-static {v0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->c()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_9

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    .line 22000
    const-string/jumbo v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "last_pull_notification"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    move v0, v6

    .line 0
    :goto_5
    if-eqz v0, :cond_9

    new-instance v1, Lcom/xiaomi/xmpush/thrift/ai;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/ai;-><init>()V

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 23000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ai;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    sget-object v0, Lcom/xiaomi/xmpush/thrift/r;->j:Lcom/xiaomi/xmpush/thrift/r;

    iget-object v0, v0, Lcom/xiaomi/xmpush/thrift/r;->W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ai;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ai;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ai;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ai;->a(Z)Lcom/xiaomi/xmpush/thrift/ai;

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    .line 24000
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/u;Z)V

    .line 0
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    .line 25000
    const-string/jumbo v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_pull_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljxv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 0
    :cond_9
    :goto_6
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    .line 30000
    const-string/jumbo v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_reg_request"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljxv;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 31000
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->A:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    const v2, 0x15180

    invoke-virtual {v0, v1, v2}, Lkaq;->a(II)I

    move-result v0

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Ljvd;->a(Landroid/content/Context;)Ljvd;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mipush/sdk/aa;

    sget-object v3, Ljxf;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/xiaomi/mipush/sdk/aa;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v0, v3}, Ljvd;->a(Ljvd$a;II)Z

    .line 32000
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lkcg;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "com.xiaomi.xmsf"

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->ac:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkaq;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Ljuq;->d()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljyg;->a(Landroid/content/Context;Z)V

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->O:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    const/16 v2, 0x384

    invoke-virtual {v0, v1, v2}, Lkaq;->a(II)I

    move-result v0

    const/16 v1, 0x3c

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Ljvd;->a(Landroid/content/Context;)Ljvd;

    move-result-object v1

    new-instance v2, Ljyg;

    sget-object v3, Ljxf;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Ljyg;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2, v0, v0}, Ljvd;->a(Ljvd$a;II)Z

    .line 33000
    :cond_a
    sget-object v0, Lcom/xiaomi/xmpush/thrift/g;->z:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v0}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v0

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v1

    .line 34000
    invoke-static {}, Ljun;->b()Z

    move-result v2

    .line 33000
    invoke-virtual {v1, v0, v2}, Lkaq;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljzj;->a()Ljzj;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/l;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/l;-><init>(Landroid/content/Context;)V

    .line 35000
    iput-object v1, v0, Ljzj;->a:Ljzi;

    .line 33000
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljvd;->a(Landroid/content/Context;)Ljvd;

    move-result-object v0

    new-instance v1, Ljym;

    invoke-direct {v1}, Ljym;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljvd;->a(Ljava/lang/Runnable;I)V

    .line 0
    :cond_b
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    .line 36000
    const-string/jumbo v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "last_sync_info"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v6

    sget-object v7, Lcom/xiaomi/xmpush/thrift/g;->B:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v7}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v7

    const v8, 0x127500

    invoke-virtual {v6, v7, v8}, Lkaq;->a(II)I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v2, v10

    if-nez v8, :cond_1a

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_sync_info"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :cond_c
    :goto_7
    :try_start_1
    sget-object v0, Ljxf;->d:Lcom/xiaomi/mipush/sdk/as;

    if-nez v0, :cond_d

    new-instance v0, Lcom/xiaomi/mipush/sdk/as;

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/mipush/sdk/as;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljxf;->d:Lcom/xiaomi/mipush/sdk/as;

    :cond_d
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/as;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_8
    :try_start_2
    const-string/jumbo v0, "syncing"

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->a:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxf;->h(Landroid/content/Context;)V

    :cond_e
    const-string/jumbo v0, "syncing"

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->b:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxf;->i(Landroid/content/Context;)V

    :cond_f
    const-string/jumbo v0, "syncing"

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->c:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxf;->j(Landroid/content/Context;)V

    :cond_10
    const-string/jumbo v0, "syncing"

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->d:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxf;->k(Landroid/content/Context;)V

    :cond_11
    const-string/jumbo v0, "syncing"

    invoke-static {p0}, Ljxl;->a(Landroid/content/Context;)Ljxl;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->e:Lcom/xiaomi/mipush/sdk/ao;

    invoke-virtual {v1, v2}, Ljxl;->a(Lcom/xiaomi/mipush/sdk/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Ljxf;->l(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_12
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 14000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    .line 0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "register"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    sget-object v1, Ljxf;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Ljxj;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto/16 :goto_3

    :cond_13
    move v0, v7

    .line 15000
    goto/16 :goto_4

    :cond_14
    move v0, v7

    .line 22000
    goto/16 :goto_5

    .line 0
    :cond_15
    const/4 v0, 0x6

    invoke-static {v0}, Ljvt;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljxf;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/c;->b()V

    sget-object v2, Ljxf;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    .line 26000
    invoke-static {}, Ljux;->c()I

    move-result v3

    .line 27000
    iget-object v4, v2, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    .line 28000
    iput v3, v4, Lcom/xiaomi/mipush/sdk/c$a;->j:I

    .line 27000
    iget-object v2, v2, Lcom/xiaomi/mipush/sdk/c;->a:Landroid/content/Context;

    .line 29000
    const-string/jumbo v4, "mipush"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 27000
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "envType"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    sget-object v2, Ljxf;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/xiaomi/mipush/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljxh$a;->a()Ljxh$a;

    move-result-object v2

    const-string/jumbo v3, "com.xiaomi.xmpushsdk.tinydataPending.appId"

    invoke-virtual {v2, v3}, Ljxh$a;->a(Ljava/lang/String;)V

    sget-object v2, Ljxf;->b:Landroid/content/Context;

    invoke-static {v2}, Ljxf;->e(Landroid/content/Context;)V

    new-instance v2, Lcom/xiaomi/xmpush/thrift/aj;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/aj;-><init>()V

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/aj;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/aj;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v2, p2}, Lcom/xiaomi/xmpush/thrift/aj;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/aj;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/channel/commonutils/android/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->b(I)Lcom/xiaomi/xmpush/thrift/aj;

    const-string/jumbo v0, "3_6_2"

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->g(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    const/16 v0, 0x778a

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->a(I)Lcom/xiaomi/xmpush/thrift/aj;

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljul;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->h(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    sget-object v0, Lcom/xiaomi/xmpush/thrift/w;->c:Lcom/xiaomi/xmpush/thrift/w;

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->a(Lcom/xiaomi/xmpush/thrift/w;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-static {}, Ljun;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljul;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljxf;->b:Landroid/content/Context;

    invoke-static {v3}, Ljul;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {}, Ljun;->b()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->i(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljvt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljxf;->b:Landroid/content/Context;

    invoke-static {v3}, Ljul;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->k(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    :cond_18
    invoke-static {}, Ljul;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->j(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aj;

    invoke-static {}, Ljul;->b()I

    move-result v0

    if-ltz v0, :cond_19

    invoke-virtual {v2, v0}, Lcom/xiaomi/xmpush/thrift/aj;->c(I)Lcom/xiaomi/xmpush/thrift/aj;

    :cond_19
    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljxq;->a(Lcom/xiaomi/xmpush/thrift/aj;Z)V

    invoke-static {p0}, Ljxk;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lkbf;->a(Landroid/content/Context;)Lkbf;

    move-result-object v0

    const-string/jumbo v1, "mipush_extra"

    const-string/jumbo v2, "mipush_registed"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lkbf;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_6

    .line 36000
    :cond_1a
    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_c

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljxw;->a(Landroid/content/Context;Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_sync_info"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_7

    .line 0
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 51007
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/ad;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/ad;-><init>()V

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ad;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ad;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 51008
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ad;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ad;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/ad;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ad;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ad;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/ad;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ad;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/ad;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ad;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->j:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/u;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljyo;

    invoke-direct {v1, p1, p0}, Ljyo;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "param "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not nullable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxz;->a(Landroid/content/Context;)Ljxz;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1}, Ljxz;->b(Lcom/xiaomi/mipush/sdk/d;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    invoke-virtual {v0}, Ljxq;->c()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "alias_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alias_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "set-alias"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxz;->a(Landroid/content/Context;)Ljxz;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1}, Ljxz;->b(Lcom/xiaomi/mipush/sdk/d;)Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "topic_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "**ALL**"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "account_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "set-account"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljxf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c()Z
    .locals 2

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    invoke-static {v0}, Ljxz;->a(Landroid/content/Context;)Ljxz;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1}, Ljxz;->b(Lcom/xiaomi/mipush/sdk/d;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .locals 6

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Ljvt;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Ljxf;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Ljxf;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Ljxf;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "account_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "account_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 51002
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Ljxf;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/ao;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/ao;-><init>()V

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ao;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ao;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 51003
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ao;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ao;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/ao;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ao;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/ao;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ao;

    invoke-virtual {v0, v4}, Lcom/xiaomi/xmpush/thrift/ao;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/ao;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->c:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v1, v0, v2, v4}, Ljxq;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/u;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0}, Ljxj;->a(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {v4, v2, v3, v4, p1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "subscribe-topic"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Ljxj;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-static {p0, v0}, Ljxj;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    sget-object v0, Ljxf;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected static e(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "topic_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    .line 51004
    invoke-virtual {v0}, Ljxq;->b()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->y:Ljava/lang/String;

    iget-object v3, v0, Ljxq;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->D:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljxq;->b(Landroid/content/Intent;)V

    .line 0
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 0
    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    .line 41000
    invoke-virtual {v0}, Ljxq;->b()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->y:Ljava/lang/String;

    iget-object v3, v0, Ljxq;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->C:Ljava/lang/String;

    iget-object v3, v0, Ljxq;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljvs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljxq;->b(Landroid/content/Intent;)V

    .line 0
    return-void
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "topic_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "accept_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljxv;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "topic_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    .line 42000
    invoke-static {p0}, Ljxz;->a(Landroid/content/Context;)Ljxz;

    move-result-object v0

    invoke-virtual {v0}, Ljxz;->b()V

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/aq;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/aq;-><init>()V

    invoke-static {}, Ljxf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/aq;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aq;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 43000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/aq;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aq;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 44000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/aq;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aq;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    .line 45000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/c$a;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/aq;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aq;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/aq;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/aq;

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxq;->a(Lcom/xiaomi/xmpush/thrift/aq;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 46000
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    .line 47000
    iput-boolean v3, v0, Lcom/xiaomi/mipush/sdk/c$a;->h:Z

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/c$a;->k:Landroid/content/Context;

    .line 48000
    const-string/jumbo v2, "mipush"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47000
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "valid"

    iget-boolean v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->h:Z

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 0
    invoke-static {p0}, Ljxf;->f(Landroid/content/Context;)V

    invoke-static {p0}, Ljxf;->m(Landroid/content/Context;)V

    sget-object v0, Ljxf;->d:Lcom/xiaomi/mipush/sdk/as;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lkcl;->a(Landroid/content/Context;)Lkcl;

    move-result-object v0

    sget-object v1, Ljxf;->d:Lcom/xiaomi/mipush/sdk/as;

    .line 49000
    iget-object v2, v0, Lkcl;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lkcl;->d:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :cond_1
    :goto_1
    invoke-static {p0}, Ljxf;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 49000
    :cond_2
    if-eqz v1, :cond_3

    :try_start_1
    iget-object v3, v0, Lkcl;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lkcl;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 50000
    iget-object v1, v0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v1}, Ljum;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lkcl;->e:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lkcl;->c:Landroid/accounts/AccountManager;

    iget-object v0, v0, Lkcl;->e:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 49000
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alias_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, 0x1

    .line 51000
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljxq;->a(ZLjava/lang/String;)V

    .line 0
    return-void
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "account_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 0
    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, 0x0

    .line 51001
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljxq;->a(ZLjava/lang/String;)V

    .line 0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->c:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v3, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1, v2, v3}, Ljxq;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ao;Lcom/xiaomi/mipush/sdk/d;)V

    return-void
.end method

.method private static declared-synchronized j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "geo_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljxv;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->d:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v3, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1, v2, v3}, Ljxq;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ao;Lcom/xiaomi/mipush/sdk/d;)V

    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/mipush/sdk/ao;->e:Lcom/xiaomi/mipush/sdk/ao;

    sget-object v3, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0, v1, v2, v3}, Ljxq;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ao;Lcom/xiaomi/mipush/sdk/d;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Ljxq;->a(Landroid/content/Context;)Ljxq;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxq;->a(I)V

    return-void
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 51005
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/c$a;->a()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v0

    .line 51006
    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c;->b:Lcom/xiaomi/mipush/sdk/c$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/c$a;->c:Ljava/lang/String;

    .line 0
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized o(Landroid/content/Context;)V
    .locals 3

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljxf;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Ljxf;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method static declared-synchronized p(Landroid/content/Context;)V
    .locals 3

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljxf;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Ljxf;->d(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method static declared-synchronized q(Landroid/content/Context;)V
    .locals 3

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ljxf;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Ljxf;->f(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method static declared-synchronized r(Landroid/content/Context;)V
    .locals 3

    const-class v1, Ljxf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "accept_time"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Ljxv;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "accept_time"

    const-string/jumbo v2, "00:00-23:59"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static t(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/xiaomi/push/service/receivers/NetworkStatusReceiver;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
