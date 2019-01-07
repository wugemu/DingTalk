.class public final Ldeo;
.super Ljava/lang/Object;
.source "GroupThemeManager.java"


# static fields
.field private static a:Ldeo;

.field private static final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Ldeo;->b:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private declared-synchronized a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)J
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    monitor-enter p0

    if-nez p1, :cond_0

    .line 92
    const-wide/16 v2, -0x1

    .line 101
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 2048
    :cond_0
    :try_start_0
    sget-object v1, Lcjk$a;->a:Lcjk;

    .line 94
    sget-object v4, Ldhl;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhk;

    .line 95
    .local v0, "dataSource":Ldhk;
    invoke-interface {v0, p1}, Ldhk;->a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)J

    move-result-wide v2

    .line 96
    .local v2, "ret":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 97
    sget-object v1, Ldeo;->b:Landroid/util/LruCache;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "dataSource":Ldhk;
    .end local v2    # "ret":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 99
    .restart local v0    # "dataSource":Ldhk;
    .restart local v2    # "ret":J
    :cond_1
    :try_start_1
    const-string/jumbo v1, "GroupTheme"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveGroupTheme fail, id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "im"

    invoke-static {v1, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Ldeo;Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)J
    .locals 2
    .param p0, "x0"    # Ldeo;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ldeo;->a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized a()Ldeo;
    .locals 2

    .prologue
    .line 35
    const-class v1, Ldeo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldeo;->a:Ldeo;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ldeo;

    invoke-direct {v0}, Ldeo;-><init>()V

    sput-object v0, Ldeo;->a:Ldeo;

    .line 38
    :cond_0
    sget-object v0, Ldeo;->a:Ldeo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldeo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ldeo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ldeo;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 115
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    const-string/jumbo v2, "groupTheme"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "themeId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3
    .param p1, "themeId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3048
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcjk$a;->a:Lcjk;

    .line 105
    sget-object v2, Ldhl;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhk;

    .line 106
    .local v0, "dataSource":Ldhk;
    invoke-interface {v0, p1}, Ldhk;->b(Ljava/lang/String;)I

    .line 107
    sget-object v1, Ldeo;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 3048
    .end local v0    # "dataSource":Ldhk;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    .locals 4
    .param p1, "themeId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const/4 v1, 0x0

    .line 87
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 78
    :cond_1
    :try_start_1
    sget-object v2, Ldeo;->b:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    .line 79
    .local v1, "object":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    if-nez v1, :cond_0

    .line 1048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 82
    sget-object v3, Ldhl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v0

    check-cast v0, Ldhk;

    .line 83
    .local v0, "dataSource":Ldhk;
    invoke-interface {v0, p1}, Ldhk;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    sget-object v2, Ldeo;->b:Landroid/util/LruCache;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "dataSource":Ldhk;
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
