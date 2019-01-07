.class public Lgpe;
.super Ljava/lang/Object;
.source "UploadProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgpe$a;,
        Lgpe$b;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:Z

.field private static c:Z

.field private static volatile d:Lgpe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-wide/32 v0, 0x1f400000

    sput-wide v0, Lgpe;->a:J

    .line 51
    sput-boolean v2, Lgpe;->b:Z

    .line 52
    sput-boolean v2, Lgpe;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgpe;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 59
    sget-object v0, Lgpe;->d:Lgpe;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lgpe;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lgpe;->d:Lgpe;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lgpe;

    invoke-direct {v0}, Lgpe;-><init>()V

    sput-object v0, Lgpe;->d:Lgpe;

    .line 1075
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v2, "cspace_upload_lwp_android"

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lgpe;->b:Z

    .line 1076
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v2, "f_space_lwp_upload_limited_max_size_enable"

    .line 2083
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1078
    sput-boolean v0, Lgpe;->c:Z

    if-eqz v0, :cond_0

    .line 1079
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v2, "dt_function"

    const-string/jumbo v3, "cspace_lwp_upload_max_size"

    invoke-virtual {v0, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1082
    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1083
    sput-wide v2, Lgpe;->a:J

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lgpe;->d:Lgpe;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromFlag"    # I

    .prologue
    .line 193
    invoke-static {}, Lgpc;->a()Lgpc;

    invoke-static {p1}, Lgpc;->a(I)V

    .line 194
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "fromFlag"    # I

    .prologue
    .line 189
    invoke-static {}, Lgpc;->a()Lgpc;

    invoke-static {p1, p2}, Lgpc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;I)V

    .line 190
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 12
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Lgre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p3, "listener":Lcma;, "Lcma<Lgre;>;"
    if-nez p3, :cond_0

    .line 229
    :goto_0
    return-void

    .line 204
    :cond_0
    if-nez p2, :cond_1

    .line 205
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v8, "willUploadFiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v8, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    .line 215
    .local v4, "totalSize":J
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 216
    .local v7, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v7, :cond_2

    .line 220
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 222
    goto :goto_1

    .line 224
    .end local v7    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    const-string/jumbo p1, "0"

    .line 228
    :cond_4
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lgpa;Lgpe$b;)V
    .locals 10
    .param p1, "param"    # Lgpa;
    .param p2, "progressListener"    # Lgpe$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 121
    if-nez p2, :cond_0

    .line 183
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Lgpe$1;

    invoke-direct {v0, p0, p2}, Lgpe$1;-><init>(Lgpe;Lgpe$b;)V

    .line 169
    .local v0, "progressObserver":Lgpd;
    sget-boolean v1, Lgpe;->b:Z

    .line 171
    .local v1, "uploadByLwp":Z
    if-eqz v1, :cond_1

    iget-object v2, p1, Lgpa;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v2, :cond_1

    sget-boolean v2, Lgpe;->c:Z

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p1, Lgpa;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    sget-wide v8, Lgpe;->a:J

    cmp-long v2, v6, v8

    if-gtz v2, :cond_4

    move v1, v3

    .line 175
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    iput v4, p1, Lgpa;->b:I

    .line 176
    iput-boolean v3, p1, Lgpa;->e:Z

    .line 178
    iget-object v2, p1, Lgpa;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lgpa;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v2, :cond_3

    .line 179
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v3

    iget-object v2, p1, Lgpa;->a:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lgpa;->i:Ljava/lang/String;

    .line 182
    :cond_3
    invoke-static {}, Lgpc;->a()Lgpc;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lgpc;->a(Landroid/content/Context;Lgpa;Lgpd;)V

    goto :goto_0

    :cond_4
    move v1, v4

    .line 172
    goto :goto_1
.end method
