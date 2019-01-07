.class public final Lgnf;
.super Lgly;
.source "SpaceMenuPicSaveToPhoneHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v4, "2"

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v4, "chat_image_save_to_space"

    invoke-interface {v2, v4, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lgnf;->a(Landroid/content/Context;Lgmb;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 50
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    iget-object v2, p2, Lgmb;->k:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 51
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v4

    iget-object v5, p2, Lgmb;->k:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    new-instance v6, Lgnf$1;

    invoke-direct {v6, p0, p1}, Lgnf$1;-><init>(Lgnf;Landroid/content/Context;)V

    invoke-interface {v4, v5, v3, v2, v6}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_1
.end method
