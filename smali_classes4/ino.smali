.class public Lino;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field private static a:Lino;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lino;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lino;->a:Lino;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lino;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lino;->a:Lino;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lino;

    invoke-direct {v0}, Lino;-><init>()V

    sput-object v0, Lino;->a:Lino;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lino;->a:Lino;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1106
    sget-object v1, Lcom/alipay/mobile/context/a;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 30
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
