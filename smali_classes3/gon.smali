.class public Lgon;
.super Ljava/lang/Object;
.source "SpaceRPC.java"


# static fields
.field private static volatile g:Lgon;


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

.field public b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

.field public c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

.field public d:Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

.field public e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

.field public f:Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    sput-object v0, Lgon;->g:Lgon;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    iput-object v0, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    .line 193
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    iput-object v0, p0, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    .line 194
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    iput-object v0, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    .line 195
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    iput-object v0, p0, Lgon;->d:Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 196
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    iput-object v0, p0, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    .line 197
    const-class v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    iput-object v0, p0, Lgon;->f:Lcom/alibaba/dingtalk/cspace/idl/service/DpOrgService;

    .line 198
    return-void
.end method

.method public static a()Lgon;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lgon;->g:Lgon;

    if-nez v0, :cond_1

    .line 202
    const-class v1, Lgon;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lgon;->g:Lgon;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lgon;

    invoke-direct {v0}, Lgon;-><init>()V

    sput-object v0, Lgon;->g:Lgon;

    .line 206
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    sget-object v0, Lgon;->g:Lgon;

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "stringId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lgon;)Ltl;
    .locals 2
    .param p0, "x0"    # Lgon;

    .prologue
    const/4 v1, 0x0

    .line 23433
    new-instance v0, Ltl;

    invoke-direct {v0}, Ltl;-><init>()V

    .line 24059
    iput-boolean v1, v0, Ltl;->c:Z

    .line 25043
    iput-boolean v1, v0, Ltl;->a:Z

    .line 23436
    const/4 v1, 0x0

    .line 25051
    iput-object v1, v0, Ltl;->b:Ljava/lang/String;

    .line 23437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26035
    iput-object v1, v0, Ltl;->d:Ljava/util/List;

    .line 164
    return-object v0
.end method

.method public static a(JIILcma;)V
    .locals 8
    .param p0, "oid"    # J
    .param p2, "start"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcem;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x64

    move-wide v2, p0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JIILcma;)V

    .line 265
    return-void
.end method

