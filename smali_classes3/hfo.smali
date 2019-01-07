.class public Lhfo;
.super Ljava/lang/Object;
.source "RuntimeAppInfoCacheMananger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhfo$b;,
        Lhfo$a;
    }
.end annotation


# static fields
.field private static d:Lhfo;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhfo$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
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

.field public c:Lhfo$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhfo;->a:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lhfo;->b:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public static declared-synchronized a()Lhfo;
    .locals 3

    .prologue
    .line 35
    const-class v1, Lhfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhfo;->d:Lhfo;

    if-nez v0, :cond_1

    .line 36
    const-class v2, Lhfo;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    sget-object v0, Lhfo;->d:Lhfo;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lhfo;

    invoke-direct {v0}, Lhfo;-><init>()V

    sput-object v0, Lhfo;->d:Lhfo;

    .line 40
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_1
    :try_start_2
    sget-object v0, Lhfo;->d:Lhfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 186
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lhfo$b;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 137
    new-instance v3, Lhfo$b;

    invoke-direct {v3, p0}, Lhfo$b;-><init>(Lhfo;)V

    .line 138
    .local v3, "tempMicroAppInfo":Lhfo$b;
    iput-object p1, v3, Lhfo$b;->e:Ljava/lang/String;

    .line 1166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lhfo;->a:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 1167
    invoke-static {p1}, Lhfo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1168
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1169
    iget-object v5, p0, Lhfo;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhfo$a;

    move-object v0, v4

    .line 140
    .local v0, "microAppInfo":Lhfo$a;
    :goto_0
    if-eqz v0, :cond_2

    .line 1210
    iget-object v4, v0, Lhfo$a;->c:Ljava/lang/String;

    .line 140
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2210
    iget-object v4, v0, Lhfo$a;->c:Ljava/lang/String;

    .line 141
    iput-object v4, v3, Lhfo$b;->a:Ljava/lang/String;

    .line 3206
    iget-object v4, v0, Lhfo$a;->b:Ljava/lang/String;

    .line 142
    iput-object v4, v3, Lhfo$b;->b:Ljava/lang/String;

    .line 3214
    iget-object v4, v0, Lhfo$a;->d:Ljava/lang/String;

    .line 143
    iput-object v4, v3, Lhfo$b;->d:Ljava/lang/String;

    .line 4202
    iget-object v4, v0, Lhfo$a;->a:Ljava/lang/String;

    .line 144
    iput-object v4, v3, Lhfo$b;->c:Ljava/lang/String;

    .line 162
    :cond_0
    :goto_1
    return-object v3

    .line 1172
    .end local v0    # "microAppInfo":Lhfo$a;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    .restart local v0    # "microAppInfo":Lhfo$a;
    :cond_2
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v4

    invoke-virtual {v4, p1}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 147
    .local v2, "session":Lhqe$d;
    if-eqz v2, :cond_3

    .line 4496
    iget-object v4, v2, Lhqe$d;->d:Ljava/lang/String;

    .line 148
    iput-object v4, v3, Lhfo$b;->a:Ljava/lang/String;

    .line 5492
    iget-object v4, v2, Lhqe$d;->c:Ljava/lang/String;

    .line 149
    iput-object v4, v3, Lhfo$b;->b:Ljava/lang/String;

    .line 5500
    iget-object v4, v2, Lhqe$d;->e:Ljava/lang/String;

    .line 150
    iput-object v4, v3, Lhfo$b;->d:Ljava/lang/String;

    .line 6488
    iget-object v4, v2, Lhqe$d;->b:Ljava/lang/String;

    .line 151
    iput-object v4, v3, Lhfo$b;->c:Ljava/lang/String;

    goto :goto_1

    .line 7179
    :cond_3
    iget-object v1, p0, Lhfo;->c:Lhfo$a;

    .line 154
    .local v1, "microAppInfo1":Lhfo$a;
    if-eqz v1, :cond_0

    .line 7210
    iget-object v4, v1, Lhfo$a;->c:Ljava/lang/String;

    .line 155
    iput-object v4, v3, Lhfo$b;->a:Ljava/lang/String;

    .line 8206
    iget-object v4, v1, Lhfo$a;->b:Ljava/lang/String;

    .line 156
    iput-object v4, v3, Lhfo$b;->b:Ljava/lang/String;

    .line 8214
    iget-object v4, v1, Lhfo$a;->d:Ljava/lang/String;

    .line 157
    iput-object v4, v3, Lhfo$b;->d:Ljava/lang/String;

    .line 9202
    iget-object v4, v1, Lhfo$a;->a:Ljava/lang/String;

    .line 158
    iput-object v4, v3, Lhfo$b;->c:Ljava/lang/String;

    goto :goto_1
.end method
