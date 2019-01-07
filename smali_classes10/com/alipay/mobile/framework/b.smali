.class public Lcom/alipay/mobile/framework/b;
.super Ljava/lang/Object;
.source "LauncherApplicationAgent.java"


# static fields
.field private static b:Lcom/alipay/mobile/framework/b;


# instance fields
.field protected a:Lcom/alipay/mobile/framework/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/alipay/mobile/framework/c;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/b;->a:Lcom/alipay/mobile/framework/c;

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/framework/b;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/alipay/mobile/framework/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/b;->b:Lcom/alipay/mobile/framework/b;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/mobile/framework/b;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/b;->b:Lcom/alipay/mobile/framework/b;

    .line 23
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/b;->b:Lcom/alipay/mobile/framework/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/alipay/mobile/framework/a;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/alipay/mobile/framework/a;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0}, Lcom/alipay/mobile/framework/a;-><init>()V

    return-object v0
.end method

.method public static d()Landroid/app/Application;
    .locals 1

    .prologue
    .line 1029
    sget-object v0, Lcom/alipay/mobile/context/a;->b:Landroid/app/Application;

    .line 40
    return-object v0
.end method


# virtual methods
.method public final c()Lcom/alipay/mobile/framework/c;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/framework/b;->a:Lcom/alipay/mobile/framework/c;

    return-object v0
.end method
