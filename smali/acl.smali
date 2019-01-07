.class public Lacl;
.super Ljava/lang/Object;
.source "NewMailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacl$a;
    }
.end annotation


# static fields
.field private static e:Lacl;


# instance fields
.field public a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lacl$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v1, Lacl$1;

    invoke-direct {v1, p0}, Lacl$1;-><init>(Lacl;)V

    iput-object v1, p0, Lacl;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lacl;->c:Landroid/content/Context;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lacl;->d:Ljava/util/List;

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lacl;->b:Ljava/util/Map;

    .line 157
    invoke-virtual {p0}, Lacl;->a()Z

    move-result v1

    iput-boolean v1, p0, Lacl;->a:Z

    .line 160
    :try_start_0
    iget-object v1, p0, Lacl;->c:Landroid/content/Context;

    invoke-static {v1}, Lcpk;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lacl;->f:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NewMailManager"

    const-string/jumbo v2, " PreferenceUtils.getSharedPreferences "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lacl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v0, Lacl;->e:Lacl;

    if-nez v0, :cond_1

    .line 173
    const-class v1, Lacl;

    monitor-enter v1

    .line 174
    :try_start_0
    sget-object v0, Lacl;->e:Lacl;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lacl;

    invoke-direct {v0, p0}, Lacl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lacl;->e:Lacl;

    .line 177
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    sget-object v0, Lacl;->e:Lacl;

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lacl;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "x0"    # Lacl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    .line 1243
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1244
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacl$a;

    .line 1245
    invoke-interface {v0}, Lacl$a;->b()V

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method static synthetic a(Lacl;)Z
    .locals 1
    .param p0, "x0"    # Lacl;

    .prologue
    .line 24
    iget-boolean v0, p0, Lacl;->a:Z

    return v0
.end method

.method static synthetic a(Lacl;Z)Z
    .locals 0
    .param p0, "x0"    # Lacl;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lacl;->a:Z

    return p1
.end method

.method static synthetic b(Lacl;)V
    .locals 2
    .param p0, "x0"    # Lacl;

    .prologue
    .line 24
    .line 1231
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacl$a;

    .line 1233
    invoke-interface {v0}, Lacl$a;->a()V

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method static synthetic c(Lacl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lacl;

    .prologue
    .line 24
    iget-object v0, p0, Lacl;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lacl$a;)V
    .locals 1
    .param p1, "listener"    # Lacl$a;

    .prologue
    .line 210
    monitor-enter p0

    if-nez p1, :cond_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 214
    :cond_1
    :try_start_0
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 111
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lacl;->c:Landroid/content/Context;

    const-string/jumbo v4, "pref_key_mail_notification"

    const-string/jumbo v5, "1"

    invoke-static {v3, v4, v5}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 125
    :goto_0
    const-string/jumbo v3, "01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "1"

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "true"

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    :cond_0
    const/4 v1, 0x1

    .line 132
    .local v1, "isOn":Z
    :goto_1
    return v1

    .line 113
    .end local v1    # "isOn":Z
    :catch_0
    move-exception v0

    .line 114
    .local v0, "exception":Ljava/lang/Exception;
    const-string/jumbo v3, "NewMailManager"

    invoke-static {v3, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 116
    :try_start_1
    iget-object v3, p0, Lacl;->c:Landroid/content/Context;

    const-string/jumbo v4, "pref_key_mail_notification"

    invoke-static {v3, v4}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 119
    :catch_1
    move-exception v3

    const-string/jumbo v3, "NewMailManager"

    invoke-static {v3, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 130
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isOn":Z
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v1, p0, Lacl;->c:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "pref_key_account_notification_enable:"

    aput-object v3, v2, v0

    aput-object p1, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, "isOn":Z
    goto :goto_0
.end method

.method public final declared-synchronized b(Lacl$a;)V
    .locals 1
    .param p1, "listener"    # Lacl$a;

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lacl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return v0

    .line 196
    :cond_0
    iget-object v1, p0, Lacl;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lacl;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0, p1}, Lacl;->a(Ljava/lang/String;)Z

    move-result v0

    .line 201
    .local v0, "isOn":Z
    iget-object v1, p0, Lacl;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
