.class public final Lgfw;
.super Ljava/lang/Object;
.source "SpaceRecentDentryCache.java"


# static fields
.field private static final e:I

.field private static f:Lgfw;


# instance fields
.field public a:Lcom/alibaba/doraemon/image/ImageMagician;

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lggf;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lcom/alibaba/alimei/cspace/model/RecentOperationModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget v0, Lfzs$f;->recentDentryId:I

    sput v0, Lgfw;->e:I

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lgfw;->f:Lgfw;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lgfw;->c:Lfp;

    .line 45
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lgfw;->d:Lfp;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgfw;->b:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgfw;->h:Ljava/util/HashMap;

    .line 51
    iput-object p2, p0, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 52
    iget-object v0, p0, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 53
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lgfw$1;

    invoke-direct {v1, p0}, Lgfw$1;-><init>(Lgfw;)V

    const-class v2, Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageEventListener;

    iput-object v0, p0, Lgfw;->g:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 81
    iget-object v0, p0, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lgfw;->g:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic a(Lgfw;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lgfw;

    .prologue
    .line 37
    iget-object v0, p0, Lgfw;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 4

    .prologue
    .line 96
    const-class v2, Lgfw;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lgfw;->f:Lgfw;

    .line 97
    .local v0, "temp":Lgfw;
    const/4 v1, 0x0

    sput-object v1, Lgfw;->f:Lgfw;

    .line 98
    if-eqz v0, :cond_2

    .line 99
    iget-object v1, v0, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgfw;->g:Lcom/alibaba/doraemon/image/ImageEventListener;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, v0, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, v0, Lgfw;->g:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 101
    const/4 v1, 0x0

    iput-object v1, v0, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 102
    const/4 v1, 0x0

    iput-object v1, v0, Lgfw;->g:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 104
    :cond_0
    iget-object v1, v0, Lgfw;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, v0, Lgfw;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, v0, Lgfw;->h:Ljava/util/HashMap;

    .line 109
    :cond_1
    iget-object v1, v0, Lgfw;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 112
    iget-object v1, v0, Lgfw;->d:Lfp;

    invoke-virtual {v1}, Lfp;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    monitor-exit v2

    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized a(Landroid/app/Activity;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;

    .prologue
    .line 90
    const-class v1, Lgfw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgfw;->f:Lgfw;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lgfw;

    invoke-direct {v0, p0, p1}, Lgfw;-><init>(Landroid/app/Activity;Lcom/alibaba/doraemon/image/ImageMagician;)V

    sput-object v0, Lgfw;->f:Lgfw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "model"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    sget v0, Lgfw;->e:I

    iget-object v1, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static b()Lgfw;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lgfw;->f:Lgfw;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lgfw;->e:I

    return v0
.end method


# virtual methods
.method public final a(JLcom/alibaba/alimei/cspace/model/RecentOperationModel;)V
    .locals 1
    .param p1, "modelId"    # J
    .param p3, "model"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    .prologue
    .line 193
    if-nez p3, :cond_0

    .line 194
    iget-object v0, p0, Lgfw;->d:Lfp;

    .line 1132
    invoke-virtual {v0, p1, p2}, Lfp;->b(J)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lgfw;->d:Lfp;

    invoke-virtual {v0, p1, p2, p3}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z
    .locals 3
    .param p1, "model"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 128
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    iget-object v2, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    iget-object v0, p0, Lgfw;->h:Ljava/util/HashMap;

    .line 134
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
