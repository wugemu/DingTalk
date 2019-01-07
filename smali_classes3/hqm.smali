.class public Lhqm;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "OACheckInPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lhqm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhqm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lclb;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 131
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 134
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 135
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 145
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 146
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 146
    :catch_2
    move-exception v1

    .line 147
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 146
    :catch_4
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 145
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 146
    :catch_6
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 145
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 148
    :goto_1
    throw v4

    .line 146
    :catch_7
    move-exception v1

    .line 147
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    check-cast p1, Lclb;

    .line 1059
    if-eqz p1, :cond_1

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1061
    :try_start_0
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhqm;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "OACheckInPushHandler onCheckInReceived "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lclb;->a:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1063
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 1064
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1091
    :pswitch_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCSwitchManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1092
    const-string/jumbo v0, "attendance"

    sget-object v2, Lhqm;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "OACheckInPushHandler.onCheckInReceived: New fast checkin is opened, return!"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1080
    :catch_0
    move-exception v0

    .line 1082
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhqm;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_1
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhqm;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCheckInReceived handle failed!"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    .line 1079
    :goto_1
    return-void

    .line 1097
    :cond_2
    :try_start_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "oa_cloud_attendance_autopunch_push"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1099
    const-class v2, Lhjs;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lhqm;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1100
    instance-of v2, v0, Lhjs;

    if-eqz v2, :cond_0

    .line 1101
    check-cast v0, Lhjs;

    .line 1102
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhqm;->a:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "corpId:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lhjs;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " planId:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v0, Lhjs;->b:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, " push type:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "1"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v2, v0, Lhjs;->d:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lhjs;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 1105
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhqm;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "planId:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lhjs;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, " push time expired"

    aput-object v5, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    :cond_3
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhqm;->a:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "startDate:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lhjs;->c:Ljava/lang/Long;

    .line 1110
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", endDate:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v0, Lhjs;->d:Ljava/lang/Long;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1109
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object v2, v0, Lhjs;->d:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lhjs;->c:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lhjs;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Lhjs;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1115
    :cond_4
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->fromIDLModel(Lhjs;)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v2

    .line 1116
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1117
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhkx;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;)V

    goto/16 :goto_0

    .line 1119
    :cond_5
    const-string/jumbo v2, "attendance"

    sget-object v3, Lhqm;->a:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "planId:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v0, v0, Lhjs;->b:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, " push data invalid"

    aput-object v5, v4, v0

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1069
    :pswitch_1
    invoke-static {}, Lhgb;->a()Lhgb;

    move-result-object v0

    .line 1153
    iget-object v2, v0, Lhgb;->b:Lhga;

    if-eqz v2, :cond_0

    .line 1154
    iget-object v0, v0, Lhgb;->b:Lhga;

    .line 2106
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    .line 2107
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 2111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lhga;->a:Ljava/lang/Long;

    .line 2112
    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v2

    new-instance v3, Lhga$3;

    invoke-direct {v3, v0}, Lhga$3;-><init>(Lhga;)V

    invoke-virtual {v2, v3}, Lhge;->a(Lhgd$a$a;)V

    goto/16 :goto_0

    .line 3049
    :pswitch_2
    sget-object v2, Lhgg$d;->a:Lhgg;

    .line 1072
    iget-object v0, v0, Lclc;->b:[B

    .line 3105
    iget-object v3, v2, Lhgg;->a:Lhgf;

    if-eqz v3, :cond_0

    .line 3106
    iget-object v2, v2, Lhgg;->a:Lhgf;

    .line 3258
    const-class v3, Lhiv;

    invoke-static {v3, v0}, Lhgf;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiv;

    .line 3260
    if-eqz v0, :cond_6

    iget-object v3, v0, Lhiv;->a:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 3261
    const-string/jumbo v3, "Beacon"

    const-string/jumbo v4, "DeviceList"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[Device Beacon] push receive new device success, devices:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lhiv;->a:Ljava/util/List;

    .line 3262
    invoke-static {v7}, Lhgf;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3261
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    iget-object v3, v2, Lhgf;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 3265
    iget-object v3, v2, Lhgf;->b:Ljava/util/List;

    iget-object v0, v0, Lhiv;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3267
    invoke-virtual {v2}, Lhgf;->b()V

    .line 3268
    invoke-virtual {v2}, Lhgf;->d()V

    goto/16 :goto_0

    .line 3270
    :cond_6
    const-string/jumbo v0, "Beacon"

    const-string/jumbo v2, "DeviceList"

    const-string/jumbo v3, "[Device Beacon] push receive new device fail, not devices"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1077
    :cond_7
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1064
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
