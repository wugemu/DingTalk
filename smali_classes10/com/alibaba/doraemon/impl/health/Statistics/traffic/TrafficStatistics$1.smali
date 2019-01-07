.class Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$1;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$1;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

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
    .line 63
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$1;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$1;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->getsInstance(Landroid/content/Context;Lcom/alibaba/doraemon/impl/health/Statistics/traffic/LogReporter;)Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->doTrafficStatistics()V

    .line 64
    return-void
.end method
