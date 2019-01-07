.class public final Lus;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static final b:[Lcom/alibaba/alimei/emailcommon/Account;

.field private static c:Lus;


# instance fields
.field public a:Lwz;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/alimei/emailcommon/Account;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/Account;

    sput-object v0, Lus;->b:[Lcom/alibaba/alimei/emailcommon/Account;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v1

    iput-object v1, p0, Lus;->a:Lwz;

    .line 44
    iput-object p1, p0, Lus;->f:Landroid/content/Context;

    .line 45
    iget-object v1, p0, Lus;->a:Lwz;

    .line 1327
    iget-object v1, v1, Lwz;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    int-to-long v2, v1

    .line 45
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lus;->a:Lwz;

    invoke-virtual {v1}, Lwz;->b()Lwy;

    move-result-object v0

    .line 49
    .local v0, "editor":Lwy;
    const-string/jumbo v1, "AndroidMail.Main"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwy;->a(Landroid/content/SharedPreferences;)V

    .line 50
    invoke-virtual {v0}, Lwy;->commit()Z

    .line 52
    .end local v0    # "editor":Lwy;
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lus;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lus;->c:Lus;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lus;

    invoke-direct {v0, p0}, Lus;-><init>(Landroid/content/Context;)V

    sput-object v0, Lus;->c:Lus;

    .line 33
    :cond_0
    sget-object v0, Lus;->c:Lus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 56
    monitor-enter p0

    .line 2204
    :try_start_0
    iget-object v3, p0, Lus;->a:Lwz;

    .line 56
    const-string/jumbo v4, "accountUuids"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "accountUuids":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "uuids":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lus;->d:Ljava/util/List;

    .line 61
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v2, v3

    .line 63
    .local v1, "uuid":Ljava/lang/String;
    iget-object v5, p0, Lus;->d:Ljava/util/List;

    new-instance v6, Lcom/alibaba/alimei/emailcommon/Account;

    invoke-direct {v6, p0, v1}, Lcom/alibaba/alimei/emailcommon/Account;-><init>(Lus;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "uuid":Ljava/lang/String;
    .end local v2    # "uuids":[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lus;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    monitor-exit p0

    return-void

    .line 56
    .end local v0    # "accountUuids":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public final declared-synchronized a()[Lcom/alibaba/alimei/emailcommon/Account;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lus;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lus;->c()V

    .line 84
    :cond_0
    iget-object v0, p0, Lus;->e:Lcom/alibaba/alimei/emailcommon/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus;->e:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/Account;->j()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lus;->d:Ljava/util/List;

    iget-object v1, p0, Lus;->e:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lus;->e:Lcom/alibaba/alimei/emailcommon/Account;

    .line 90
    :cond_1
    iget-object v0, p0, Lus;->d:Ljava/util/List;

    sget-object v1, Lus;->b:[Lcom/alibaba/alimei/emailcommon/Account;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/alibaba/alimei/emailcommon/Account;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alibaba/alimei/emailcommon/Account;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/Account;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus;->e:Lcom/alibaba/alimei/emailcommon/Account;

    .line 149
    iget-object v0, p0, Lus;->e:Lcom/alibaba/alimei/emailcommon/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
