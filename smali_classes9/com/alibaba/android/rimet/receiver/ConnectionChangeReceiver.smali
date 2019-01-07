.class public Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;)V
    .locals 1
    .param p0, "callback"    # Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive, action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :try_start_0
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 62
    .local v1, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v2, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$1;-><init>(Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
