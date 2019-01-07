.class Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;
.super Ljava/lang/Object;
.source "PowerStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

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
    .line 129
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;->getJiffiesUnit()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$202(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;I)I

    .line 130
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$200(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics$2;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;->access$202(Lcom/alibaba/doraemon/impl/health/Statistics/power/PowerStatistics;I)I

    .line 133
    :cond_0
    return-void
.end method
