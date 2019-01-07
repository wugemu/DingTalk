.class public Lkcl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkcl$a;
    }
.end annotation


# static fields
.field private static volatile f:Lkcl;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/Object;

.field public c:Landroid/accounts/AccountManager;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkcl$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/accounts/OnAccountsUpdateListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkcl;->b:Ljava/lang/Object;

    iput-object p1, p0, Lkcl;->a:Landroid/content/Context;

    iget-object v0, p0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v0}, Ljum;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lkcl;->c:Landroid/accounts/AccountManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkcl;->d:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method static synthetic a(Lkcl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lkcl;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lkcl;
    .locals 2

    sget-object v0, Lkcl;->f:Lkcl;

    if-nez v0, :cond_1

    const-class v1, Lkcl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkcl;->f:Lkcl;

    if-nez v0, :cond_0

    new-instance v0, Lkcl;

    invoke-direct {v0, p0}, Lkcl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lkcl;->f:Lkcl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lkcl;->f:Lkcl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lkcl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    .line 3000
    iget-object v1, p0, Lkcl;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkcl;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkcl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lkcl;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkcl$a;

    iget-object v2, p0, Lkcl;->a:Landroid/content/Context;

    invoke-interface {v0, p1, v2}, Lkcl$a;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    :try_start_0
    iget-object v2, p0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v2}, Ljum;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lkcl;->e:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v2, :cond_1

    .line 1000
    iget-object v2, p0, Lkcl;->e:Landroid/accounts/OnAccountsUpdateListener;

    if-nez v2, :cond_1

    new-instance v2, Lkcm;

    invoke-direct {v2, p0}, Lkcm;-><init>(Lkcl;)V

    iput-object v2, p0, Lkcl;->e:Landroid/accounts/OnAccountsUpdateListener;

    .line 0
    :cond_1
    iget-object v2, p0, Lkcl;->c:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lkcl;->e:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 2000
    iget-object v0, p0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v0}, Ljum;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v1}, Lkcn;->a(Landroid/content/Context;)Lkcn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkcn;->a(Ljava/lang/String;)V

    :goto_1
    return-object v0

    .line 2000
    :cond_0
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 0
    :cond_1
    iget-object v0, p0, Lkcl;->a:Landroid/content/Context;

    invoke-static {v0}, Lkcn;->a(Landroid/content/Context;)Lkcn;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lkcn;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "0"

    goto :goto_1
.end method
