.class public Lcom/alibaba/wukong/im/IMEngine;
.super Ljava/lang/Object;
.source "IMEngine.java"


# static fields
.field private static volatile mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/wukong/im/IMEngine;->mInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getIMService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->verify()V

    .line 50
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->getInstance()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    return-object v0
.end method

.method private static initStatistics()V
    .locals 6

    .prologue
    .line 83
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v2, "totalTimeMeasure":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "totalTime"

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v1, "msgTypeDim":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "msgType"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    const-string/jumbo v4, "SendMsg"

    invoke-static {v4, v1, v2}, Lhzs;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 91
    const-string/jumbo v4, "ForwardMsg"

    const-string/jumbo v5, "totalTime"

    invoke-static {v4, v5}, Lhzs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v3, "uploadTypeDim":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "uploadType"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const-string/jumbo v4, "Upload"

    invoke-static {v4, v3, v2}, Lhzs;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v0, "dataSourceDim":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, "dataSource"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    const-string/jumbo v4, "ListConv"

    invoke-static {v4, v0, v2}, Lhzs;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 102
    const-string/jumbo v4, "ListGroup"

    invoke-static {v4, v0, v2}, Lhzs;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    .line 105
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    .line 201
    const-class v0, Lcom/alibaba/wukong/im/IMEngine;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/alibaba/wukong/im/IMEngine;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized launch(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v1, Lcom/alibaba/wukong/im/IMEngine;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/wukong/im/IMEngine;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    monitor-exit v1

    return-void

    .line 65
    :cond_0
    :try_start_1
    const-string/jumbo v0, "im"

    const/16 v2, 0x23

    invoke-static {v0, v2}, Lcom/alibaba/wukong/WKManager;->setVersion(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/auth/AuthService;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0, p0}, Liaq;->a(Landroid/content/Context;)V

    .line 69
    new-instance v0, Licc;

    invoke-direct {v0}, Licc;-><init>()V

    .line 70
    new-instance v0, Lidl;

    invoke-direct {v0}, Lidl;-><init>()V

    .line 72
    new-instance v0, Lcom/alibaba/wukong/im/base/AuthStatusReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/wukong/im/base/AuthStatusReceiver;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/wukong/im/IMEngine;->mInitialized:Z

    .line 77
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->initStatistics()V

    .line 78
    const-string/jumbo v0, "Launch"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Lhzs;->a(Ljava/lang/String;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static registerListener(Lcom/alibaba/wukong/im/IMListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/alibaba/wukong/im/IMListener;

    .prologue
    .line 130
    invoke-static {p0}, Liad;->a(Lcom/alibaba/wukong/im/IMListener;)V

    .line 131
    return-void
.end method

.method public static setAuthProvider(Lcom/alibaba/wukong/im/AuthProvider;)V
    .locals 1
    .param p0, "authProvider"    # Lcom/alibaba/wukong/im/AuthProvider;

    .prologue
    .line 175
    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/AuthProviderProxy;->setAuthProvider(Lcom/alibaba/wukong/im/AuthProvider;)V

    .line 176
    return-void
.end method

.method public static setConversationComparator(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->setComparator(Ljava/util/Comparator;)V

    .line 160
    return-void
.end method

.method public static setConversationDisplayProxy(Lcom/alibaba/wukong/im/ConversationDisplayProxy;)V
    .locals 0
    .param p0, "proxy"    # Lcom/alibaba/wukong/im/ConversationDisplayProxy;

    .prologue
    .line 152
    invoke-static {p0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->setDisplayProxy(Lcom/alibaba/wukong/im/ConversationDisplayProxy;)V

    .line 153
    return-void
.end method

.method public static setConversationTitleProvider(Lcom/alibaba/wukong/im/ConversationTitleProvider;)V
    .locals 1
    .param p0, "conversationTitleProvider"    # Lcom/alibaba/wukong/im/ConversationTitleProvider;

    .prologue
    .line 179
    invoke-static {}, Lcom/alibaba/wukong/im/ConversationTitleManager;->getInstance()Lcom/alibaba/wukong/im/ConversationTitleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/ConversationTitleManager;->setConversationTitleProvider(Lcom/alibaba/wukong/im/ConversationTitleProvider;)V

    .line 180
    return-void
.end method

.method public static setLuckyTimePlanMsgListener(Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;

    .prologue
    .line 171
    invoke-static {}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->getInstance()Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/LuckyTimePlanMsgManager;->setListener(Lcom/alibaba/wukong/im/LuckyTimePlanMsgListener;)V

    .line 172
    return-void
.end method

.method public static setMessageEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V
    .locals 0
    .param p0, "helper"    # Lcom/alibaba/wukong/im/EncryptHelper;

    .prologue
    .line 167
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->setEncryptHelper(Lcom/alibaba/wukong/im/EncryptHelper;)V

    .line 168
    return-void
.end method

.method public static setMessageProxy(Lcom/alibaba/wukong/im/MessageProxy;)V
    .locals 0
    .param p0, "proxy"    # Lcom/alibaba/wukong/im/MessageProxy;

    .prologue
    .line 145
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->setProxy(Lcom/alibaba/wukong/im/MessageProxy;)V

    .line 146
    return-void
.end method

.method public static setSwitchProvider(Lcom/alibaba/wukong/im/SwitchProvider;)V
    .locals 1
    .param p0, "switchProvider"    # Lcom/alibaba/wukong/im/SwitchProvider;

    .prologue
    .line 192
    invoke-static {}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->getInstance()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->setSwitchProvider(Lcom/alibaba/wukong/im/SwitchProvider;)V

    .line 193
    return-void
.end method

.method public static setThreadPool(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public static setUserAvailable(Z)V
    .locals 0
    .param p0, "isAvailable"    # Z

    .prologue
    .line 122
    sput-boolean p0, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    .line 123
    return-void
.end method

.method public static setWukongFeatureInterface(Lcom/alibaba/wukong/im/WuKongFeatureInterface;)V
    .locals 1
    .param p0, "featureInterface"    # Lcom/alibaba/wukong/im/WuKongFeatureInterface;

    .prologue
    .line 187
    invoke-static {}, Lcom/alibaba/wukong/im/WukongFeatureManager;->getInstance()Lcom/alibaba/wukong/im/WukongFeatureManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/wukong/im/WukongFeatureManager;->setFeatureInterface(Lcom/alibaba/wukong/im/WuKongFeatureInterface;)V

    .line 188
    return-void
.end method

.method public static unregisterListener(Lcom/alibaba/wukong/im/IMListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/alibaba/wukong/im/IMListener;

    .prologue
    .line 138
    invoke-static {p0}, Liad;->b(Lcom/alibaba/wukong/im/IMListener;)V

    .line 139
    return-void
.end method

.method private static verify()V
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, Lcom/alibaba/wukong/im/IMEngine;->mInitialized:Z

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call IMEngine.launch method first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method
