.class public final Lhmr;
.super Ljava/lang/Object;
.source "MiniAppListDataManager.java"


# static fields
.field private static a:Lhmr;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static declared-synchronized a()Lhmr;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lhmr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhmr;->a:Lhmr;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lhmr;

    invoke-direct {v0}, Lhmr;-><init>()V

    sput-object v0, Lhmr;->a:Lhmr;

    .line 52
    :cond_0
    sget-object v0, Lhmr;->a:Lhmr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lhmr;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p0, "x0"    # Lhmr;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 35
    .line 1308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1310
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1311
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 1312
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 1313
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoe;

    .line 1314
    new-instance v4, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;-><init>()V

    .line 1315
    if-eqz v0, :cond_0

    .line 1316
    new-instance v5, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-direct {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;-><init>()V

    .line 1317
    const-string/jumbo v6, "my_applications"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1319
    const-string/jumbo v6, "applications_in_chat"

    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1320
    sget-object v6, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->MiniAppInChatItem:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->setItemType(Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;)V

    .line 1321
    iget-object v6, v0, Lhoe;->e:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setDesc(Ljava/lang/String;)V

    .line 1322
    iget-object v6, v0, Lhoe;->f:Ljava/lang/Long;

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setAppearTime(Ljava/lang/Long;)V

    .line 1327
    :goto_1
    iget-object v6, v0, Lhoe;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setMiniAppId(Ljava/lang/String;)V

    .line 1328
    iget-object v6, v0, Lhoe;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setLogo(Ljava/lang/String;)V

    .line 1329
    iget-boolean v6, v0, Lhoe;->g:Z

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setStickyStatus(Z)V

    .line 1330
    iget-object v6, v0, Lhoe;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setMiniAppName(Ljava/lang/String;)V

    .line 1331
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lhoe;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setJumpUrl(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v5, v4}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->setMiniAppItemModel(Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;)V

    .line 1334
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1324
    :cond_1
    sget-object v6, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Item:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->setItemType(Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;)V

    goto :goto_1

    .line 35
    :cond_2
    return-object v2
.end method

.method static synthetic a(Lhmr;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lhmr;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 35
    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1353
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 1354
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhoe;

    .line 1355
    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, v0, Lhoe;->d:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(IIZLhmc;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "maxLimit"    # I
    .param p3, "forceRefresh"    # Z
    .param p4, "netDataChangeListener"    # Lhmc;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 116
    if-gtz p2, :cond_0

    .line 117
    const/16 p2, 0x14

    .line 120
    :cond_0
    const-class v1, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 121
    .local v0, "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    new-instance v1, Lhmr$2;

    invoke-direct {v1, p0, p4, p3}, Lhmr$2;-><init>(Lhmr;Lhmc;Z)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->myMiniAppList(IILiyv;)V

    .line 150
    return-void
.end method

.method public final a(IZLhmc;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "forceRefresh"    # Z
    .param p3, "netDataChangeListener"    # Lhmc;

    .prologue
    .line 98
    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0, p2, p3}, Lhmr;->a(IIZLhmc;)V

    .line 103
    return-void
.end method
