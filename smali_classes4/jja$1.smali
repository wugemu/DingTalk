.class final Ljja$1;
.super Ljava/lang/Thread;
.source "ACCSClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljja;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljja;


# direct methods
.method constructor <init>(Ljja;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ljja$1;->c:Ljja;

    iput-object p2, p0, Ljja$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ljja$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 78
    new-instance v1, Ljja$a;

    iget-object v2, p0, Ljja$1;->a:Ljava/lang/String;

    iget-object v3, p0, Ljja$1;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const-class v5, Ljja;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ljja$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 82
    const-string/jumbo v1, "ACCSClassLoader"

    const-string/jumbo v2, "dexOpt done"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Ljja$1;->c:Ljja;

    invoke-static {v1, v6}, Ljja;->a(Ljja;Z)Z

    .line 85
    iget-object v1, p0, Ljja$1;->c:Ljja;

    invoke-static {v1}, Ljja;->a(Ljja;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ACCS_SDK"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "update_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method
