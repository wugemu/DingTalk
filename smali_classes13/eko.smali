.class public Leko;
.super Ljava/lang/Object;
.source "LemonDataSource.java"


# static fields
.field private static volatile b:Leko;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Leko;->a:Landroid/content/Context;

    .line 25
    return-void
.end method

.method public static a()Leko;
    .locals 4

    .prologue
    .line 28
    sget-object v0, Leko;->b:Leko;

    .line 29
    .local v0, "res":Leko;
    if-nez v0, :cond_1

    .line 30
    const-class v3, Leko;

    monitor-enter v3

    .line 31
    :try_start_0
    sget-object v0, Leko;->b:Leko;

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v1, Leko;

    invoke-direct {v1}, Leko;-><init>()V

    sput-object v1, Leko;->b:Leko;

    .end local v0    # "res":Leko;
    .local v1, "res":Leko;
    move-object v0, v1

    .line 35
    .end local v1    # "res":Leko;
    .restart local v0    # "res":Leko;
    :cond_0
    monitor-exit v3

    .line 38
    :cond_1
    return-object v0

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_1

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "module and key should not be empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p2

    .line 67
    :cond_2
    :goto_0
    return-object v0

    .line 50
    :cond_3
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    invoke-static {}, Leix;->a()Leix;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Leix;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    move-object v0, p2

    move-object v0, p2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    .end local p1    # "defValue":Z
    :goto_0
    return p1

    .restart local p1    # "defValue":Z
    :cond_0
    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method
