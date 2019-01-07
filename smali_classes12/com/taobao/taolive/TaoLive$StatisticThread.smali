.class Lcom/taobao/taolive/TaoLive$StatisticThread;
.super Ljava/lang/Thread;
.source "TaoLive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/TaoLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatisticThread"
.end annotation


# instance fields
.field private num:I

.field private running_:Z

.field private sendbps_tag:I

.field private sendbps_total:I

.field final synthetic this$0:Lcom/taobao/taolive/TaoLive;


# direct methods
.method constructor <init>(Lcom/taobao/taolive/TaoLive;)V
    .locals 1
    .param p1, "this$0"    # Lcom/taobao/taolive/TaoLive;

    .prologue
    const/4 v0, 0x0

    .line 701
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 702
    iput-boolean v0, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->running_:Z

    .line 703
    iput v0, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->num:I

    .line 704
    iput v0, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_tag:I

    .line 705
    iput v0, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_total:I

    return-void
.end method


# virtual methods
.method public RequestExit()V
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->running_:Z

    .line 708
    return-void
.end method

.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 711
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->running_:Z

    .line 713
    :goto_0
    iget-boolean v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->running_:Z

    if-eqz v10, :cond_9

    .line 714
    iget v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->num:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->num:I

    .line 715
    iget v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->num:I

    const/16 v11, 0x258

    if-ne v10, v11, :cond_0

    .line 716
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/taobao/taolive/TaoLive;->access$602(Lcom/taobao/taolive/TaoLive;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 717
    const/4 v10, 0x0

    iput v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->num:I

    .line 719
    :cond_0
    iget v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_tag:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_tag:I

    .line 720
    iget v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_total:I

    int-to-long v10, v10

    iget-object v12, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v13, 0xd

    invoke-static {v12, v13}, Lcom/taobao/taolive/TaoLive;->access$800(Lcom/taobao/taolive/TaoLive;I)J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_total:I

    .line 721
    iget v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_tag:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    .line 722
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$900(Lcom/taobao/taolive/TaoLive;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 723
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/taobao/taolive/TaoLive;->access$902(Lcom/taobao/taolive/TaoLive;Z)Z

    .line 724
    const-string/jumbo v10, "TBVideoCore_TBAVEngine"

    const-string/jumbo v11, "upstreamBitrate"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 726
    :cond_1
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1100(Lcom/taobao/taolive/TaoLive;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 727
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 728
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 729
    const-string/jumbo v10, "appKey"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1200(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    move-result-object v11

    iget-object v11, v11, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->appKey:Ljava/lang/String;

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string/jumbo v10, "userId"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1200(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    move-result-object v11

    iget-object v11, v11, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v10, "roomId"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1300(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_2
    const-string/jumbo v10, "pushUrl"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1400(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v10, "pushIp"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1500(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string/jumbo v10, "sendBps"

    iget v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_total:I

    div-int/lit8 v11, v11, 0x3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    invoke-static {v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v7

    .line 737
    .local v7, "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v10, "TBVideoCore_TBAVEngine"

    const-string/jumbo v11, "upstreamBitrate"

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 739
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "valueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :cond_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_tag:I

    .line 740
    const/4 v10, 0x0

    iput v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->sendbps_total:I

    .line 742
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Audio statistic => pcm queue: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", aac queue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x2

    .line 743
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", aac enc diff: +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x3

    .line 744
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", audio diff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x4

    .line 745
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$800(Lcom/taobao/taolive/TaoLive;I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "log":Ljava/lang/String;
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 747
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$600(Lcom/taobao/taolive/TaoLive;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Video statistic => yuv queue1: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", yuv queue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x6

    .line 749
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", avc queue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x7

    .line 750
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", avc sw enc diff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0x8

    .line 751
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", avc hw enc diff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0x9

    .line 752
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", video diff: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xa

    .line 753
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$800(Lcom/taobao/taolive/TaoLive;I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", video encode bps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xf

    .line 754
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 755
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 756
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$600(Lcom/taobao/taolive/TaoLive;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Camera statistic => camera ori fps: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xb

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",real fps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xc

    .line 758
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",seng bps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xd

    .line 759
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$800(Lcom/taobao/taolive/TaoLive;I)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",audio gain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xe

    .line 760
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",net level: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0x10

    .line 761
    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 763
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$600(Lcom/taobao/taolive/TaoLive;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;

    move-result-object v10

    const/16 v11, 0x271a

    invoke-virtual {v10, v11}, Lcom/taobao/taolive/TaoLive$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 766
    .local v2, "m":Landroid/os/Message;
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/taobao/taolive/TaoLive$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v11, 0x9

    invoke-static {v10, v11}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v10

    if-eqz v10, :cond_8

    .line 769
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;

    move-result-object v10

    const/16 v11, 0x2713

    const/16 v12, 0x3b

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/taobao/taolive/TaoLive$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 770
    .local v6, "mm":Landroid/os/Message;
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/taobao/taolive/TaoLive$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 776
    .end local v6    # "mm":Landroid/os/Message;
    :cond_5
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 777
    .local v4, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1100(Lcom/taobao/taolive/TaoLive;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 778
    const-string/jumbo v10, "stream_url"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1400(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string/jumbo v10, "stream_ip"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1500(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string/jumbo v10, "user_id"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1200(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    move-result-object v11

    iget-object v11, v11, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string/jumbo v10, "room_id"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1300(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    :cond_6
    const-string/jumbo v10, "total_sent"

    const-string/jumbo v11, "0"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string/jumbo v10, "last_sent"

    const-string/jumbo v11, "0"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string/jumbo v10, "cur_sent"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xd

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string/jumbo v10, "last_to_send"

    const-string/jumbo v11, "0"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string/jumbo v10, "cur_to_send"

    const-string/jumbo v11, "0"

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-static {v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v8

    .line 789
    .local v8, "valueSet1":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v10, "TBVideoCore_TBAVEngine"

    const-string/jumbo v11, "avSocketStateData"

    const/4 v12, 0x0

    invoke-static {v10, v11, v8, v12}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 791
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 792
    .local v5, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1100(Lcom/taobao/taolive/TaoLive;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 793
    const-string/jumbo v10, "room_id"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1300(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string/jumbo v10, "user_id"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1200(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    move-result-object v11

    iget-object v11, v11, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->localUserId:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string/jumbo v10, "stream_url"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1400(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string/jumbo v10, "server_ip"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1500(Lcom/taobao/taolive/TaoLive;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string/jumbo v10, "audioEncoderBPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1000(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive;

    move-result-object v11

    invoke-static {v11}, Lcom/taobao/taolive/TaoLive;->access$1200(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$TaoLiveConfig;

    move-result-object v11

    iget-wide v12, v11, Lcom/taobao/taolive/TaoLive$TaoLiveConfig;->audioBitrate:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_7
    const-string/jumbo v10, "cameraFps"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xb

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string/jumbo v10, "videoMixInputFPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xc

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string/jumbo v10, "videoPreviewFPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xc

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v10, "videoEncoderInputFPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xc

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v10, "videoEncoderOutputFPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xc

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v10, "videoEncoderBPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xf

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v10, "micphoneFPS"

    const-string/jumbo v11, "43"

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string/jumbo v10, "audioEncoderInputFPS"

    const-string/jumbo v11, "43"

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string/jumbo v10, "audioEncoderOutputFPS"

    const-string/jumbo v11, "43"

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string/jumbo v10, "networkSendVideoFPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xc

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string/jumbo v10, "networkSendAudioFPS"

    const-string/jumbo v11, "43"

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string/jumbo v10, "networkSendTotalBPS"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v12, 0xd

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string/jumbo v10, "networkBufferedDataDuration"

    iget-object v11, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/4 v12, 0x7

    invoke-static {v11, v12}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    invoke-static {v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fromStringMap(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v9

    .line 813
    .local v9, "valueSet2":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v10, "TBVideoCore_TBAVEngine"

    const-string/jumbo v11, "filtersStatisticTable"

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 816
    const-wide/16 v10, 0x1388

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 817
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 771
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "valueSet1":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v9    # "valueSet2":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :cond_8
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v11, 0x8

    invoke-static {v10, v11}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    const/16 v11, 0x9

    invoke-static {v10, v11}, Lcom/taobao/taolive/TaoLive;->access$1600(Lcom/taobao/taolive/TaoLive;I)I

    move-result v10

    if-nez v10, :cond_5

    .line 772
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;

    move-result-object v10

    const/16 v11, 0x2713

    const/16 v12, 0x3a

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/taobao/taolive/TaoLive$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 773
    .restart local v6    # "mm":Landroid/os/Message;
    iget-object v10, p0, Lcom/taobao/taolive/TaoLive$StatisticThread;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v10}, Lcom/taobao/taolive/TaoLive;->access$1700(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$EventHandler;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/taobao/taolive/TaoLive$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 822
    .end local v1    # "log":Ljava/lang/String;
    .end local v2    # "m":Landroid/os/Message;
    .end local v6    # "mm":Landroid/os/Message;
    :cond_9
    return-void
.end method
