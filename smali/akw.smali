.class public final Lakw;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/SharedPreferences;

.field c:Landroid/content/SharedPreferences$Editor;

.field d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lakw;->a:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lakw;->b:Landroid/content/SharedPreferences;

    .line 18
    iput-object v1, p0, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    .line 19
    iput-object v1, p0, Lakw;->d:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lakw;->a:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lakw;->d:Landroid/content/Context;

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lakw;->b:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 119
    iget-object v1, p0, Lakw;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lakw;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 121
    if-nez v1, :cond_0

    .line 125
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    .line 1035
    iget-object v0, p0, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lakw;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lakw;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    .line 70
    :cond_0
    iget-object v0, p0, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    :cond_1
    return-void
.end method
