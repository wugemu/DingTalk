.class public Lcom/alibaba/sdk/android/httpdns/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/httpdns/s$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static a:Lcom/alibaba/sdk/android/httpdns/s$a;

.field private static c:Z

.field private static d:J

.field private static e:Z

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/sdk/android/httpdns/s;->e:Z

    sput-boolean v1, Lcom/alibaba/sdk/android/httpdns/s;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    sput v1, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    sput v1, Lcom/alibaba/sdk/android/httpdns/s;->g:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/sdk/android/httpdns/s;->d:J

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Lcom/alibaba/sdk/android/httpdns/n;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->c:Lcom/alibaba/sdk/android/httpdns/n;

    if-ne p0, v2, :cond_4

    :cond_0
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/s$a;->c:Lcom/alibaba/sdk/android/httpdns/s$a;

    if-ne v2, v3, :cond_3

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    sget v2, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    aget-object v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_1
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    if-eq p0, v2, :cond_2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    sget v2, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    aget-object v0, v0, v2

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->d:Lcom/alibaba/sdk/android/httpdns/n;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/n;->e:Lcom/alibaba/sdk/android/httpdns/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 8

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/s;->c:Z

    if-nez v0, :cond_3

    const-class v2, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/s;->c:Z

    if-nez v0, :cond_2

    if-eqz p0, :cond_0

    const-string/jumbo v0, "httpdns_config_cache"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "status"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/s;->e:Z

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "activiate_ip_index"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    sput v0, Lcom/alibaba/sdk/android/httpdns/s;->g:I

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "disable_modified_time"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/alibaba/sdk/android/httpdns/s;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/alibaba/sdk/android/httpdns/s;->d:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/s;->b(Z)V

    :cond_1
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/s;->e:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->d:Lcom/alibaba/sdk/android/httpdns/s$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/s;->c:Z

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :cond_4
    :try_start_2
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    sget v2, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v3, Lcom/alibaba/sdk/android/httpdns/s$a;->d:Lcom/alibaba/sdk/android/httpdns/s$a;

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "Disable "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mode finished. Enter enable mode."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/s;->b(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/q;->e()V

    sget v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    sput v0, Lcom/alibaba/sdk/android/httpdns/s;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, "Pre_disable "
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/s;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    sget v2, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/s;->f()V

    sget v0, Lcom/alibaba/sdk/android/httpdns/s;->g:I

    sget v2, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/httpdns/q;->a(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/o;->a()Lcom/alibaba/sdk/android/httpdns/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/o;->c()V

    :cond_0
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->c:Lcom/alibaba/sdk/android/httpdns/s$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    const-string/jumbo v0, "enter pre_disable mode"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v2, Lcom/alibaba/sdk/android/httpdns/s$a;->c:Lcom/alibaba/sdk/android/httpdns/s$a;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->d:Lcom/alibaba/sdk/android/httpdns/s$a;

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Lcom/alibaba/sdk/android/httpdns/s$a;

    const-string/jumbo v0, "enter disable mode"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/g;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/s;->b(Z)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/sdk/android/httpdns/q;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p0, Lcom/alibaba/sdk/android/httpdns/f;

    if-eqz v2, :cond_3

    check-cast p0, Lcom/alibaba/sdk/android/httpdns/f;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/f;->getErrorCode()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/f;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ServiceLevelDeny"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static b(I)V
    .locals 4

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sput p0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "activiate_ip_index"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "activiated_ip_index_modified_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method static declared-synchronized b(Z)V
    .locals 6

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/s;->e:Z

    if-eq v0, p0, :cond_0

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/s;->e:Z

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "status"

    sget-boolean v3, Lcom/alibaba/sdk/android/httpdns/s;->e:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "disable_modified_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized d()Z
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alibaba/sdk/android/httpdns/s;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static f()V
    .locals 2

    sget v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/d;->b:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    :goto_0
    sget v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/s;->b(I)V

    return-void

    :cond_0
    sget v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    goto :goto_0
.end method

.method static declared-synchronized g()V
    .locals 3

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/s;->b(I)V

    sget v0, Lcom/alibaba/sdk/android/httpdns/s;->f:I

    sput v0, Lcom/alibaba/sdk/android/httpdns/s;->g:I

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/httpdns/q;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized h()V
    .locals 3

    const-class v1, Lcom/alibaba/sdk/android/httpdns/s;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/q;->a()Lcom/alibaba/sdk/android/httpdns/q;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/httpdns/q;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
