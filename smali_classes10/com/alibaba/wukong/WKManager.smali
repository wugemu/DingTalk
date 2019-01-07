.class public Lcom/alibaba/wukong/WKManager;
.super Ljava/lang/Object;
.source "WKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/WKManager$CustomInterface;
    }
.end annotation


# static fields
.field private static mAppKey:Ljava/lang/String;

.field private static mCustomUA:Ljava/lang/String;

.field protected static mEnv:Lcom/alibaba/wukong/WKConstants$Environment;

.field private static mExecutor:Lcom/alibaba/wukong/WKExecutor;

.field private static final mWKModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWKVersion:Ljava/lang/String;

.field private static sCustomInterface:Lcom/alibaba/wukong/WKManager$CustomInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sget-object v0, Lcom/alibaba/wukong/WKConstants$Environment;->ONLINE:Lcom/alibaba/wukong/WKConstants$Environment;

    sput-object v0, Lcom/alibaba/wukong/WKManager;->mEnv:Lcom/alibaba/wukong/WKConstants$Environment;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/WKManager;->mWKModules:Ljava/util/Map;

    .line 40
    sput-object v1, Lcom/alibaba/wukong/WKManager;->mCustomUA:Ljava/lang/String;

    .line 41
    sput-object v1, Lcom/alibaba/wukong/WKManager;->mAppKey:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "au"

    const/16 v1, 0x25

    invoke-static {v0, v1}, Lcom/alibaba/wukong/WKManager;->setVersion(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static clearTempToken()V
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/j;->l()V

    .line 299
    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mAppKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "wk.appKey"

    invoke-static {p0, v0}, Lifz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/wukong/WKManager;->mAppKey:Ljava/lang/String;

    .line 196
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    sget-object v1, Lcom/alibaba/wukong/WKManager;->mCustomUA:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lcom/alibaba/wukong/WKManager;->sCustomInterface:Lcom/alibaba/wukong/WKManager$CustomInterface;

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    sget-object v1, Lcom/alibaba/wukong/WKManager;->sCustomInterface:Lcom/alibaba/wukong/WKManager$CustomInterface;

    invoke-virtual {v1}, Lcom/alibaba/wukong/WKManager$CustomInterface;->getCustomUA()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/wukong/WKManager;->mCustomUA:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/wukong/WKManager;->mCustomUA:Ljava/lang/String;

    return-object v1

    .line 96
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironment()Lcom/alibaba/wukong/WKConstants$Environment;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mEnv:Lcom/alibaba/wukong/WKConstants$Environment;

    return-object v0
.end method

.method public static declared-synchronized getExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 250
    const-class v1, Lcom/alibaba/wukong/WKManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mExecutor:Lcom/alibaba/wukong/WKExecutor;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Liab;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Liab;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/WKManager;->mExecutor:Lcom/alibaba/wukong/WKExecutor;

    .line 253
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mExecutor:Lcom/alibaba/wukong/WKExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getKickOutMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    const-string/jumbo v1, "kickMsg"

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    const-string/jumbo v1, "tempToken"

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/auth/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Ligb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Ligb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v2, ") App/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {p0}, Lifz;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "customUA":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getVersion(Ljava/lang/String;)I
    .locals 2
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v1, Lcom/alibaba/wukong/WKManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 164
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mWKModules:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ligb;->a(Ljava/lang/Integer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getWKExecutor()Lcom/alibaba/wukong/WKExecutor;
    .locals 3

    .prologue
    .line 243
    const-class v1, Lcom/alibaba/wukong/WKManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mExecutor:Lcom/alibaba/wukong/WKExecutor;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Liab;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Liab;-><init>(I)V

    sput-object v0, Lcom/alibaba/wukong/WKManager;->mExecutor:Lcom/alibaba/wukong/WKExecutor;

    .line 246
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mExecutor:Lcom/alibaba/wukong/WKExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getWKVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 168
    const-class v4, Lcom/alibaba/wukong/WKManager;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/alibaba/wukong/WKManager;->mWKVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    sget-object v3, Lcom/alibaba/wukong/WKManager;->mWKModules:Ljava/util/Map;

    const-string/jumbo v5, "sy"

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    sget-object v3, Lcom/alibaba/wukong/WKManager;->mWKModules:Ljava/util/Map;

    const-string/jumbo v5, "sy"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 174
    .local v1, "first":Z
    sget-object v3, Lcom/alibaba/wukong/WKManager;->mWKModules:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 180
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 178
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alibaba/wukong/WKManager;->mWKVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v1    # "first":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    monitor-exit v4

    return-object v3

    :cond_3
    :try_start_2
    sget-object v3, Lcom/alibaba/wukong/WKManager;->mWKVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 257
    const-class v1, Lcom/alibaba/wukong/WKManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/auth/b;->a()Lcom/alibaba/wukong/auth/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/b;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupportMultiChannel()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    .local v0, "syncVer":I
    :cond_0
    :goto_0
    return v1

    .line 271
    .end local v0    # "syncVer":I
    :cond_1
    const-string/jumbo v2, "sy"

    invoke-static {v2}, Lcom/alibaba/wukong/WKManager;->getVersion(Ljava/lang/String;)I

    move-result v0

    .line 272
    .restart local v0    # "syncVer":I
    if-lez v0, :cond_0

    .line 275
    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static registerConnectionListener(Lcom/alibaba/wukong/ConnectionListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/wukong/ConnectionListener;

    .prologue
    .line 133
    new-instance v0, Lcom/alibaba/wukong/WKManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/WKManager$1;-><init>(Lcom/alibaba/wukong/ConnectionListener;)V

    invoke-static {v0}, Lcom/laiwang/protocol/android/LWP;->addNetworkListener(Lcom/laiwang/protocol/android/NetworkListener;)V

    .line 148
    return-void
.end method

.method public static registerListener(Lcom/alibaba/wukong/WKListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/wukong/WKListener;

    .prologue
    .line 215
    instance-of v0, p0, Lifk;

    if-eqz v0, :cond_1

    .line 216
    check-cast p0, Lifk;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/alibaba/wukong/auth/al;->a(Lifk;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    :cond_1
    instance-of v0, p0, Lifl;

    if-eqz v0, :cond_2

    .line 218
    check-cast p0, Lifl;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/alibaba/wukong/auth/am;->a(Lifl;)V

    goto :goto_0

    .line 219
    .restart local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    :cond_2
    instance-of v0, p0, Lifh;

    if-eqz v0, :cond_3

    .line 220
    check-cast p0, Lifh;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/alibaba/wukong/auth/al;->a(Lifh;)V

    goto :goto_0

    .line 221
    .restart local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    :cond_3
    instance-of v0, p0, Lcom/alibaba/wukong/FastConfigListener;

    if-eqz v0, :cond_0

    .line 222
    check-cast p0, Lcom/laiwang/protocol/android/ConfigListener;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP;->addConfigListener(Lcom/laiwang/protocol/android/ConfigListener;)V

    goto :goto_0
.end method

.method public static saveConfigVersion(Ljava/lang/String;)V
    .locals 4
    .param p0, "ver"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CS_IDX_VER"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/wukong/auth/j;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "appKey"    # Ljava/lang/String;

    .prologue
    .line 204
    sput-object p0, Lcom/alibaba/wukong/WKManager;->mAppKey:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public static setCustomInterface(Lcom/alibaba/wukong/WKManager$CustomInterface;)V
    .locals 0
    .param p0, "customInterface"    # Lcom/alibaba/wukong/WKManager$CustomInterface;

    .prologue
    .line 57
    sput-object p0, Lcom/alibaba/wukong/WKManager;->sCustomInterface:Lcom/alibaba/wukong/WKManager$CustomInterface;

    .line 58
    return-void
.end method

.method public static setCustomUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "uaString"    # Ljava/lang/String;

    .prologue
    .line 88
    sput-object p0, Lcom/alibaba/wukong/WKManager;->mCustomUA:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static setDeviceIdExtension(Ljava/lang/String;)V
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-static {p0}, Lcom/alibaba/wukong/auth/bk;->setDeviceIdExtension(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static setEnvironment(Lcom/alibaba/wukong/WKConstants$Environment;)V
    .locals 0
    .param p0, "env"    # Lcom/alibaba/wukong/WKConstants$Environment;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    sput-object p0, Lcom/alibaba/wukong/WKManager;->mEnv:Lcom/alibaba/wukong/WKConstants$Environment;

    goto :goto_0
.end method

.method public static declared-synchronized setVersion(Ljava/lang/String;I)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 156
    const-class v1, Lcom/alibaba/wukong/WKManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    monitor-exit v1

    return-void

    .line 157
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alibaba/wukong/WKManager;->mWKModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/wukong/WKManager;->mWKVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unregisterListener(Lcom/alibaba/wukong/WKListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/wukong/WKListener;

    .prologue
    .line 231
    instance-of v0, p0, Lifk;

    if-eqz v0, :cond_1

    .line 232
    check-cast p0, Lifk;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/alibaba/wukong/auth/al;->b(Lifk;)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    .restart local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    :cond_1
    instance-of v0, p0, Lifl;

    if-eqz v0, :cond_2

    .line 234
    check-cast p0, Lifl;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/alibaba/wukong/auth/am;->b(Lifl;)V

    goto :goto_0

    .line 235
    .restart local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    :cond_2
    instance-of v0, p0, Lifh;

    if-eqz v0, :cond_3

    .line 236
    check-cast p0, Lifh;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/alibaba/wukong/auth/al;->b(Lifh;)V

    goto :goto_0

    .line 237
    .restart local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    :cond_3
    instance-of v0, p0, Lcom/alibaba/wukong/FastConfigListener;

    if-eqz v0, :cond_0

    .line 238
    check-cast p0, Lcom/laiwang/protocol/android/ConfigListener;

    .end local p0    # "listener":Lcom/alibaba/wukong/WKListener;
    invoke-static {p0}, Lcom/laiwang/protocol/android/LWP;->removeConfigListener(Lcom/laiwang/protocol/android/ConfigListener;)V

    goto :goto_0
.end method
