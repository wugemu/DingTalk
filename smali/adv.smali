.class public final Ladv;
.super Ljava/lang/Object;
.source "AuthStateManager.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ladv;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lkks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ladv;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "_"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "AuthState"

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "prefName":Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Ladv;->b:Landroid/content/SharedPreferences;

    .line 81
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Ladv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 83
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ladv;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .prologue
    .line 66
    const-class v3, Ladv;

    monitor-enter v3

    :try_start_0
    sget-object v2, Ladv;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 68
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ladv;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    new-instance v0, Ladv;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ladv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .local v0, "manager":Ladv;
    sget-object v2, Ladv;->a:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_0
    monitor-exit v3

    return-object v0

    .line 72
    .end local v0    # "manager":Ladv;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "manager":Ladv;
    goto :goto_0

    .line 66
    .end local v0    # "manager":Ladv;
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ladv;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private b()Lkks;
    .locals 4
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 145
    iget-object v1, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 147
    :try_start_0
    iget-object v1, p0, Ladv;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "currentState":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Lkks;

    invoke-direct {v1}, Lkks;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v2, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v1

    .line 7734
    :cond_0
    :try_start_1
    const-string/jumbo v1, "jsonStr cannot be null or empty"

    invoke-static {v0, v1}, Lkle;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 7735
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8693
    const-string/jumbo v1, "json cannot be null"

    invoke-static {v2, v1}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8695
    new-instance v1, Lkks;

    invoke-direct {v1}, Lkks;-><init>()V

    .line 8696
    const-string/jumbo v3, "refreshToken"

    invoke-static {v2, v3}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lkks;->a:Ljava/lang/String;

    .line 8697
    const-string/jumbo v3, "scope"

    invoke-static {v2, v3}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lkks;->b:Ljava/lang/String;

    .line 8699
    const-string/jumbo v3, "config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8700
    const-string/jumbo v3, "config"

    .line 8701
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8700
    invoke-static {v3}, Lkkv;->a(Lorg/json/JSONObject;)Lkkv;

    move-result-object v3

    iput-object v3, v1, Lkks;->c:Lkkv;

    .line 8704
    :cond_1
    const-string/jumbo v3, "mAuthorizationException"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8705
    const-string/jumbo v3, "mAuthorizationException"

    .line 8706
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8705
    invoke-static {v3}, Lnet/openid/appauth/AuthorizationException;->fromJson(Lorg/json/JSONObject;)Lnet/openid/appauth/AuthorizationException;

    move-result-object v3

    iput-object v3, v1, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    .line 8709
    :cond_2
    const-string/jumbo v3, "lastAuthorizationResponse"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8710
    const-string/jumbo v3, "lastAuthorizationResponse"

    .line 8711
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8710
    invoke-static {v3}, Lkku;->a(Lorg/json/JSONObject;)Lkku;

    move-result-object v3

    iput-object v3, v1, Lkks;->d:Lkku;

    .line 8714
    :cond_3
    const-string/jumbo v3, "mLastTokenResponse"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8715
    const-string/jumbo v3, "mLastTokenResponse"

    .line 8716
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8715
    invoke-static {v3}, Lkli;->a(Lorg/json/JSONObject;)Lkli;

    move-result-object v3

    iput-object v3, v1, Lkks;->e:Lkli;

    .line 8719
    :cond_4
    const-string/jumbo v3, "lastRegistrationResponse"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8720
    const-string/jumbo v3, "lastRegistrationResponse"

    .line 8721
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 8720
    invoke-static {v2}, Lnet/openid/appauth/RegistrationResponse;->a(Lorg/json/JSONObject;)Lnet/openid/appauth/RegistrationResponse;

    move-result-object v2

    iput-object v2, v1, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_5
    iget-object v2, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "AuthStateManager"

    const-string/jumbo v2, "Failed to deserialize stored auth state - discarding"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v1, Lkks;

    invoke-direct {v1}, Lkks;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    iget-object v2, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v0    # "currentState":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public final a()Lkks;
    .locals 3
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Ladv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Ladv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkks;

    .line 96
    :goto_0
    return-object v1

    .line 92
    :cond_0
    invoke-direct {p0}, Ladv;->b()Lkks;

    move-result-object v0

    .line 93
    .local v0, "state":Lkks;
    iget-object v1, p0, Ladv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Ladv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkks;

    goto :goto_0
