.class public final Lich;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "DevStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/idl/im/models/DevStatusModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "devSts"

    const-class v1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    check-cast p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;

    .line 1035
    if-eqz p1, :cond_5

    .line 1036
    const/4 v1, 0x0

    .line 1038
    :try_start_0
    const-string/jumbo v0, "[TAG] DevStatus"

    .line 2014
    const-string/jumbo v2, "im"

    invoke-static {v0, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v1

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Push] DevStatus  dev="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->deviceType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lhzv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->userDeviceList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->userDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1042
    iget-object v0, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->userDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/UserDeviceModel;

    .line 1043
    if-eqz v0, :cond_0

    .line 1046
    new-instance v4, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;

    invoke-direct {v4}, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;-><init>()V

    .line 1047
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->type:Ljava/lang/Integer;

    invoke-static {v5}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->fromValue(I)Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mType:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    .line 1048
    iget-object v5, p1, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->time:Ljava/lang/Long;

    invoke-static {v5}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mTime:J

    .line 1049
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/UserDeviceModel;->deviceType:Ljava/lang/Integer;

    invoke-static {v5}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v5

    iput v5, v4, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mDeviceType:I

    .line 1050
    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/UserDeviceModel;->status:Ljava/lang/Integer;

    invoke-static {v0}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, v4, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mStatus:I

    .line 1051
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1064
    :catchall_0
    move-exception v0

    .line 4030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1064
    throw v0

    .line 1039
    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1054
    :cond_2
    invoke-static {p1}, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->fromModel(Lcom/alibaba/wukong/idl/im/models/DevStatusModel;)Lcom/alibaba/wukong/im/base/DeviceStatusImpl;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_3

    .line 1056
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1060
    invoke-static {v2}, Liad;->a(Ljava/util/List;)V

    .line 3014
    :cond_4
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3030
    invoke-static {v1}, Lhzt;->a(Lhzv;)V

    .line 1065
    :cond_5
    return-void
.end method
