.class Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;
.super Ljava/lang/Object;
.source "StepCountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;->onLoadSuccess(Lhkf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;

.field final synthetic val$stepModel:Lhkf;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;Lhkf;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 597
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->b:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->b:Ljava/lang/Long;

    .line 598
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 600
    const-string/jumbo v3, "step"

    const-string/jumbo v4, "stepcount"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "sync step:"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v6, v6, Lhkf;->a:Ljava/lang/Integer;

    .line 601
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    const-string/jumbo v7, ", "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v7, v7, Lhkf;->b:Ljava/lang/Long;

    .line 602
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 601
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 600
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 605
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$300(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 606
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v3

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x6

    .line 607
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 606
    invoke-virtual {v3, v4, v5}, Lhfz;->a(II)Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v3, v1, v8, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;Ljava/util/List;IJ)Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    move-result-object v2

    .line 609
    .local v2, "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    if-nez v2, :cond_1

    .line 610
    new-instance v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;

    .end local v2    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/database/StepCountObject;-><init>()V

    .line 611
    .restart local v2    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->uid:J

    .line 612
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 613
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 614
    iput v8, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->status:I

    .line 615
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lhfz;->a(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    .line 617
    const-string/jumbo v3, "step"

    const-string/jumbo v4, "stepcount"

    const-string/jumbo v5, "sync step: user step not exists"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getStepInfo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->log(Ljava/lang/String;)V

    .line 630
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .end local v2    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :goto_1
    return-void

    .line 618
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .restart local v2    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :cond_1
    iget v3, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v4, v4, Lhkf;->a:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 619
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->steps:I

    .line 620
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$6$1$1;->val$stepModel:Lhkf;

    iget-object v3, v3, Lhkf;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/alibaba/lightapp/runtime/database/StepCountObject;->timestamp:J

    .line 621
    invoke-static {}, Lhfz;->a()Lhfz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lhfz;->b(Lcom/alibaba/lightapp/runtime/database/StepCountObject;)V

    .line 623
    const-string/jumbo v3, "step"

    const-string/jumbo v4, "stepcount"

    const-string/jumbo v5, "sync step: local less than remote"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "todayStepCounts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/database/StepCountObject;>;"
    .end local v2    # "userSteps":Lcom/alibaba/lightapp/runtime/database/StepCountObject;
    :cond_2
    const-string/jumbo v3, "step"

    const-string/jumbo v4, "stepcount"

    const-string/jumbo v5, "sync step: invalid remote steps"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
