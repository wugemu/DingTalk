.class Lcom/ut/mini/UTAnalytics$4;
.super Ljava/lang/Object;
.source "UTAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTAnalytics;->createTransferLogTask(Ljava/util/Map;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTAnalytics;

.field final synthetic val$aLogMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTAnalytics;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/ut/mini/UTAnalytics$4;->this$0:Lcom/ut/mini/UTAnalytics;

    iput-object p2, p0, Lcom/ut/mini/UTAnalytics$4;->val$aLogMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 561
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->a:Lajt;

    iget-object v1, p0, Lcom/ut/mini/UTAnalytics$4;->val$aLogMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Lajt;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
