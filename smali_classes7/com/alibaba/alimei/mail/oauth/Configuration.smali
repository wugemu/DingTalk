.class public final Lcom/alibaba/alimei/mail/oauth/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;
    }
.end annotation


# static fields
.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/oauth/Configuration;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:Landroid/net/Uri;

.field public i:Landroid/net/Uri;

.field public j:Landroid/net/Uri;

.field private final l:Landroid/content/Context;

.field private final m:Ljava/lang/String;

.field private final n:Landroid/content/res/Resources;

.field private o:Lorg/json/JSONObject;

.field private p:Landroid/net/Uri;

.field private q:Landroid/net/Uri;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/oauth/Configuration;->k:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->l:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->m:Ljava/lang/String;

    .line 97
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v3

    const-string/jumbo v5, "_"

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, "config"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "prefName":Ljava/lang/String;
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->a:Landroid/content/SharedPreferences;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->n:Landroid/content/res/Resources;

    .line 1200
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->m:Ljava/lang/String;

    invoke-static {v4}, Laec;->a(Ljava/lang/String;)Laea;

    move-result-object v4

    invoke-interface {v4}, Laea;->a()I

    move-result v4

    .line 1201
    iget-object v5, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->n:Landroid/content/res/Resources;

    .line 1202
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    .line 1203
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V
    :try_end_0
    .catch Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :try_start_1
    invoke-interface {v4, v5}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 1206
    const-string/jumbo v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v5, v4}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 1207
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->o:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1216
    :try_start_2
    invoke-virtual {v5}, Lokio/Buffer;->sha256()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->b:Ljava/lang/String;

    .line 1217
    const-string/jumbo v4, "client_id"

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->d:Ljava/lang/String;

    .line 1218
    const-string/jumbo v4, "client_secret"

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->e:Ljava/lang/String;

    .line 1219
    iget-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->e:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1220
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->e:Ljava/lang/String;

    .line 1222
    :cond_0
    const-string/jumbo v4, "authorization_scope"

    .line 1267
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1222
    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->f:Ljava/lang/String;

    .line 1223
    const-string/jumbo v4, "redirect_uri"

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->g:Landroid/net/Uri;

    .line 1325
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1326
    iget-object v5, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->l:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1327
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1328
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    iget-object v5, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->g:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1331
    iget-object v5, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->l:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1225
    :goto_0
    if-nez v2, :cond_2

    .line 1226
    new-instance v2, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    const-string/jumbo v3, "redirect_uri is not handled by any activity in this app! Ensure that the appAuthRedirectScheme in your build.gradle file is correctly configured, or that an appropriate intent filter exists in your app manifest."

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->c:Ljava/lang/String;

    .line 106
    .end local v0    # "ex":Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;
    :goto_1
    return-void

    .line 1208
    :catch_1
    move-exception v2

    .line 1209
    :try_start_3
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Failed to read configuration: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1211
    :catch_2
    move-exception v2

    .line 1212
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to parse configuration: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v2, v3

    .line 1331
    goto :goto_0

    .line 1233
    :cond_2
    const-string/jumbo v2, "discovery_uri"

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1234
    const-string/jumbo v2, "authorization_endpoint_uri"

    .line 2312
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1234
    iput-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->h:Landroid/net/Uri;

    .line 1236
    const-string/jumbo v2, "token_endpoint_uri"

    .line 3312
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1236
    iput-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->i:Landroid/net/Uri;

    .line 1237
    const-string/jumbo v2, "user_info_endpoint_uri"

    .line 4312
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1237
    iput-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->q:Landroid/net/Uri;

    .line 1239
    iget-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1240
    const-string/jumbo v2, "registration_endpoint_uri"

    .line 5312
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1240
    iput-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->j:Landroid/net/Uri;

    .line 1246
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->o:Lorg/json/JSONObject;

    const-string/jumbo v3, "https_required"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->r:Z

    goto :goto_1

    .line 1243
    :cond_4
    const-string/jumbo v2, "discovery_uri"

    .line 6312
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/oauth/Configuration;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1243
    iput-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->p:Landroid/net/Uri;
    :try_end_3
    .catch Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/alimei/mail/oauth/Configuration;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v3, Lcom/alibaba/alimei/mail/oauth/Configuration;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 81
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/alibaba/alimei/mail/oauth/Configuration;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "config":Lcom/alibaba/alimei/mail/oauth/Configuration;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "config":Lcom/alibaba/alimei/mail/oauth/Configuration;
    check-cast v0, Lcom/alibaba/alimei/mail/oauth/Configuration;

    .line 85
    .restart local v0    # "config":Lcom/alibaba/alimei/mail/oauth/Configuration;
    :cond_0
    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/alibaba/alimei/mail/oauth/Configuration;

    .end local v0    # "config":Lcom/alibaba/alimei/mail/oauth/Configuration;
    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/oauth/Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    .restart local v0    # "config":Lcom/alibaba/alimei/mail/oauth/Configuration;
    new-instance v1, Ljava/lang/ref/WeakReference;

    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/alibaba/alimei/mail/oauth/Configuration;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 88
    .restart local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/alibaba/alimei/mail/oauth/Configuration;>;"
    sget-object v2, Lcom/alibaba/alimei/mail/oauth/Configuration;->k:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    monitor-exit v3

    return-object v0

    .line 80
    .end local v0    # "config":Lcom/alibaba/alimei/mail/oauth/Configuration;
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/alibaba/alimei/mail/oauth/Configuration;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->o:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object v1

    .line 256
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 261
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "propName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    .line 7267
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/oauth/Configuration;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "uriStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    const/4 v1, 0x0

    .line 307
    :cond_0
    return-object v1

    .line 285
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 290
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_3

    .line 291
    :cond_2
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must be hierarchical and absolute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " could not be parsed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 295
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 296
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must not have user info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 300
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must not have query parameters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 303
    :cond_5
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    new-instance v3, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " must not have a fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/oauth/Configuration$InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final a()Lklo;
    .locals 1

    .prologue
    .line 189
    .line 7185
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/oauth/Configuration;->r:Z

    .line 189
    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lklp;->a:Lklp;

    .line 192
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ladx;->a:Ladx;

    goto :goto_0
.end method
