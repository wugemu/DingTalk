.class public final Lmtopsdk/xstate/XStateDelegate;
.super Ljava/lang/Object;
.source "XStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

.field private static c:Landroid/content/Context;

.field private static volatile d:Z

.field private static e:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 104
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 76
    sget-boolean v1, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-eqz v1, :cond_1

    .line 77
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 79
    :try_start_0
    sget-boolean v1, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-eqz v1, :cond_4

    .line 80
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 82
    const/4 v1, 0x0

    sput-object v1, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    :cond_0
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->c:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 85
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[unInit]static field context in Class XState is null."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->c:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    :try_start_2
    sget-object v2, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    if-eqz v2, :cond_3

    .line 1149
    sget-object v2, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1150
    const/4 v1, 0x0

    sput-object v1, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :cond_3
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lmtopsdk/xstate/XStateDelegate;->d:Z

    .line 90
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[unInit] uninit XState OK,isInit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lmtopsdk/xstate/XStateDelegate;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :cond_4
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v1

    .line 1153
    :try_start_4
    const-string/jumbo v2, "mtopsdk.XStateDelegate"

    const-string/jumbo v3, "[unRegisterReceive]unRegisterReceive failed"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[unInit] unInit error --"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-nez v0, :cond_0

    .line 1044
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1046
    :try_start_0
    sget-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    if-nez v0, :cond_4

    .line 1047
    if-nez p0, :cond_1

    .line 1048
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    const-string/jumbo v1, "[checkInit]parameter context for init(Context context) is null."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1051
    :cond_1
    :try_start_1
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_2

    .line 1052
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1055
    :cond_2
    sput-object p0, Lmtopsdk/xstate/XStateDelegate;->c:Landroid/content/Context;

    .line 1134
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    if-nez v0, :cond_3

    .line 1135
    new-instance v0, Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    invoke-direct {v0}, Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;-><init>()V

    sput-object v0, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    :try_start_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1138
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->b:Lmtopsdk/xstate/XStateDelegate$NetworkStateReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1057
    :cond_3
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lmtopsdk/xstate/XStateDelegate;->d:Z

    .line 1058
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[checkInit] init XState OK,isInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lmtopsdk/xstate/XStateDelegate;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1065
    :cond_4
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    :try_start_4
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    const-string/jumbo v2, "[registerReceive]registerReceive failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1062
    :catch_1
    move-exception v0

    .line 1063
    :try_start_5
    const-string/jumbo v1, "mtopsdk.XStateDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[checkInit] checkInit error --"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1065
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lmtopsdk/xstate/XStateDelegate;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 112
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setValue]set  XstateID succeed,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[setValue]set  XstateID failed,key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 125
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string/jumbo v0, "mtopsdk.XStateDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove Xstate key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    sget-object v0, Lmtopsdk/xstate/XStateDelegate;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
