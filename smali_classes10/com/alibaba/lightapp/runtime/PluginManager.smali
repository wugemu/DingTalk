.class public abstract Lcom/alibaba/lightapp/runtime/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/PluginManager$Message;,
        Lcom/alibaba/lightapp/runtime/PluginManager$Runtime;,
        Lcom/alibaba/lightapp/runtime/PluginManager$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field protected final b:Lhde;

.field c:Lhdm;

.field d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lhdl;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/content/BroadcastReceiver;

.field public f:Ljava/util/concurrent/Executor;

.field g:Lhdk;

.field h:Landroid/view/View;

.field public i:Lcom/alibaba/lightapp/runtime/PluginManager;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/ActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Lcom/alibaba/doraemon/statistics/Statistics;


# direct methods
.method public constructor <init>(Lhde;)V
    .locals 2
    .param p1, "ctx"    # Lhde;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->j:Ljava/util/Map;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->k:Z

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    .line 121
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    .line 122
    invoke-interface {p1}, Lhde;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lhde;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    .line 123
    new-instance v0, Lhdm;

    invoke-direct {v0}, Lhdm;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->c:Lhdm;

    .line 124
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    check-cast p1, Landroid/view/View;

    .end local p1    # "ctx":Lhde;
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->h:Landroid/view/View;

    .line 128
    :cond_0
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->l:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1748
    const-string/jumbo v0, "runtime"

    new-instance v1, Lcom/alibaba/lightapp/runtime/PluginManager$Runtime;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/PluginManager$Runtime;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 1749
    const-string/jumbo v0, "runtime.message"

    new-instance v1, Lcom/alibaba/lightapp/runtime/PluginManager$Message;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/PluginManager$Message;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 131
    return-void

    .line 122
    .restart local p1    # "ctx":Lhde;
    :cond_1
    invoke-interface {p1}, Lhde;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 769
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;
    .locals 12
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 540
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->service:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->c(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/Plugin;

    move-result-object v5

    .line 541
    .local v5, "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    if-nez v5, :cond_0

    .line 542
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cannot find plugin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->service:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v5    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    :catch_0
    move-exception v8

    .line 646
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    iget-boolean v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->async:Z

    if-eqz v0, :cond_6

    .line 649
    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 650
    const-string/jumbo v0, ""

    .line 653
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 545
    .restart local v5    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 549
    .local v7, "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Plugin;>;"
    :try_start_2
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->action:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/lightapp/runtime/Plugin;->ACTION_PARAMTYPES:[Ljava/lang/Class;

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 555
    .local v9, "mtd":Ljava/lang/reflect/Method;
    move-object v4, v9

    .local v4, "mtdAction":Ljava/lang/reflect/Method;
    :try_start_3
    const-class v0, Lcom/alibaba/lightapp/runtime/PluginAction;

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 556
    const-class v0, Lcom/alibaba/lightapp/runtime/PluginAction;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alibaba/lightapp/runtime/PluginAction;

    .line 557
    .local v6, "annotationAction":Lcom/alibaba/lightapp/runtime/PluginAction;
    iget-boolean v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->async:Z

    if-nez v0, :cond_1

    invoke-interface {v6}, Lcom/alibaba/lightapp/runtime/PluginAction;->async()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->g:Lhdk;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->g:Lhdk;

    new-instance v1, Lcom/alibaba/lightapp/runtime/PluginManager$3;

    invoke-direct {v1, p0, v4, v5, p1}, Lcom/alibaba/lightapp/runtime/PluginManager$3;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v0, p1, v1}, Lhdk;->a(Lcom/alibaba/lightapp/runtime/ActionRequest;Lhdd;)V

    .line 587
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 551
    .end local v4    # "mtdAction":Ljava/lang/reflect/Method;
    .end local v6    # "annotationAction":Lcom/alibaba/lightapp/runtime/PluginAction;
    .end local v9    # "mtd":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/Exception;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v11, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->service:Ljava/lang/String;

    aput-object v11, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v11, "."

    aput-object v11, v1, v2

    const/4 v2, 0x2

    iget-object v11, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->action:Ljava/lang/String;

    aput-object v11, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v11, " is invalid"

    aput-object v11, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    .restart local v4    # "mtdAction":Ljava/lang/reflect/Method;
    .restart local v6    # "annotationAction":Lcom/alibaba/lightapp/runtime/PluginAction;
    .restart local v9    # "mtd":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {p0, v4, v5, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 590
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->g:Lhdk;

    if-eqz v0, :cond_4

    .line 591
    new-instance v3, Lcom/alibaba/lightapp/runtime/PluginManager$a;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/PluginManager$a;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    .line 592
    .local v3, "lock":Lcom/alibaba/lightapp/runtime/PluginManager$a;
    new-instance v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/PluginManager$4;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;Lcom/alibaba/lightapp/runtime/ActionRequest;Lcom/alibaba/lightapp/runtime/PluginManager$a;Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/Runnable;)V

    .line 628
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/PluginManager$a;->a()V

    .line 629
    iget-object v0, v3, Lcom/alibaba/lightapp/runtime/PluginManager$a;->a:Lcom/alibaba/lightapp/runtime/ActionResponse;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 632
    .end local v3    # "lock":Lcom/alibaba/lightapp/runtime/PluginManager$a;
    :cond_4
    invoke-virtual {p0, v4, v5, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    .line 633
    .local v10, "pluginResult":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v10, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 634
    invoke-virtual {v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto/16 :goto_0

    .line 636
    .end local v10    # "pluginResult":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :catch_2
    move-exception v8

    .line 637
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 639
    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 643
    .end local v6    # "annotationAction":Lcom/alibaba/lightapp/runtime/PluginAction;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Illegal action"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 652
    .end local v4    # "mtdAction":Ljava/lang/reflect/Method;
    .end local v5    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    .end local v7    # "clsPlugin":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Plugin;>;"
    .end local v9    # "mtd":Ljava/lang/reflect/Method;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 653
    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/lightapp/runtime/ActionRequest;ZLjava/lang/String;)V
    .locals 7
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .param p2, "isSuccess"    # Z
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    if-eqz p1, :cond_0

    .line 713
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->service:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "."

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->action:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "jsApiName":Ljava/lang/String;
    iget v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->fromType:I

    packed-switch v4, :pswitch_data_0

    .line 726
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 727
    .local v3, "url":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 728
    const-string/jumbo v4, "JsApi"

    invoke-static {v4, v1, v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v1    # "jsApiName":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 716
    .restart local v1    # "jsApiName":Ljava/lang/String;
    :pswitch_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;-><init>()V

    .line 717
    .local v0, "jsApi":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    .line 718
    .local v2, "miniAppInfo":Lcom/alibaba/lightapp/runtime/ActionRequest$b;
    if-eqz v2, :cond_1

    .line 719
    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->miniAppId:Ljava/lang/String;

    .line 721
    :cond_1
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->jsApiName:Ljava/lang/String;

    .line 722
    iput-boolean p2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;->status:Z

    .line 723
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappJsApi(Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;)V

    goto :goto_0

    .line 730
    .end local v0    # "jsApi":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniJsApi;
    .end local v2    # "miniAppInfo":Lcom/alibaba/lightapp/runtime/ActionRequest$b;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "JsApi"

    invoke-virtual {p0, v4, v1, p3, v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 256
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "jsApiName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "callSuccess"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitJsApiStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 299
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "jsApiName"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitJsApiStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 817
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/Plugin;
    .locals 10
    .param p1, "serviceName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 822
    const/4 v6, 0x0

    .line 823
    .local v6, "shouldInit":Z
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2878
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 2898
    .local v3, "loader":Ljava/lang/ClassLoader;
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->c:Lhdm;

    .line 3109
    iget-object v7, v7, Lhdm;->a:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 2899
    if-eqz v7, :cond_1

    .line 2900
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "className":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    move-object v4, v8

    .line 858
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_1
    return-object v4

    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    move-object v0, v8

    .line 2902
    goto :goto_0

    .line 831
    .restart local v0    # "className":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v0, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 834
    .local v5, "pluginClass":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/Plugin;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 840
    .local v4, "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    :goto_2
    :try_start_2
    invoke-virtual {v4, p0}, Lcom/alibaba/lightapp/runtime/Plugin;->setup(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    .line 841
    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/Plugin;)V

    .line 842
    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 843
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Lhdl;

    invoke-direct {v9, p1, v4}, Lhdl;-><init>(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V

    invoke-virtual {v7, p1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 844
    const/4 v6, 0x1

    .line 850
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .end local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    .end local v5    # "pluginClass":Ljava/lang/Class;
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhdl;

    .line 851
    .local v2, "entry":Lhdl;
    if-eqz v2, :cond_4

    .line 4016
    iget-object v4, v2, Lhdl;->a:Lcom/alibaba/lightapp/runtime/Plugin;

    .line 853
    .restart local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    if-nez v6, :cond_0

    .line 854
    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/Plugin;)V

    goto :goto_1

    .line 836
    .end local v2    # "entry":Lhdl;
    .end local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v3    # "loader":Ljava/lang/ClassLoader;
    .restart local v5    # "pluginClass":Ljava/lang/Class;
    :catch_0
    move-exception v7

    :try_start_3
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->c:Lhdm;

    invoke-virtual {v7, p1}, Lhdm;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/Plugin;

    move-result-object v4

    .line 839
    .restart local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    goto :goto_2

    .line 838
    .end local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    :catch_1
    move-exception v7

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->c:Lhdm;

    invoke-virtual {v7, p1}, Lhdm;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/Plugin;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    .restart local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    goto :goto_2

    .line 845
    .end local v4    # "plugin":Lcom/alibaba/lightapp/runtime/Plugin;
    .end local v5    # "pluginClass":Ljava/lang/Class;
    :catch_2
    move-exception v1

    .line 846
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    .restart local v2    # "entry":Lhdl;
    :cond_4
    move-object v4, v8

    .line 858
    goto :goto_1
.end method


# virtual methods
.method final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method a(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "mtd"    # Ljava/lang/reflect/Method;
    .param p2, "plugin"    # Lcom/alibaba/lightapp/runtime/Plugin;
    .param p3, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 660
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "light_check_request_permission_disabled_v2"

    .line 661
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    .line 708
    :goto_0
    return-object v2

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 667
    const-class v2, Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;

    .line 668
    .local v0, "needsPermission":Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
    if-eqz v0, :cond_2

    .line 669
    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;->value()[Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "permissions":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x401

    new-instance v4, Lcom/alibaba/lightapp/runtime/PluginManager$5;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/PluginManager$5;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-static {v2, v3, v1, v4}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 704
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0

    .line 708
    .end local v0    # "needsPermission":Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_2
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipUrl"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v0, p1}, Lhde;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "actionName"    # Ljava/lang/String;
    .param p4, "argsJson"    # Ljava/lang/String;
    .param p5, "callbackId"    # Ljava/lang/String;
    .param p6, "async"    # Z
    .param p7, "fromType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/alibaba/lightapp/runtime/ActionRequest$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/alibaba/lightapp/runtime/ActionRequest$b;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "actionName"    # Ljava/lang/String;
    .param p4, "argsJson"    # Ljava/lang/String;
    .param p5, "callbackId"    # Ljava/lang/String;
    .param p6, "async"    # Z
    .param p7, "fromType"    # I
    .param p8, "miniAppInfo"    # Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 202
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/ActionRequest;-><init>()V

    .line 204
    .local v2, "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    :try_start_0
    iput-object p2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->service:Ljava/lang/String;

    .line 205
    iput-object p3, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->action:Ljava/lang/String;

    .line 206
    iput-boolean p6, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->async:Z

    .line 207
    iput-object p1, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 208
    iput-object p5, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 209
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 210
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    invoke-direct {v4}, Lcom/alibaba/lightapp/runtime/ActionRequest$a;-><init>()V

    iput-object v4, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    .line 211
    move/from16 v0, p7

    iput v0, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->fromType:I

    .line 212
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    .line 215
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v4

    invoke-virtual {v4, p1}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v3

    .line 217
    .local v3, "tempMicroAppInfo":Lhfo$b;
    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    iget-object v5, v3, Lhfo$b;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/lightapp/runtime/ActionRequest$a;->a:Ljava/lang/String;

    .line 218
    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    iget-object v5, v3, Lhfo$b;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/lightapp/runtime/ActionRequest$a;->b:Ljava/lang/String;

    .line 219
    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->appInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$a;

    iget-object v5, v3, Lhfo$b;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/lightapp/runtime/ActionRequest$a;->c:Ljava/lang/String;

    .line 222
    const-string/jumbo v4, "hybrid_enable_api_monitor"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->j:Ljava/util/Map;

    iget-object v5, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_0
    const-string/jumbo v4, "JsApi"

    const-string/jumbo v5, "JsApi_Invoke"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "req= "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/ActionRequest;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, p1, v5, v6}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-direct {p0, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 241
    .end local v3    # "tempMicroAppInfo":Lhfo$b;
    :goto_0
    return-object v4

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 231
    if-eqz p6, :cond_1

    .line 232
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    invoke-virtual {p0, v4, p5}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v4, ""

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 236
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 238
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 241
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 10
    .param p1, "pluginResult"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 799
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 800
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v1

    .line 801
    .local v1, "status":Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v2, v1, :cond_2

    move v2, v3

    move-object v0, p2

    .line 804
    .end local p2    # "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    .local v0, "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    :goto_0
    const-string/jumbo v5, ""

    move-object v9, v5

    move v5, v2

    move-object v2, v9

    .end local v0    # "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    :goto_1
    invoke-direct {p0, v0, v5, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionRequest;ZLjava/lang/String;)V

    .line 807
    :cond_0
    const-string/jumbo v2, "JsApi"

    iget-object v5, p2, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    const-string/jumbo v6, "JsApi_Invoke_Response"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "req= "

    aput-object v8, v7, v4

    invoke-virtual {p2}, Lcom/alibaba/lightapp/runtime/ActionRequest;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "pluginResult= "

    aput-object v4, v7, v3

    const/4 v3, 0x3

    .line 808
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 807
    invoke-static {v2, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 810
    .end local v1    # "status":Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    :cond_1
    return-void

    .line 803
    .restart local v1    # "status":Lcom/alibaba/lightapp/runtime/ActionResponse$Status;
    .restart local p2    # "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    :cond_2
    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    if-ne v2, v1, :cond_0

    .line 804
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getMessage()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    move-object v0, p2

    goto :goto_1

    :cond_3
    move v2, v4

    move-object v0, p2

    .end local p2    # "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    .restart local v0    # "req":Lcom/alibaba/lightapp/runtime/ActionRequest;
    goto :goto_0
.end method

.method public final a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2167
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->j:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2168
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 2169
    if-eqz v0, :cond_0

    .line 2170
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    return-void
.end method

.method a(Lcom/alibaba/lightapp/runtime/Plugin;)V
    .locals 4
    .param p1, "plugin"    # Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 864
    instance-of v3, p1, Lcom/alibaba/lightapp/runtime/Component;

    if-eqz v3, :cond_0

    .line 865
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v3}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v2

    .line 866
    .local v2, "provider":Lcom/alibaba/lightapp/runtime/INuvaContext;
    if-eqz v2, :cond_0

    move-object v0, p1

    .line 867
    check-cast v0, Lcom/alibaba/lightapp/runtime/Component;

    .line 869
    .local v0, "component":Lcom/alibaba/lightapp/runtime/Component;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/Component;->getDelegateModelType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/lightapp/runtime/INuvaContext;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v1

    .line 870
    .local v1, "model":Lcom/alibaba/lightapp/runtime/Component$a;
    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/Component;->bindDelegateModel(Lcom/alibaba/lightapp/runtime/Component$a;)V

    .line 873
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/Component;
    .end local v1    # "model":Lcom/alibaba/lightapp/runtime/Component$a;
    .end local v2    # "provider":Lcom/alibaba/lightapp/runtime/INuvaContext;
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/Plugin;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plugin"    # Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 740
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->c:Lhdm;

    .line 2296
    if-eqz p2, :cond_0

    .line 2297
    iget-object v1, v0, Lhdm;->b:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lhdm;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 741
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "jsApiName"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string/jumbo v0, ""

    invoke-static {p1, p2, v0, p3, p4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method a(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 760
    :goto_0
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->k:Z

    .line 762
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->i:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 763
    iget-object p0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->i:Lcom/alibaba/lightapp/runtime/PluginManager;

    goto :goto_0

    .line 765
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 514
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->k:Z

    if-eqz v0, :cond_0

    .line 516
    const-string/jumbo v0, "backbutton"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 517
    const-string/jumbo v0, "goBack"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 518
    const/4 v0, 0x1

    .line 520
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v0}, Lhde;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->c:Lhdm;

    .line 2305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2306
    iget-object v1, v0, Lhdm;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    iget-object v0, v0, Lhdm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    :cond_0
    return-void
.end method

.method b(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 1
    .param p1, "mtdAction"    # Ljava/lang/reflect/Method;
    .param p2, "plugin"    # Lcom/alibaba/lightapp/runtime/Plugin;
    .param p3, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 774
    new-instance v0, Lcom/alibaba/lightapp/runtime/PluginManager$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/PluginManager$6;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/Runnable;)V

    .line 796
    return-void
.end method

.method final c()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 280
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v2}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v2}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    .local v0, "contextExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "extras_activity_intent"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 284
    .end local v0    # "contextExtras":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method final d()Lhde$a;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v0}, Lhde;->a()Lhde$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 526
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->k:Z

    if-eqz v0, :cond_0

    .line 527
    const-string/jumbo v0, "backbutton"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 528
    const-string/jumbo v0, "goBack"

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lhde;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    return-object v0
.end method