.method static synthetic a(Lgon;Lghz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 8
    .param p0, "x0"    # Lgon;
    .param p1, "x1"    # Lghz;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcma;

    .prologue
    const/4 v4, 0x0

    .line 164
    .line 22421
    if-eqz p6, :cond_2

    .line 22424
    if-eqz p1, :cond_3

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 22425
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 22428
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22429
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->a:Lghi;

    iget-object v0, v0, Lghi;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghg;

    .line 22430
    if-eqz v0, :cond_0

    .line 22434
    invoke-static {v0, p2}, Lgoo;->a(Lghg;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 22435
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22438
    :cond_1
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p1, Lghz;->c:Lghw;

    iget-object v1, v1, Lghw;->a:Lghi;

    iget-object v4, v1, Lghi;->a:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lgoj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcma;)V

    .line 22441
    :cond_2
    :goto_1
    return-void

    .line 22440
    :cond_3
    if-eqz p1, :cond_4

    .line 22441
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lghz;->b:Ljava/lang/String;

    invoke-interface {p6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22443
    :cond_4
    invoke-interface {p6, v4, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(JJLcma;)V
    .locals 9
    .param p1, "spaceId"    # J
    .param p3, "fileId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lgrh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2774
    .local p5, "listener":Lcma;, "Lcma<Lgrh;>;"
    if-nez p5, :cond_0

    .line 2831
    :goto_0
    return-void

    .line 2777
    :cond_0
    iget-object v0, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v0, :cond_1

    .line 2778
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "infoMediaInfo: mCSpaceService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    const-string/jumbo v0, "SERVICE_NULL"

    const-string/jumbo v1, "mCSpaceService is null"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2782
    :cond_1
    new-instance v7, Lghn;

    invoke-direct {v7}, Lghn;-><init>()V

    .line 2783
    .local v7, "param":Lghn;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lghn;->a:Ljava/lang/Long;

    .line 2784
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lghn;->b:Ljava/lang/String;

    .line 2786
    iget-object v8, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$49;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lgon$49;-><init>(Lgon;JJLcma;)V

    invoke-interface {v8, v7, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->infoMediaInfo(Lghn;Liyv;)V

    goto :goto_0
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lgon$42;

    invoke-direct {v1, p0, p1, p2, p3}, Lgon$42;-><init>(Lgon;JLcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public final a(JLjava/lang/String;Lggv;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "param"    # Lggv;
    .param p5, "authFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lggv;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    const-string/jumbo v2, "add"

    invoke-static {v0, v1, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v8, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$2;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lgon$2;-><init>(Lgon;Lcma;Ljava/lang/String;JLjava/lang/String;Lggv;)V

    invoke-interface {v8, p4, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->addDentry(Lggv;Liyv;)V

    .line 783
    return-void
.end method

.method public final a(JLjava/lang/String;ZLcma;)V
    .locals 9
    .param p1, "spaceId"    # J
    .param p3, "fileId"    # Ljava/lang/String;
    .param p4, "isAllUserEdit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Lgjp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2930
    .local p5, "listener":Lcma;, "Lcma<Lgjp;>;"
    if-nez p5, :cond_0

    .line 2976
    :goto_0
    return-void

    .line 2933
    :cond_0
    iget-object v1, p0, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    if-nez v1, :cond_1

    .line 2934
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "setGroupAllUserEdit: mOnlineDocIService is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgon$53;

    invoke-direct {v2, p0, p5}, Lgon$53;-><init>(Lgon;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2945
    :cond_1
    new-instance v0, Lgje;

    invoke-direct {v0}, Lgje;-><init>()V

    .line 2946
    .local v0, "param":Lgje;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lgje;->a:Ljava/lang/Long;

    .line 2947
    iput-object p3, v0, Lgje;->b:Ljava/lang/String;

    .line 2948
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lgje;->c:Ljava/lang/Boolean;

    .line 2949
    iget-object v8, p0, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    new-instance v1, Lgon$54;

    move-object v2, p0

    move-object v3, p5

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lgon$54;-><init>(Lgon;Lcma;JLjava/lang/String;Z)V

    invoke-interface {v8, v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->setGroupAllUserEdit(Lgje;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "nameNew"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 608
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 682
    :goto_0
    return-void

    .line 612
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "rename"

    invoke-static {v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v0, Lghv;

    invoke-direct {v0}, Lghv;-><init>()V

    .line 614
    .local v0, "param":Lghv;
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lghv;->c:Ljava/lang/Long;

    .line 615
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lghv;->b:Ljava/lang/String;

    .line 616
    iput-object p2, v0, Lghv;->a:Ljava/lang/String;

    .line 618
    iget-object v1, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v2, Lgon$81;

    invoke-direct {v2, p0, p1, p3, p2}, Lgon$81;-><init>(Lgon;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->renameDentry(Lghv;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 233
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    .line 234
    .local v0, "cSpaceService":Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lgon$1;

    invoke-direct {v2, p0, p3, p1, p2}, Lgon$1;-><init>(Lgon;Lcma;Ljava/lang/String;I)V

    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getConversationSpace(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    .line 259
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 12
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "replyId"    # J
    .param p7, "content"    # Ljava/lang/String;
    .param p8, "msgId"    # Ljava/lang/String;
    .param p9, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1580
    .local p6, "ats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p10, "listener":Lcma;, "Lcma<Lgqw;>;"
    if-nez p10, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1584
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1585
    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->alm_cmail_mail_no_content:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    :cond_1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_2

    .line 1590
    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_msg_reaction_comment_too_long:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1594
    :cond_2
    if-nez p6, :cond_3

    .line 1595
    new-instance p6, Ljava/util/HashMap;

    .end local p6    # "ats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-direct/range {p6 .. p6}, Ljava/util/HashMap;-><init>()V

    .line 1598
    .restart local p6    # "ats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_3
    new-instance v1, Lgon$17;

    move-object v2, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lgon$17;-><init>(Lgon;ILjava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1617
    .local v1, "callback":Lcmi;, "Lcmi<Lgqw;>;"
    iget-object v2, p0, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, p1

    move-object v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v11, v1

    invoke-interface/range {v2 .. v11}, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;->createCommentV1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLcma;)V
    .locals 9
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "aclType"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .line 2329
    if-nez p5, :cond_0

    .line 2392
    :goto_0
    return-void

    .line 2333
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2334
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lgon$35;

    invoke-direct {v3, p0, p5}, Lgon$35;-><init>(Lgon;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2343
    :cond_2
    new-instance v0, Lgkr;

    invoke-direct {v0}, Lgkr;-><init>()V

    .line 7109
    .local v0, "param":Lgkr;
    invoke-static {p1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2344
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lgkr;->a:Ljava/lang/Long;

    .line 8109
    invoke-static {p2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2345
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lgkr;->b:Ljava/lang/Long;

    .line 2346
    const/4 v2, 0x0

    iput-object v2, v0, Lgkr;->d:Ljava/util/List;

    .line 2347
    new-instance v8, Lgkt;

    invoke-direct {v8}, Lgkt;-><init>()V

    .line 2348
    .local v8, "policyTypeModel":Lgkt;
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v8, Lgkt;->a:Ljava/lang/Long;

    .line 2349
    iput-object v8, v0, Lgkr;->c:Lgkt;

    .line 2351
    new-instance v1, Lgon$36;

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lgon$36;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2391
    .local v1, "callback":Liyv;, "Liyv<Lgkh;>;"
    iget-object v2, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->createAcl(Lgkr;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IJLcma;)V
    .locals 19
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "aclType"    # J
    .param p6, "memberType"    # I
    .param p7, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Lcma",
            "<",
            "Lgnv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2398
    .local p5, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "callback":Lcma;, "Lcma<Lgnv;>;"
    if-nez p9, :cond_0

    .line 2485
    :goto_0
    return-void

    .line 2402
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p5, :cond_1

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2403
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lgon$37;

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    invoke-direct {v4, v0, v1}, Lgon$37;-><init>(Lgon;Lcma;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2412
    :cond_2
    new-instance v17, Lgkr;

    invoke-direct/range {v17 .. v17}, Lgkr;-><init>()V

    .line 9109
    .local v17, "param":Lgkr;
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2414
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lgkr;->a:Ljava/lang/Long;

    .line 10109
    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2415
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lgkr;->b:Ljava/lang/Long;

    .line 2417
    new-instance v14, Lgkt;

    invoke-direct {v14}, Lgkt;-><init>()V

    .line 2418
    .local v14, "aclTypeModel":Lgkt;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v14, Lgkt;->a:Ljava/lang/Long;

    .line 2419
    move-object/from16 v0, v17

    iput-object v14, v0, Lgkr;->c:Lgkt;

    .line 2421
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2422
    .local v7, "members":Ljava/util/List;, "Ljava/util/List<Lgkl;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2423
    .local v15, "id":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2427
    new-instance v16, Lgkl;

    invoke-direct/range {v16 .. v16}, Lgkl;-><init>()V

    .line 2428
    .local v16, "member":Lgkl;
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lgkl;->b:Ljava/lang/Integer;

    .line 2429
    move-object/from16 v0, v16

    iput-object v15, v0, Lgkl;->a:Ljava/lang/String;

    .line 2430
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lgkl;->c:Ljava/lang/Long;

    .line 2431
    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2434
    .end local v15    # "id":Ljava/lang/String;
    .end local v16    # "member":Lgkl;
    :cond_4
    move-object/from16 v0, v17

    iput-object v7, v0, Lgkr;->d:Ljava/util/List;

    .line 2436
    new-instance v2, Lgon$38;

    move-object/from16 v3, p0

    move-object/from16 v4, p9

    move-wide/from16 v5, p3

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-direct/range {v2 .. v13}, Lgon$38;-><init>(Lgon;Lcma;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)V

    .line 2484
    .local v2, "createAclCallback":Liyv;, "Liyv<Lgkh;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->createAcl(Lgkr;Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JZLcma;)V
    .locals 9
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "groupId"    # J
    .param p5, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JZ",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3142
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    if-nez p6, :cond_0

    .line 3191
    :goto_0
    return-void

    .line 3146
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3147
    :cond_1
    const-string/jumbo v2, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p6, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3151
    :cond_2
    new-instance v1, Lgon$59;

    move-object v2, p0

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lgon$59;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 3185
    .local v1, "callback":Liyv;, "Liyv<Lgkh;>;"
    new-instance v0, Lgkr;

    invoke-direct {v0}, Lgkr;-><init>()V

    .line 13109
    .local v0, "param":Lgkr;
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3186
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lgkr;->a:Ljava/lang/Long;

    .line 14109
    const-wide/16 v2, 0x0

    invoke-static {p2, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lgkr;->b:Ljava/lang/Long;

    .line 3188
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lgkr;->e:Ljava/lang/Boolean;

    .line 3189
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lgkr;->f:Ljava/lang/Long;

    .line 3190
    iget-object v2, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->setReadOnly(Lgkr;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 959
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "info"

    invoke-static {v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {p1, p2}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;)Lghl;

    move-result-object v0

    .line 962
    .local v0, "queryParam":Lghl;
    iget-object v1, v0, Lghl;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lghl;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgon$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lgon$5;-><init>(Lgon;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1027
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v1, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v2, Lgon$6;

    invoke-direct {v2, p0, p3, p1, p2}, Lgon$6;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->infoDentry(Lghl;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;Ljava/lang/String;I)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p4, "authFlag"    # Ljava/lang/String;
    .param p5, "conflictType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v1, 0x0

    .line 692
    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, v1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move v7, p5

    invoke-static/range {v0 .. v7}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lggv;

    move-result-object v5

    .line 693
    .local v5, "dentryParam":Lggv;
    const-wide/16 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lgon;->a(JLjava/lang/String;Lggv;Ljava/lang/String;Lcma;)V

    .line 694
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lgkl;ILcma;)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "dentryId"    # Ljava/lang/String;
    .param p3, "member"    # Lgkl;
    .param p4, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgkl;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4229
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p5, :cond_0

    .line 4278
    :goto_0
    return-void

    .line 4232
    :cond_0
    iget-object v0, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    if-nez v0, :cond_1

    .line 4233
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceRPC"

    const-string/jumbo v2, "hasAclPermission: mCSpaceAclService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgon$87;

    invoke-direct {v1, p0, p5}, Lgon$87;-><init>(Lgon;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4242
    :cond_1
    new-instance v6, Lgkf;

    invoke-direct {v6}, Lgkf;-><init>()V

    .line 22109
    .local v6, "param":Lgkf;
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4243
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lgkf;->a:Ljava/lang/Long;

    .line 4244
    iput-object p2, v6, Lgkf;->b:Ljava/lang/String;

    .line 4245
    iput-object p3, v6, Lgkf;->c:Lgkl;

    .line 4246
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lgkf;->d:Ljava/lang/Integer;

    .line 4247
    iget-object v7, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    new-instance v0, Lgon$88;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgon$88;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;Lgkl;)V

    invoke-interface {v7, v6, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->hasPermission(Lgkf;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lgkl;JLcma;)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "aclMemberModel"    # Lgkl;
    .param p4, "aclType"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgkl;",
            "J",
            "Lcma",
            "<",
            "Lgkl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2269
    .local p6, "listener":Lcma;, "Lcma<Lgkl;>;"
    if-nez p6, :cond_0

    .line 2323
    :goto_0
    return-void

    .line 2273
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2274
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgon$33;

    invoke-direct {v2, p0, p6}, Lgon$33;-><init>(Lgon;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2283
    :cond_2
    new-instance v6, Lgkn;

    invoke-direct {v6}, Lgkn;-><init>()V

    .line 6109
    .local v6, "param":Lgkn;
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2284
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v6, Lgkn;->a:Ljava/lang/Long;

    .line 2285
    iput-object p2, v6, Lgkn;->b:Ljava/lang/String;

    .line 2286
    iput-object p3, v6, Lgkn;->c:Lgkl;

    .line 2287
    new-instance v1, Lgkt;

    invoke-direct {v1}, Lgkt;-><init>()V

    iput-object v1, v6, Lgkn;->d:Lgkt;

    .line 2288
    iget-object v1, v6, Lgkn;->d:Lgkt;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lgkt;->a:Ljava/lang/Long;

    .line 2290
    new-instance v0, Lgon$34;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lgon$34;-><init>(Lgon;Lcma;Lgkl;Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    .local v0, "modifyCallback":Liyv;, "Liyv<Lgko;>;"
    iget-object v1, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v1, v6, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->modifyMember(Lgkn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lgkl;Lcma;)V
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "member"    # Lgkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgkl;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2189
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p4, :cond_0

    .line 2237
    :goto_0
    return-void

    .line 2193
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p3, :cond_2

    .line 2194
    :cond_1
    const-string/jumbo v2, "20170720"

    sget v3, Lfzs$h;->dt_cspace_invalid_result_tip:I

    .line 2195
    invoke-static {v3}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 2194
    invoke-static {v2, v3, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2199
    :cond_2
    new-instance v1, Lgki;

    invoke-direct {v1}, Lgki;-><init>()V

    .line 5109
    .local v1, "param":Lgki;
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2200
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lgki;->a:Ljava/lang/Long;

    .line 2201
    iput-object p2, v1, Lgki;->b:Ljava/lang/String;

    .line 2202
    iput-object p3, v1, Lgki;->c:Lgkl;

    .line 2204
    new-instance v0, Lgon$31;

    invoke-direct {v0, p0, p4, p1, p2}, Lgon$31;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    .local v0, "deleteCallback":Liyv;, "Liyv<Lgkk;>;"
    iget-object v2, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->deleteMemberFromGroups(Lgki;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcma;)V
    .locals 10
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "sortType"    # I
    .param p5, "loadMoreId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ltl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 457
    .local p6, "listener":Lcma;, "Lcma<Ltl;>;"
    invoke-static {p1, p2, p4, p5}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lghh;

    move-result-object v6

    .line 459
    .local v6, "queryParam":Lghh;
    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    .line 461
    const/4 v1, 0x3

    if-ne p4, v1, :cond_0

    .line 462
    const-string/jumbo v2, "listByTime"

    .line 468
    .local v2, "monitorName":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CSpace.RPC"

    invoke-static {v1, v3, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v0, Lgon$51;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object/from16 v7, p6

    move-object v8, p2

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lgon$51;-><init>(Lgon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lghh;Lcma;Ljava/lang/String;I)V

    .line 496
    .local v0, "callback":Lcmi;, "Lcmi<Lghz;>;"
    iget-object v1, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v6, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listDentry(Lghh;Liyv;)V

    .line 497
    return-void

    .line 463
    .end local v0    # "callback":Lcmi;, "Lcmi<Lghz;>;"
    .end local v2    # "monitorName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 464
    const-string/jumbo v2, "listByFolder"

    .restart local v2    # "monitorName":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v2    # "monitorName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "listByLetter"

    .restart local v2    # "monitorName":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 10
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 700
    move-object v0, p1

    move-object v2, v1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    move v7, v6

    .line 4294
    invoke-static/range {v0 .. v7}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lggv;

    move-result-object v7

    .line 701
    .local v7, "dentryParam":Lggv;
    const-wide/16 v4, 0x0

    move-object v3, p0

    move-object v6, p1

    move-object v8, v1

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lgon;->a(JLjava/lang/String;Lggv;Ljava/lang/String;Lcma;)V

    .line 702
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "mid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgob;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Lgob;>;"
    const-wide/16 v6, 0x0

    .line 3733
    new-instance v2, Lgjh;

    invoke-direct {v2}, Lgjh;-><init>()V

    .line 3735
    .local v2, "param":Lgjh;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3736
    .local v1, "lockParams":Ljava/util/List;, "Ljava/util/List<Lgjf;>;"
    new-instance v0, Lgjf;

    invoke-direct {v0}, Lgjf;-><init>()V

    .line 19109
    .local v0, "lockParam":Lgjf;
    invoke-static {p1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3737
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lgjf;->c:Ljava/lang/Long;

    .line 3738
    iput-object p2, v0, Lgjf;->a:Ljava/lang/String;

    .line 3739
    iput-object p3, v0, Lgjf;->d:Ljava/lang/String;

    .line 20109
    invoke-static {p4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3740
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v0, Lgjf;->e:Ljava/lang/Long;

    .line 3741
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3742
    iput-object v1, v2, Lgjh;->a:Ljava/util/List;

    .line 3744
    new-instance v3, Lgon$74;

    invoke-direct {v3, p0, p5}, Lgon$74;-><init>(Lgon;Lcma;)V

    .line 3751
    .local v3, "rpcCallback":Lcmg;, "Lcmg<Lgjg;Lgob;>;"
    iget-object v4, p0, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    invoke-interface {v4, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->acquireLockInfoV2(Lgjh;Liyv;)V

    .line 3752
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JLcma;)V
    .locals 10
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p4, "totalSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcma",
            "<",
            "Lgre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3578
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "listener":Lcma;, "Lcma<Lgre;>;"
    if-nez p6, :cond_0

    .line 3622
    :goto_0
    return-void

    .line 3582
    :cond_0
    new-instance v8, Lgkx;

    invoke-direct {v8}, Lgkx;-><init>()V

    .line 17109
    .local v8, "param":Lgkx;
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3583
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lgkx;->a:Ljava/lang/Long;

    .line 3584
    iput-object p2, v8, Lgkx;->e:Ljava/lang/String;

    .line 3585
    iput-object p3, v8, Lgkx;->b:Ljava/util/List;

    .line 3586
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lgkx;->d:Ljava/lang/Long;

    .line 3588
    iget-object v9, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$70;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lgon$70;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)V

    invoke-interface {v9, v8, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->dentryBatchAddCheck(Lgkx;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;ILcma;)V
    .locals 10
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p3, "expiredDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p4, "callback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;>;"
    const-wide/16 v8, 0x0

    .line 2496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2497
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lgon$39;

    invoke-direct {v5, p0, p4}, Lgon$39;-><init>(Lgon;Lcma;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2550
    :goto_0
    return-void

    .line 2506
    :cond_1
    new-instance v2, Lgjt;

    invoke-direct {v2}, Lgjt;-><init>()V

    .line 11109
    .local v2, "param":Lgjt;
    invoke-static {p1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2507
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lgjt;->a:Ljava/lang/Long;

    .line 2509
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2511
    .local v1, "fileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 2512
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_2

    .line 2516
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 12109
    invoke-static {v5, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2516
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2519
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_3
    iput-object v1, v2, Lgjt;->b:Ljava/util/List;

    .line 2520
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lgjt;->c:Ljava/lang/Integer;

    .line 2521
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lgjt;->d:Ljava/lang/Integer;

    .line 2523
    new-instance v3, Lgon$40;

    invoke-direct {v3, p0, p4}, Lgon$40;-><init>(Lgon;Lcma;)V

    .line 2549
    .local v3, "requestCallback":Liyv;, "Liyv<Lgjz;>;"
    iget-object v4, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v4, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->createShare(Lgjt;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcma;)V
    .locals 8
    .param p1, "spaceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3626
    .local p2, "dentryList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;>;>;"
    const/4 v0, 0x0

    .line 3627
    .local v0, "extFeatureTag":I
    invoke-static {}, Lglr;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3628
    const/4 v0, 0x1

    .line 17635
    :cond_0
    if-eqz p3, :cond_2

    .line 17638
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17639
    :cond_1
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceRPC"

    const-string/jumbo v3, "getDentryExtMap: param is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17641
    const-string/jumbo v1, "INVALID_PARAM"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 18693
    :cond_2
    :goto_0
    return-void

    .line 17702
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    .line 17703
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17646
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17647
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 17705
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18109
    const-wide/16 v4, 0x0

    invoke-static {p1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 17707
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 17708
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 17711
    new-instance v6, Lghh;

    invoke-direct {v6}, Lghh;-><init>()V

    .line 17712
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lghh;->d:Ljava/lang/Long;

    .line 17713
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lghh;->h:Ljava/lang/String;

    .line 17714
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Lghh;->i:Ljava/lang/Integer;

    .line 17715
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v2

    .line 17717
    goto :goto_1

    .line 17650
    :cond_8
    new-instance v2, Lgon$71;

    invoke-direct {v2, p0, p3, p2}, Lgon$71;-><init>(Lgon;Lcma;Ljava/util/List;)V

    .line 18689
    iget-object v3, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v3, :cond_9

    .line 18690
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v3, "SpaceRPC"

    const-string/jumbo v4, "mCSpaceService: mCSpaceService is null"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18692
    const-string/jumbo v1, "SERVICE_NULL"

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v3}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18696
    :cond_9
    iget-object v3, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v4, Lgon$72;

    invoke-direct {v4, p0, v2}, Lgon$72;-><init>(Lgon;Lcma;)V

    invoke-interface {v3, v1, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listDentryExt(Ljava/util/List;Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;ZLcma;)V
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Lgic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Lgic;>;"
    const/4 v4, 0x0

    .line 3860
    if-nez p3, :cond_0

    .line 3912
    :goto_0
    return-void

    .line 3863
    :cond_0
    iget-object v2, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v2, :cond_1

    .line 3864
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceRPC"

    const-string/jumbo v4, "infoSpace: mCSpaceService is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    const-string/jumbo v2, "SERVICE_NULL"

    const-string/jumbo v3, "mCSpaceService is null"

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3868
    :cond_1
    new-instance v1, Lghm;

    invoke-direct {v1}, Lghm;-><init>()V

    .line 21109
    .local v1, "param":Lghm;
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3869
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lghm;->b:Ljava/lang/Long;

    .line 3870
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lghm;->a:Ljava/lang/Boolean;

    .line 3871
    new-instance v0, Lgon$77;

    invoke-direct {v0, p0, p3, p1, v4}, Lgon$77;-><init>(Lgon;Lcma;Ljava/lang/String;Z)V

    .line 3911
    .local v0, "callback":Lcmi;, "Lcmi<Lghz;>;"
    iget-object v2, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->infoSpace(Lghm;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;IJJLcma;)V
    .locals 15
    .param p2, "memberType"    # I
    .param p3, "groupId"    # J
    .param p5, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJJ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1978
    .line 4982
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    if-eqz p7, :cond_1

    .line 4986
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4987
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lgon$26;

    move-object/from16 v0, p7

    invoke-direct {v3, p0, v0}, Lgon$26;-><init>(Lgon;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4993
    :cond_1
    :goto_0
    return-void

    .line 4996
    :cond_2
    new-instance v14, Lgkd;

    invoke-direct {v14}, Lgkd;-><init>()V

    .line 4997
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4999
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5000
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 5004
    new-instance v4, Lgkl;

    invoke-direct {v4}, Lgkl;-><init>()V

    .line 5005
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lgkl;->b:Ljava/lang/Integer;

    .line 5006
    iput-object v2, v4, Lgkl;->a:Ljava/lang/String;

    .line 5007
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lgkl;->c:Ljava/lang/Long;

    .line 5008
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5011
    :cond_4
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v14, Lgkd;->a:Ljava/lang/Long;

    .line 5012
    iput-object v5, v14, Lgkd;->b:Ljava/util/List;

    .line 5014
    new-instance v2, Lgon$27;

    const-wide/16 v6, 0x3e9

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v2 .. v13}, Lgon$27;-><init>(Lgon;Lcma;Ljava/util/List;JLjava/util/List;IJJ)V

    .line 5049
    iget-object v3, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v3, v14, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->addMember(Lgkd;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;JLcma;)V
    .locals 8
    .param p2, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;J",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lgnu;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2106
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lgnu;>;"
    .local p4, "callback":Lcma;, "Lcma<Ljava/util/List<Lgnu;>;>;"
    if-nez p4, :cond_0

    .line 2159
    :goto_0
    return-void

    .line 2110
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2111
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lgon$28;

    invoke-direct {v2, p0, p4}, Lgon$28;-><init>(Lgon;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2120
    :cond_2
    new-instance v6, Lgkj;

    invoke-direct {v6}, Lgkj;-><init>()V

    .line 2121
    .local v6, "param":Lgkj;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v6, Lgkj;->a:Ljava/lang/Long;

    .line 2123
    invoke-static {p1}, Lgnu;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lgkj;->b:Ljava/util/List;

    .line 2125
    new-instance v0, Lgon$29;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lgon$29;-><init>(Lgon;Lcma;Ljava/util/List;J)V

    .line 2158
    .local v0, "deleteCallback":Liyv;, "Liyv<Lgkk;>;"
    iget-object v1, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v1, v6, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->deleteMember(Lgkj;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 791
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_file_more_delete"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 792
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 793
    :cond_0
    if-eqz p2, :cond_1

    .line 794
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 890
    :cond_1
    :goto_0
    return-void

    .line 798
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v2, "deleteDentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v3, "deleteFromLocalList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v4, "deleteFromServerList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v9, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 805
    .local v7, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 806
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 808
    :cond_3
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 809
    .local v8, "id":Ljava/lang/String;
    :goto_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 808
    .end local v8    # "id":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 814
    .end local v7    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 817
    invoke-static {}, Lgpc;->a()Lgpc;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    invoke-static {v3}, Lgpc;->a(Ljava/util/List;)V

    .line 820
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_8

    .line 822
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 823
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Lgoj;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 825
    :cond_7
    if-eqz p2, :cond_1

    .line 826
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 832
    :cond_8
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CSpace.RPC"

    const-string/jumbo v5, "delete"

    invoke-static {v0, v1, v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Lgoo;->a(Ljava/lang/String;Ljava/util/List;Z)Lghc;

    move-result-object v10

    .line 835
    .local v10, "param":Lghc;
    iget-object v11, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v0, Lgon$3;

    move-object v1, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lgon$3;-><init>(Lgon;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcma;Ljava/util/List;)V

    invoke-interface {v11, v10, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->deleteDentry(Lghc;Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V
    .locals 16
    .param p2, "targetSpaceId"    # Ljava/lang/String;
    .param p3, "targetPath"    # Ljava/lang/String;
    .param p4, "targetFolderId"    # Ljava/lang/String;
    .param p5, "isCut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1098
    .local p1, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lgoo;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lgik;

    move-result-object v13

    .line 1101
    .local v13, "param":Lgik;
    if-eqz p5, :cond_0

    .line 1102
    const-string/jumbo v7, "repath"

    .line 1116
    .local v7, "monitorName":Ljava/lang/String;
    :goto_0
    sget-object v5, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v6, "CSpace.RPC"

    invoke-static {v5, v6, v7}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-static {}, Lgoo;->a()Lgha;

    move-result-object v5

    iput-object v5, v13, Lgik;->a:Lgha;

    .line 1119
    move-object/from16 v0, p0

    iget-object v15, v0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v5, Lgon$8;

    move-object/from16 v6, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move/from16 v11, p5

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v13}, Lgon$8;-><init>(Lgon;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lgik;)V

    invoke-interface {v15, v13, v5}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->transferDentry(Lgik;Liyv;)V

    .line 1198
    return-void

    .line 1104
    .end local v7    # "monitorName":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1105
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v14

    .line 1106
    .local v14, "srcSpaceId":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1107
    const-string/jumbo v7, "copy"

    .restart local v7    # "monitorName":Ljava/lang/String;
    goto :goto_0

    .line 1109
    .end local v7    # "monitorName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "transfer"

    .line 1111
    .restart local v7    # "monitorName":Ljava/lang/String;
    goto :goto_0

    .line 1112
    .end local v7    # "monitorName":Ljava/lang/String;
    .end local v14    # "srcSpaceId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "transfer"

    .restart local v7    # "monitorName":Ljava/lang/String;
    goto :goto_0
.end method

.method public final a(Ljava/util/List;ZLcma;)V
    .locals 4
    .param p2, "byDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcma",
            "<",
            "Lgie;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 544
    .local p1, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lcma;, "Lcma<Lgie;>;"
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace.RPC"

    const-string/jumbo v3, "listSpace"

    invoke-static {v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {p1, p2}, Lgoo;->a(Ljava/util/List;Z)Lgid;

    move-result-object v0

    .line 546
    .local v0, "queryParam":Lgid;
    iget-object v1, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v2, Lgon$73;

    invoke-direct {v2, p0, p3, p1, p2}, Lgon$73;-><init>(Lgon;Lcma;Ljava/util/List;Z)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->listSpace(Lgid;Liyv;)V

    .line 599
    return-void
.end method

.method public final b(Ljava/lang/String;ILcma;)V
    .locals 3
    .param p1, "objetcId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lgqx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1688
    .local p3, "listener":Lcma;, "Lcma<Lgqx;>;"
    if-nez p3, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1692
    :cond_0
    new-instance v0, Lgon$20;

    invoke-direct {v0, p0, p3, p1, p2}, Lgon$20;-><init>(Lgon;Lcma;Ljava/lang/String;I)V

    .line 1706
    .local v0, "callback":Lcmi;, "Lcmi<Lgqx;>;"
    iget-object v1, p0, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;->infoTopic(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1036
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {p1, p2}, Lgoo;->a(Ljava/lang/String;Ljava/lang/String;)Lghl;

    move-result-object v0

    .line 1037
    .local v0, "queryParam":Lghl;
    iget-object v1, p0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v2, Lgon$7;

    invoke-direct {v2, p0, p3, p1, p2}, Lgon$7;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->infoDeletedDentry(Lghl;Liyv;)V

    .line 1084
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgnw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3194
    .local p3, "listener":Lcma;, "Lcma<Lgnw;>;"
    if-nez p3, :cond_0

    .line 3238
    :goto_0
    return-void

    .line 3198
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3199
    :cond_1
    const-string/jumbo v2, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3203
    :cond_2
    new-instance v1, Lgkv;

    invoke-direct {v1}, Lgkv;-><init>()V

    .line 15109
    .local v1, "param":Lgkv;
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3204
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lgkv;->a:Ljava/lang/Long;

    .line 3205
    iput-object p2, v1, Lgkv;->b:Ljava/lang/String;

    .line 3208
    new-instance v0, Lgon$60;

    invoke-direct {v0, p0, p3}, Lgon$60;-><init>(Lgon;Lcma;)V

    .line 3237
    .local v0, "callback":Liyv;, "Liyv<Lgkw;>;"
    iget-object v2, p0, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->isReadOnly(Lgkv;Liyv;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3477
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    if-nez v2, :cond_1

    .line 3478
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceRPC"

    const-string/jumbo v4, "mOnlineDocIService: mCSpaceService is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    if-eqz p3, :cond_0

    .line 3481
    const-string/jumbo v2, "SERVICE_NULL"

    sget v3, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v3}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    :cond_0
    :goto_0
    return-void

    .line 3485
    :cond_1
    new-instance v1, Lgjf;

    invoke-direct {v1}, Lgjf;-><init>()V

    .line 16109
    .local v1, "param":Lgjf;
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3486
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lgjf;->c:Ljava/lang/Long;

    .line 3487
    iput-object p2, v1, Lgjf;->a:Ljava/lang/String;

    .line 3488
    new-instance v0, Lgjh;

    invoke-direct {v0}, Lgjh;-><init>()V

    .line 3489
    .local v0, "listParam":Lgjh;
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lgjh;->a:Ljava/util/List;

    .line 3490
    iget-object v2, p0, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    new-instance v3, Lgon$68;

    invoke-direct {v3, p0, p3, p1, p2}, Lgon$68;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->releaseLock(Lgjh;Liyv;)V

    goto :goto_0
.end method
