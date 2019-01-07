.class Lcom/alipay/euler/andfix/log/Log$AndroidLogger;
.super Lcom/alipay/euler/andfix/log/Logger;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/euler/andfix/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidLogger"
.end annotation


# static fields
.field private static instance:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/euler/andfix/log/Logger;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/alipay/euler/andfix/log/Log$AndroidLogger;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->instance:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->instance:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    invoke-direct {v0}, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;-><init>()V

    sput-object v0, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->instance:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/alipay/euler/andfix/log/Log$AndroidLogger;->instance:Lcom/alipay/euler/andfix/log/Log$AndroidLogger;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    return v0
.end method
