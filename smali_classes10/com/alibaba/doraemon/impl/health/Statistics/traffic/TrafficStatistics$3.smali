.class Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$3;
.super Ljava/lang/Object;
.source "TrafficStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->doStart()V
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
    .line 173
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$3;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics$3;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;->access$200(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/TrafficStatistics;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    return-void
.end method
