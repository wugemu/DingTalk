.class public final Liga;
.super Ljava/lang/Object;
.source "PrefsTools.java"


# static fields
.field private static b:Liga;


# instance fields
.field public a:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Liga;->c:Landroid/content/SharedPreferences;

    .line 15
    return-void
.end method

.method public static declared-synchronized a()Liga;
    .locals 2

    .prologue
    .line 18
    const-class v1, Liga;

    monitor-enter v1

    :try_start_0
    sget-object v0, Liga;->b:Liga;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Liga;

    invoke-direct {v0}, Liga;-><init>()V

    sput-object v0, Liga;->b:Liga;

    .line 21
    :cond_0
    sget-object v0, Liga;->b:Liga;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 42
    invoke-virtual {p0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 60
    invoke-virtual {p0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    invoke-virtual {p0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 70
    invoke-virtual {p0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Liga;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 30
    iput-object v0, p0, Liga;->c:Landroid/content/SharedPreferences;

    .line 38
    :goto_0
    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Liga;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Liga;->c:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Liga;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Liga;->c:Landroid/content/SharedPreferences;

    .line 38
    iget-object v0, p0, Liga;->c:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    invoke-virtual {p0}, Liga;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method
