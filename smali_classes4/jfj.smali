.class public final Ljfj;
.super Ljava/lang/Object;
.source "Initializer.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljfj;->a:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljfj;->b:Ljava/util/List;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .line 1013
    new-instance v0, Lcom/mybank/android/phone/common/initialize/PreLoader;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/initialize/PreLoader;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljfj;->a(Ljava/lang/Runnable;)V

    .line 1015
    new-instance v0, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/service/impl/ServiceLoader;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljfj;->a(Ljava/lang/Runnable;)V

    .line 1017
    new-instance v0, Lcom/mybank/android/phone/common/initialize/LogLoader;

    invoke-direct {v0, p0}, Lcom/mybank/android/phone/common/initialize/LogLoader;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljfj;->a(Ljava/lang/Runnable;)V

    .line 1032
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 1034
    sget-object v0, Ljfj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1035
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1040
    :cond_0
    sget-object v0, Ljfj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1042
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1048
    :catch_0
    move-exception v0

    goto :goto_1

    .line 29
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    sget-object v0, Ljfj;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method
