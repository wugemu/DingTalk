.class public final Lgln;
.super Ljava/lang/Object;
.source "SpaceTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgln$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/alibaba/wukong/im/Conversation;

.field c:Lcma;

.field public d:Lgln$a;

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "callback"    # Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcma;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "spaceDos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    const-wide/16 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    .line 52
    iput-wide v2, p0, Lgln;->g:J

    .line 53
    iput-wide v2, p0, Lgln;->h:J

    .line 59
    iput-object p1, p0, Lgln;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 61
    iput-object p3, p0, Lgln;->e:Ljava/util/LinkedList;

    .line 62
    iput-object p4, p0, Lgln;->c:Lcma;

    .line 63
    return-void
.end method

.method private a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 441
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 442
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :goto_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void

    .line 441
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lgln;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgln;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lgln;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lgln;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lgln;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 42
    .line 1366
    const-string/jumbo v0, "transfererror"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transfererror code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v0, p0, Lgln;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1368
    const-string/jumbo v0, "processTransferResult"

    const-string/jumbo v1, "null context"

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :goto_0
    return-void

    .line 1372
    :cond_0
    if-eqz p2, :cond_5

    .line 1373
    invoke-static {p2}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1374
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1375
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceTransferManager"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "processTransferResult spaceId diff !!! spaceDo.fileId = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 1376
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", currentSpace = "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", spaceDo.spaceId = "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1377
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1375
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_1
    invoke-static {}, Lgpr;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 2109
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1379
    cmp-long v1, v2, v6

    if-gtz v1, :cond_3

    .line 1380
    :cond_2
    iput-object p1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 1382
    :cond_3
    invoke-virtual {p0, v0}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1384
    iget-object v1, p0, Lgln;->c:Lcma;

    if-eqz v1, :cond_4

    .line 1386
    :try_start_0
    iget-object v1, p0, Lgln;->c:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lgln;->b()V

    goto :goto_0

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    const-string/jumbo v1, "processTransferResult"

    const-string/jumbo v2, "throw exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v1, v2, v3}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1393
    :cond_5
    iget-object v0, p0, Lgln;->c:Lcma;

    if-eqz v0, :cond_b

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1394
    const-string/jumbo v0, "13026000"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1395
    iget-wide v0, p0, Lgln;->h:J

    iget-wide v2, p0, Lgln;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    iget-wide v0, p0, Lgln;->g:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    .line 1396
    :cond_6
    iget-wide v0, p0, Lgln;->h:J

    iput-wide v0, p0, Lgln;->g:J

    .line 1398
    :cond_7
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1399
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    iget-object v0, p0, Lgln;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lgln;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1402
    :cond_8
    const-string/jumbo v0, "13023009"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1404
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1405
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    iget-object v0, p0, Lgln;->c:Lcma;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, p4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1408
    :cond_9
    const-string/jumbo v0, "13020005"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1410
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1411
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v0, p0, Lgln;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lgln;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_no_auth_to_send:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1415
    :cond_a
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1416
    iget-object v0, p0, Lgln;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lgln;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lgln;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1421
    :cond_b
    iget-object v0, p0, Lgln;->c:Lcma;

    if-eqz v0, :cond_4

    .line 1422
    iget-object v0, p0, Lgln;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, p0, Lgln;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lgln$1;

    invoke-direct {v0, p0}, Lgln$1;-><init>(Lgln;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    .line 83
    return-void
.end method

.method a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V
    .locals 10
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "currentSpace"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    iget-wide v4, p0, Lgln;->g:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    iget-wide v4, p0, Lgln;->h:J

    iget-wide v8, p0, Lgln;->g:J

    cmp-long v0, v4, v8

    if-ltz v0, :cond_2

    .line 276
    const-string/jumbo v0, "executeCopy"

    const-string/jumbo v2, "\u5927\u4e8e\u4e0a\u6b21\u5bb9\u91cf\u4e0a\u9650\uff0c\u65e0\u9700\u91cd\u590d\u6267\u884c"

    invoke-direct {p0, p1, v0, v2, v3}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lgln;->b()V

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    if-nez p1, :cond_3

    .line 282
    const-string/jumbo v0, "executeCopy"

    const-string/jumbo v2, "null dentryModel"

    invoke-direct {p0, p1, v0, v2, v3}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lgln;->c:Lcma;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lgln;->c:Lcma;

    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->send_fail:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .local v1, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v6, Lgln$4;

    invoke-direct {v6, p0, p1, p2}, Lgln$4;-><init>(Lgln;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V

    .line 328
    .local v6, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v0, p0, Lgln;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 329
    const-class v2, Lcma;

    iget-object v0, p0, Lgln;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v6, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    check-cast v6, Lcma;

    .line 333
    .restart local v6    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    :cond_4
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v6}, Lgon;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method

.method a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 6
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v2, 0x1f7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string/jumbo v2, "appendSpaceType"

    const-string/jumbo v3, "null spaceDo"

    invoke-virtual {p0, p1, v2, v3, v4}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 341
    :cond_0
    iget v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v3, v5, :cond_2

    .line 342
    iget-object v2, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 343
    const/16 v2, 0x1f6

    .line 359
    :cond_1
    :goto_1
    iput v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_0

    .line 344
    :cond_2
    iget-object v3, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 346
    iget-object v3, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 347
    .local v0, "orgId":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 348
    iget-object v3, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 349
    invoke-static {p1}, Lgpv;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    iput v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x1f4

    goto :goto_2

    .line 353
    .end local v0    # "orgId":J
    :cond_4
    iput-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 354
    iget-object v3, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 355
    iput-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    .line 359
    :goto_3
    invoke-static {p1}, Lgpv;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v2, 0x1f5

    goto :goto_1

    .line 357
    :cond_5
    iget-object v3, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->cid:Ljava/lang/String;

    goto :goto_3
.end method

.method a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 430
    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "SpaceTransferManager: "

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ", conversationId = "

    aput-object v3, v2, v1

    const/4 v3, 0x3

    iget-object v1, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    .line 431
    :goto_0
    aput-object v1, v2, v3

    const/4 v1, 0x4

    const-string/jumbo v3, ", spaceId = "

    aput-object v3, v2, v1

    const/4 v3, 0x5

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    aput-object v1, v2, v3

    const/4 v1, 0x6

    const-string/jumbo v3, ", fileId = "

    aput-object v3, v2, v1

    const/4 v3, 0x7

    if-nez p1, :cond_2

    const-string/jumbo v1, "null"

    :goto_2
    aput-object v1, v2, v3

    const/16 v1, 0x8

    const-string/jumbo v3, ", isEncrypt = "

    aput-object v3, v2, v1

    const/16 v3, 0x9

    if-nez p1, :cond_3

    const-string/jumbo v1, "null"

    .line 434
    :goto_3
    aput-object v1, v2, v3

    const/16 v1, 0xa

    const-string/jumbo v3, ", messageContentType = "

    aput-object v3, v2, v1

    const/16 v3, 0xb

    if-nez p1, :cond_4

    const-string/jumbo v1, "null"

    .line 435
    :goto_4
    aput-object v1, v2, v3

    .line 430
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceTransferManager"

    const/4 v3, 0x0

    .line 437
    invoke-static {v0, p3, p4, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void

    .line 430
    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 431
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    .line 434
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 435
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 89
    :goto_0
    iget-object v1, p0, Lgln;->e:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lgln;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 91
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lgln;->d:Lgln$a;

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lgln;->d:Lgln$a;

    invoke-interface {v1, v0, p0}, Lgln$a;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lgln;)V

    .line 104
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    :goto_1
    return-void

    .line 95
    .restart local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1
    invoke-virtual {p0, v0}, Lgln;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto :goto_1

    .line 99
    :cond_2
    const-string/jumbo v1, "seqSendSpaceMessage"

    const-string/jumbo v2, "null spaceDo"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lgln;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 5
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 450
    if-nez p1, :cond_0

    .line 451
    const-string/jumbo v0, "proceed"

    const-string/jumbo v1, "null spaceDo"

    invoke-virtual {p0, p1, v0, v1, v4}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lgln;->b()V

    .line 1114
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iput-wide v2, p0, Lgln;->h:J

    .line 1112
    if-eqz p1, :cond_1

    iget-object v1, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_2

    .line 1113
    :cond_1
    const-string/jumbo v0, "checkSpaceMessage"

    const-string/jumbo v1, "null spaceDo or conversation"

    invoke-virtual {p0, p1, v0, v1, v4}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1117
    :cond_2
    iget v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v1, v0, :cond_3

    move v1, v0

    .line 1118
    :goto_1
    if-eqz v1, :cond_4

    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 1119
    :goto_2
    new-instance v2, Lgln$2;

    invoke-direct {v2, p0, p1}, Lgln$2;-><init>(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1158
    iget-object v3, p0, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3, v1, v0, v2}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V

    goto :goto_0

    .line 1117
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 1118
    :cond_4
    const/16 v0, 0x1f4

    goto :goto_2
.end method