.end method

.method public final a(Lkks;)Lkks;
    .locals 11
    .param p1, "state"    # Lkks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 103
    .line 1165
    iget-object v0, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1167
    :try_start_0
    iget-object v0, p0, Ladv;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1168
    if-nez p1, :cond_0

    .line 1169
    const-string/jumbo v1, "AuthStateManager"

    const-string/jumbo v2, "writeState state is null, error!!!"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 1171
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1172
    const-string/jumbo v2, "oauthRefreshToken"

    const-string/jumbo v3, "oauthRefreshToken error"

    const-string/jumbo v4, "writeState state is null"

    .line 1173
    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-static {v2, v3, v4, v1}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string/jumbo v1, "state"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1185
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Failed to write state to shared prefs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 2136
    :cond_0
    :try_start_1
    iget-object v1, p1, Lkks;->a:Ljava/lang/String;

    .line 1176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1177
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 1178
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1179
    const-string/jumbo v2, "oauthRefreshToken"

    const-string/jumbo v3, "oauthRefreshToken error"

    const-string/jumbo v4, "oauthRefreshToken null"

    .line 1180
    invoke-static {v1}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    invoke-static {v2, v3, v4, v1}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_1
    const-string/jumbo v1, "state"

    .line 3642
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3643
    const-string/jumbo v3, "refreshToken"

    iget-object v4, p1, Lkks;->a:Ljava/lang/String;

    invoke-static {v4}, Lkla;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    const-string/jumbo v3, "scope"

    iget-object v4, p1, Lkks;->b:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    iget-object v3, p1, Lkks;->c:Lkkv;

    if-eqz v3, :cond_2

    .line 3647
    const-string/jumbo v3, "config"

    iget-object v4, p1, Lkks;->c:Lkkv;

    invoke-virtual {v4}, Lkkv;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3650
    :cond_2
    iget-object v3, p1, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    if-eqz v3, :cond_3

    .line 3651
    const-string/jumbo v3, "mAuthorizationException"

    iget-object v4, p1, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    invoke-virtual {v4}, Lnet/openid/appauth/AuthorizationException;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3654
    :cond_3
    iget-object v3, p1, Lkks;->d:Lkku;

    if-eqz v3, :cond_4

    .line 3655
    const-string/jumbo v3, "lastAuthorizationResponse"

    iget-object v4, p1, Lkks;->d:Lkku;

    .line 3658
    invoke-virtual {v4}, Lkku;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 3655
    invoke-static {v2, v3, v4}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3661
    :cond_4
    iget-object v3, p1, Lkks;->e:Lkli;

    if-eqz v3, :cond_5

    .line 3662
    const-string/jumbo v3, "mLastTokenResponse"

    iget-object v4, p1, Lkks;->e:Lkli;

    .line 4427
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 4428
    const-string/jumbo v6, "request"

    iget-object v7, v4, Lkli;->a:Lklh;

    .line 4531
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 4532
    const-string/jumbo v9, "configuration"

    iget-object v10, v7, Lklh;->a:Lkkv;

    invoke-virtual {v10}, Lkkv;->a()Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4533
    const-string/jumbo v9, "clientId"

    iget-object v10, v7, Lklh;->b:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4534
    const-string/jumbo v9, "grantType"

    iget-object v10, v7, Lklh;->d:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    const-string/jumbo v9, "redirectUri"

    iget-object v10, v7, Lklh;->e:Landroid/net/Uri;

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 4536
    const-string/jumbo v9, "scope"

    iget-object v10, v7, Lklh;->g:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4537
    const-string/jumbo v9, "authorizationCode"

    iget-object v10, v7, Lklh;->f:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    const-string/jumbo v9, "refreshToken"

    iget-object v10, v7, Lklh;->h:Ljava/lang/String;

    invoke-static {v10}, Lkla;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    const-string/jumbo v9, "additionalParameters"

    iget-object v7, v7, Lklh;->j:Ljava/util/Map;

    .line 4540
    invoke-static {v7}, Lklc;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v7

    .line 4539
    invoke-static {v8, v9, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4428
    invoke-static {v5, v6, v8}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4429
    const-string/jumbo v6, "token_type"

    iget-object v7, v4, Lkli;->b:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    const-string/jumbo v6, "access_token"

    iget-object v7, v4, Lkli;->c:Ljava/lang/String;

    invoke-static {v7}, Lkla;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4431
    const-string/jumbo v6, "expires_at"

    iget-object v7, v4, Lkli;->d:Ljava/lang/Long;

    invoke-static {v5, v6, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 4432
    const-string/jumbo v6, "id_token"

    iget-object v7, v4, Lkli;->e:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    const-string/jumbo v6, "refresh_token"

    iget-object v7, v4, Lkli;->f:Ljava/lang/String;

    invoke-static {v7}, Lkla;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4434
    const-string/jumbo v6, "scope"

    iget-object v7, v4, Lkli;->g:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    const-string/jumbo v6, "additionalParameters"

    iget-object v4, v4, Lkli;->h:Ljava/util/Map;

    .line 4436
    invoke-static {v4}, Lklc;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4435
    invoke-static {v5, v6, v4}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3662
    invoke-static {v2, v3, v5}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3668
    :cond_5
    iget-object v3, p1, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    if-eqz v3, :cond_8

    .line 3669
    const-string/jumbo v3, "lastRegistrationResponse"

    iget-object v4, p1, Lkks;->f:Lnet/openid/appauth/RegistrationResponse;

    .line 5416
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 5417
    const-string/jumbo v6, "request"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->a:Lklf;

    .line 6370
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 6371
    const-string/jumbo v9, "redirect_uris"

    iget-object v10, v7, Lklf;->b:Ljava/util/List;

    invoke-static {v10}, Lklc;->a(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 6372
    const-string/jumbo v9, "application_type"

    iget-object v10, v7, Lklf;->c:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6374
    iget-object v9, v7, Lklf;->d:Ljava/util/List;

    if-eqz v9, :cond_6

    .line 6375
    const-string/jumbo v9, "response_types"

    iget-object v10, v7, Lklf;->d:Ljava/util/List;

    invoke-static {v10}, Lklc;->a(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 6377
    :cond_6
    iget-object v9, v7, Lklf;->e:Ljava/util/List;

    if-eqz v9, :cond_7

    .line 6378
    const-string/jumbo v9, "grant_types"

    iget-object v10, v7, Lklf;->e:Ljava/util/List;

    invoke-static {v10}, Lklc;->a(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 6380
    :cond_7
    const-string/jumbo v9, "subject_type"

    iget-object v10, v7, Lklf;->f:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6381
    const-string/jumbo v9, "token_endpoint_auth_method"

    iget-object v10, v7, Lklf;->g:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 6353
    const-string/jumbo v9, "configuration"

    iget-object v10, v7, Lklf;->a:Lkkv;

    invoke-virtual {v10}, Lkkv;->a()Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6354
    const-string/jumbo v9, "additionalParameters"

    iget-object v7, v7, Lklf;->h:Ljava/util/Map;

    .line 6355
    invoke-static {v7}, Lklc;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v7

    .line 6354
    invoke-static {v8, v9, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5417
    invoke-static {v5, v6, v8}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 5418
    const-string/jumbo v6, "client_id"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->b:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5419
    const-string/jumbo v6, "client_id_issued_at"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->c:Ljava/lang/Long;

    invoke-static {v5, v6, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 5420
    const-string/jumbo v6, "client_secret"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->d:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5421
    const-string/jumbo v6, "client_secret_expires_at"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->e:Ljava/lang/Long;

    invoke-static {v5, v6, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Long;)V

    .line 5422
    const-string/jumbo v6, "registration_access_token"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->f:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5423
    const-string/jumbo v6, "registration_client_uri"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->g:Landroid/net/Uri;

    invoke-static {v5, v6, v7}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/net/Uri;)V

    .line 5424
    const-string/jumbo v6, "token_endpoint_auth_method"

    iget-object v7, v4, Lnet/openid/appauth/RegistrationResponse;->h:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lklc;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5425
    const-string/jumbo v6, "additionalParameters"

    iget-object v4, v4, Lnet/openid/appauth/RegistrationResponse;->i:Ljava/util/Map;

    .line 5426
    invoke-static {v4}, Lklc;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    .line 5425
    invoke-static {v5, v6, v4}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3669
    invoke-static {v2, v3, v5}, Lklc;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2684
    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1189
    :cond_9
    iget-object v0, p0, Ladv;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 104
    iget-object v0, p0, Ladv;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 105
    return-object p1
.end method

.method public final a(Lkku;Lnet/openid/appauth/AuthorizationException;)Lkks;
    .locals 5
    .param p1, "response"    # Lkku;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p0}, Ladv;->a()Lkks;

    move-result-object v0

    .line 7382
    .local v0, "current":Lkks;
    if-eqz p1, :cond_2

    move v3, v2

    :goto_0
    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    xor-int/2addr v1, v3

    const-string/jumbo v3, "exactly one of authResponse or authException should be non-null"

    invoke-static {v1, v3}, Lkle;->a(ZLjava/lang/Object;)V

    .line 7384
    if-eqz p2, :cond_3

    .line 7385
    iget v1, p2, Lnet/openid/appauth/AuthorizationException;->type:I

    if-ne v1, v2, :cond_1

    .line 7386
    iput-object p2, v0, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    .line 115
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ladv;->a(Lkks;)Lkks;

    move-result-object v1

    return-object v1

    :cond_2
    move v3, v1

    .line 7382
    goto :goto_0

    .line 7393
    :cond_3
    iput-object p1, v0, Lkks;->d:Lkku;

    .line 7394
    iput-object v4, v0, Lkks;->c:Lkkv;

    .line 7395
    iput-object v4, v0, Lkks;->e:Lkli;

    .line 7396
    iput-object v4, v0, Lkks;->a:Ljava/lang/String;

    .line 7397
    iput-object v4, v0, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    .line 7401
    iget-object v1, p1, Lkku;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lkku;->h:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Lkks;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lkku;->a:Lkkt;

    iget-object v1, v1, Lkkt;->i:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(Lkli;Lnet/openid/appauth/AuthorizationException;)Lkks;
    .locals 5
    .param p1, "response"    # Lkli;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "ex"    # Lnet/openid/appauth/AuthorizationException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-virtual {p0}, Ladv;->a()Lkks;

    move-result-object v0

    .line 7410
    .local v0, "current":Lkks;
    if-eqz p1, :cond_2

    move v4, v2

    :goto_0
    if-eqz p2, :cond_3

    move v1, v2

    :goto_1
    xor-int/2addr v1, v4

    const-string/jumbo v4, "exactly one of tokenResponse or authException should be non-null"

    invoke-static {v1, v4}, Lkle;->a(ZLjava/lang/Object;)V

    .line 7413
    iget-object v1, v0, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    if-eqz v1, :cond_0

    .line 7418
    const-string/jumbo v1, "AuthState.update should not be called in an error state (%s), call updatewith the result of the fresh authorization response first"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lklq;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7422
    const/4 v1, 0x0

    iput-object v1, v0, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    .line 7425
    :cond_0
    if-eqz p2, :cond_4

    .line 7426
    iget v1, p2, Lnet/openid/appauth/AuthorizationException;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 7427
    iput-object p2, v0, Lkks;->g:Lnet/openid/appauth/AuthorizationException;

    .line 125
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Ladv;->a(Lkks;)Lkks;

    move-result-object v1

    return-object v1

    :cond_2
    move v4, v3

    .line 7410
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 7432
    :cond_4
    iput-object p1, v0, Lkks;->e:Lkli;

    .line 7433
    iget-object v1, p1, Lkli;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 7434
    iget-object v1, p1, Lkli;->g:Ljava/lang/String;

    iput-object v1, v0, Lkks;->b:Ljava/lang/String;

    .line 7436
    :cond_5
    iget-object v1, p1, Lkli;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7437
    iget-object v1, p1, Lkli;->f:Ljava/lang/String;

    iput-object v1, v0, Lkks;->a:Ljava/lang/String;

    goto :goto_2
.end method
