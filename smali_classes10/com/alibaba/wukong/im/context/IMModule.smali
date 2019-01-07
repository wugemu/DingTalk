.class public Lcom/alibaba/wukong/im/context/IMModule;
.super Ljava/lang/Object;
.source "IMModule.java"


# static fields
.field private static final mServiceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/alibaba/wukong/im/context/IMModule;


# instance fields
.field private mBlacklistCache:Licu;

.field private mBlacklistRpc:Licy;

.field private mCategoryCache:Liaj;

.field private mCategoryRpc:Lian;

.field private mContext:Landroid/content/Context;

.field private mConversationCache:Liar;

.field private mConversationRpc:Liav;

.field private mFollowCache:Lida;

.field private mFollowRpc:Lide;

.field private mGroupNickDataCenter:Libf;

.field private mInvitationRpc:Libm;

.field private mMessageCache:Libs;

.field private mMessageRpc:Libz;

.field private mPrefsTools:Liga;

.field private mUserCache:Lidq;

.field private mUserRpc:Lidu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/wukong/im/context/IMModule;
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/alibaba/wukong/im/context/IMModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->sInstance:Lcom/alibaba/wukong/im/context/IMModule;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/alibaba/wukong/im/context/IMModule;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/context/IMModule;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/context/IMModule;->sInstance:Lcom/alibaba/wukong/im/context/IMModule;

    .line 79
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->sInstance:Lcom/alibaba/wukong/im/context/IMModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getBlacklistCache()Licu;
    .locals 1

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mBlacklistCache:Licu;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Licu;

    invoke-direct {v0}, Licu;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mBlacklistCache:Licu;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mBlacklistCache:Licu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlacklistRpc()Licy;
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mBlacklistRpc:Licy;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Licy;

    invoke-direct {v0}, Licy;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mBlacklistRpc:Licy;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mBlacklistRpc:Licy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCategoryCache()Liaj;
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mCategoryCache:Liaj;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mCategoryCache:Liaj;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mCategoryCache:Liaj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCategoryRpc()Lian;
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mCategoryRpc:Lian;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lian;

    invoke-direct {v0}, Lian;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mCategoryRpc:Lian;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mCategoryRpc:Lian;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversationCache()Liar;
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mConversationCache:Liar;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Liar;

    invoke-direct {v0}, Liar;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mConversationCache:Liar;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mConversationCache:Liar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversationRpc()Liav;
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mConversationRpc:Liav;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Liav;

    invoke-direct {v0}, Liav;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mConversationRpc:Liav;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mConversationRpc:Liav;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFollowCache()Lida;
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mFollowCache:Lida;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lida;

    invoke-direct {v0}, Lida;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mFollowCache:Lida;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mFollowCache:Lida;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFollowRpc()Lide;
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mFollowRpc:Lide;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lide;

    invoke-direct {v0}, Lide;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mFollowRpc:Lide;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mFollowRpc:Lide;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGroupNickDataCenter()Libf;
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mGroupNickDataCenter:Libf;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Libf;

    invoke-direct {v0}, Libf;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mGroupNickDataCenter:Libf;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mGroupNickDataCenter:Libf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInvitationRpc()Libm;
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mInvitationRpc:Libm;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Libm;

    invoke-direct {v0}, Libm;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mInvitationRpc:Libm;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mInvitationRpc:Libm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCache()Libs;
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mMessageCache:Libs;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Libs;

    invoke-direct {v0}, Libs;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mMessageCache:Libs;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mMessageCache:Libs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageRpc()Libz;
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mMessageRpc:Libz;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Libz;

    invoke-direct {v0}, Libz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mMessageRpc:Libz;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mMessageRpc:Libz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrefsTools()Liga;
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mPrefsTools:Liga;

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Liga;->a()Liga;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mPrefsTools:Liga;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mPrefsTools:Liga;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 109
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getUserCache()Lidq;
    .locals 1

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mUserCache:Lidq;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lidq;

    invoke-direct {v0}, Lidq;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mUserCache:Lidq;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mUserCache:Lidq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserRpc()Lidu;
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mUserRpc:Lidu;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lidu;

    invoke-direct {v0}, Lidu;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mUserRpc:Lidu;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/context/IMModule;->mUserRpc:Lidu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/wukong/im/context/IMModule;->mContext:Landroid/content/Context;

    .line 85
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/auth/AuthService;

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/bee/DBManager;

    invoke-static {}, Lcom/alibaba/bee/DBManager;->getInstance()Lcom/alibaba/bee/DBManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/CategoryService;

    invoke-static {}, Liao;->a()Liao;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {}, Liaw;->a()Liaw;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {}, Libr;->a()Lcom/alibaba/wukong/im/MessageBuilder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {}, Lica;->a()Lcom/alibaba/wukong/im/MessageService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/UserService;

    invoke-static {}, Lidv;->a()Lcom/alibaba/wukong/im/UserService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {}, Lidf;->a()Lidf;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/BlacklistService;

    invoke-static {}, Licz;->a()Licz;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lhzr;

    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {}, Libj;->a()Lcom/alibaba/wukong/im/GroupNickService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Lcom/alibaba/wukong/im/UserTagService;

    invoke-static {}, Lcom/alibaba/wukong/im/UserTagServiceImpl;->getInstance()Lcom/alibaba/wukong/im/UserTagServiceImpl;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alibaba/wukong/im/context/IMModule;->mServiceCache:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Libn;

    invoke-static {}, Libo;->a()Libo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
