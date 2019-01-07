.class public Lglo;
.super Ljava/lang/Object;
.source "SpaceUploadManager.java"


# static fields
.field public static volatile a:Lglo;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lglo;->c:Ljava/util/HashMap;

    .line 59
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lglo;->b:Landroid/content/Context;

    .line 60
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lglo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-class v1, Lglo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lglo;->a:Lglo;

    if-nez v0, :cond_1

    .line 45
    const-class v2, Lglo;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    sget-object v0, Lglo;->a:Lglo;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lglo;

    invoke-direct {v0, p0}, Lglo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lglo;->a:Lglo;

    .line 49
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    :try_start_2
    sget-object v0, Lglo;->a:Lglo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 49
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

    .line 44
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lglo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lglo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1, p2}, Lglo;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lglo;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lglo;

    .prologue
    .line 37
    iget-object v0, p0, Lglo;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lglo;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p0, "x0"    # Lglo;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcma;

    .prologue
    .line 37
    .line 1124
    new-instance v0, Lgrj;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lgrj;-><init>(IJJ)V

    .line 1125
    if-eqz p3, :cond_0

    .line 1126
    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1129
    :cond_0
    new-instance v1, Lgpa;

    invoke-direct {v1}, Lgpa;-><init>()V

    .line 1130
    iput-object p1, v1, Lgpa;->a:Ljava/lang/Object;

    .line 1131
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v2

    iput-boolean v2, v1, Lgpa;->c:Z

    .line 1132
    const/4 v2, 0x2

    iput v2, v1, Lgpa;->g:I

    .line 1133
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v2

    new-instance v3, Lglo$2;

    invoke-direct {v3, p0, p3, p2, v0}, Lglo$2;-><init>(Lglo;Lcma;Ljava/lang/String;Lgrj;)V

    invoke-virtual {v2, v1, v3}, Lgpe;->a(Lgpa;Lgpe$b;)V

    .line 37
    return-void
.end method

.method static synthetic b(Lglo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lglo;

    .prologue
    .line 37
    iget-object v0, p0, Lglo;->b:Landroid/content/Context;

    return-object v0
.end method
