.class public Lcom/alibaba/wukong/auth/j;
.super Ljava/lang/Object;
.source "PrefsTools.java"


# static fields
.field private static P:Lcom/alibaba/wukong/auth/j;


# instance fields
.field private Q:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/alibaba/wukong/auth/d;)V
    .locals 4
    .param p1, "user"    # Lcom/alibaba/wukong/auth/d;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DD_CS_ANDROID_C"

    iget-wide v2, p1, Lcom/alibaba/wukong/auth/d;->q:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    const-string/jumbo v1, "DD_CS_ANDROID_D"

    iget-object v2, p1, Lcom/alibaba/wukong/auth/d;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string/jumbo v1, "DD_CS_ANDROID_A"

    iget-object v2, p1, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string/jumbo v1, "DD_CS_ANDROID_B"

    iget-object v2, p1, Lcom/alibaba/wukong/auth/d;->w:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 3
    .param p1, "isLogin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "lgst"

    if-eqz p1, :cond_1

    sget-object v1, Lcom/alibaba/wukong/auth/g$b;->L:Lcom/alibaba/wukong/auth/g$b;

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/g$b;->getStatus()I

    move-result v1

    :goto_1
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v1, Lcom/alibaba/wukong/auth/g$b;->M:Lcom/alibaba/wukong/auth/g$b;

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/g$b;->getStatus()I

    move-result v1

    goto :goto_1
.end method

.method public static declared-synchronized e()Lcom/alibaba/wukong/auth/j;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/alibaba/wukong/auth/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/wukong/auth/j;->P:Lcom/alibaba/wukong/auth/j;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/alibaba/wukong/auth/j;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/j;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/auth/j;->P:Lcom/alibaba/wukong/auth/j;

    .line 45
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/auth/j;->P:Lcom/alibaba/wukong/auth/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()Lcom/alibaba/wukong/auth/d;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v4, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v4, :cond_0

    move-object v0, v1

    .line 98
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "DD_CS_ANDROID_C"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    .local v2, "openId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 90
    new-instance v0, Lcom/alibaba/wukong/auth/d;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/d;-><init>()V

    .line 91
    .local v0, "authInfo":Lcom/alibaba/wukong/auth/d;
    iput-wide v2, v0, Lcom/alibaba/wukong/auth/d;->q:J

    .line 92
    const-string/jumbo v4, "dingding"

    iput-object v4, v0, Lcom/alibaba/wukong/auth/d;->r:Ljava/lang/String;

    .line 93
    iget-object v4, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "DD_CS_ANDROID_D"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/auth/d;->s:Ljava/lang/String;

    .line 94
    iget-object v4, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "DD_CS_ANDROID_A"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/wukong/auth/d;->v:Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "DD_CS_ANDROID_B"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/d;->w:Ljava/lang/String;

    goto :goto_0

    .end local v0    # "authInfo":Lcom/alibaba/wukong/auth/d;
    :cond_1
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DD_CS_ANDROID_C"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string/jumbo v1, "DD_CS_ANDROID_D"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string/jumbo v1, "DD_CS_ANDROID_A"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string/jumbo v1, "DD_CS_ANDROID_B"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "refreshToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/wukong/auth/j;->d(Z)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DD_CS_ANDROID_A"

    invoke-static {p1}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    const-string/jumbo v1, "DD_CS_ANDROID_B"

    invoke-static {p2}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method b(Lcom/alibaba/wukong/auth/d;)V
    .locals 1
    .param p1, "user"    # Lcom/alibaba/wukong/auth/d;

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/wukong/auth/j;->c(Lcom/alibaba/wukong/auth/d;)V

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/auth/j;->d(Z)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .param p1, "nickname"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DD_CS_ANDROID_D"

    invoke-static {p1}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "tempToken"

    invoke-static {p1}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string/jumbo v1, "kickMsg"

    invoke-static {p2}, Lcom/alibaba/wukong/auth/bl;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method f()Lcom/alibaba/wukong/auth/d;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/j;->g()Lcom/alibaba/wukong/auth/d;

    move-result-object v0

    .line 77
    .local v0, "authInfo":Lcom/alibaba/wukong/auth/d;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/wukong/auth/d;->q:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 80
    .end local v0    # "authInfo":Lcom/alibaba/wukong/auth/d;
    :cond_1
    return-object v0
.end method

.method getOpenId()J
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "DD_CS_ANDROID_C"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wukong/auth/bl;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method i()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/auth/j;->d(Z)V

    .line 115
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/j;->h()V

    .line 116
    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string/jumbo v0, "au_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method j()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 128
    sget-object v0, Lcom/alibaba/wukong/auth/g$b;->K:Lcom/alibaba/wukong/auth/g$b;

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/g$b;->getStatus()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "lgst"

    sget-object v2, Lcom/alibaba/wukong/auth/g$b;->K:Lcom/alibaba/wukong/auth/g$b;

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/g$b;->getStatus()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "DD_CS_ANDROID_A"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "tempToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    const-string/jumbo v1, "kickMsg"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/j;->Q:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
