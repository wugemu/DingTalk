.class public Ljiq;
.super Ljava/lang/Object;
.source "MsgDistribute.java"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Ljiq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Ljiq;->b:Ljiq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 355
    invoke-static {}, Ljir;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Ljir;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, "startIntent":Landroid/content/Intent;
    const-string/jumbo v1, "operate"

    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljiq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 362
    .end local v0    # "startIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Ljiq$1;

    invoke-direct {v2, p0, p1}, Ljiq$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MsgDistribute"

    const-string/jumbo v2, "distribMessage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Ljjo;->a()Ljjo;

    const v1, 0x101d1

    const-string/jumbo v2, "MsgToBuss8"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "distribMessage"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Ljiq;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Ljiq;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljiq;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Ljiq;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p0, "x0"    # Ljiq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 31
    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1081
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1082
    const-string/jumbo v4, "MsgDistribute"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1086
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "action null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    invoke-static {}, Ljjo;->a()Ljjo;

    const v3, 0x101d1

    const-string/jumbo v4, "MsgToBuss9"

    const-string/jumbo v5, "action null"

    const/16 v6, 0xd5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    const/4 v7, 0x0

    .line 1092
    const/4 v9, 0x0

    .line 1094
    :try_start_0
    const-string/jumbo v4, "com.taobao.accs.intent.action.RECEIVE"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1095
    const-string/jumbo v3, "command"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1096
    const-string/jumbo v3, "userInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1097
    const-string/jumbo v4, "errorCode"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1098
    const-string/jumbo v4, "serviceId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1099
    const-string/jumbo v4, "dataId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1102
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    :cond_3
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1105
    const-string/jumbo v4, "MsgDistribute"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "command:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " serviceId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dataId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v8}, Ljiq;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1114
    if-gez v9, :cond_5

    .line 1115
    const-string/jumbo v3, "MsgDistribute"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "command error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1149
    :catch_0
    move-exception v3

    .line 1150
    const-string/jumbo v4, "MsgDistribute"

    const-string/jumbo v5, "distribMessage :"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1151
    const-string/jumbo v4, "accs"

    const-string/jumbo v5, "send_fail"

    const-string/jumbo v6, "1"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "distribute error "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v7, v6, v3}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1120
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Ljiq;->a(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Ljiq;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1129
    invoke-static/range {p1 .. p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v4

    .line 1161
    iget-object v5, v4, Ljim;->d:Ljia;

    .line 1132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v8, v2, v5}, Ljiq;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljia;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1187
    if-eqz v5, :cond_9

    .line 1188
    sparse-switch v9, :sswitch_data_0

    .line 1140
    :cond_6
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    .line 1141
    invoke-virtual/range {v3 .. v10}, Ljiq;->a(Landroid/content/Context;Ljia;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 1190
    :sswitch_0
    instance-of v3, v5, Ljib;

    if-nez v3, :cond_7

    .line 1193
    invoke-interface {v5, v10}, Ljia;->onBindApp(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1197
    :cond_7
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_6

    .line 1198
    :try_start_2
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "start election by bindapp...."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    invoke-direct/range {p0 .. p1}, Ljiq;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1201
    :catch_1
    move-exception v3

    .line 1202
    :try_start_3
    const-string/jumbo v4, "MsgDistribute"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "start election is error,e="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1206
    :sswitch_1
    const/16 v3, 0xc8

    if-ne v10, v3, :cond_8

    .line 1207
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/UtilityImpl;->disableService(Landroid/content/Context;)V

    .line 1209
    :cond_8
    invoke-interface {v5, v10}, Ljia;->onUnbindApp(I)V

    goto :goto_1

    .line 1212
    :sswitch_2
    invoke-interface {v5, v3, v10}, Ljia;->onBindUser(Ljava/lang/String;I)V

    goto :goto_1

    .line 1215
    :sswitch_3
    invoke-interface {v5, v10}, Ljia;->onUnbindUser(I)V

    goto :goto_1

    .line 1218
    :sswitch_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1219
    const-string/jumbo v4, "MsgDistribute"

    const-string/jumbo v6, "serviceId isEmpty"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v6, v11}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    const-string/jumbo v4, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 1222
    if-eqz v4, :cond_6

    .line 1223
    invoke-interface {v5, v3, v8, v4}, Ljia;->onData(Ljava/lang/String;Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 1228
    :sswitch_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1229
    invoke-interface {v5, v8, v10}, Ljia;->onSendData(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1236
    :cond_9
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "send_fail"

    const-string/jumbo v6, "1"

    const-string/jumbo v11, "appReceiver null return"

    invoke-static {v3, v4, v7, v6, v11}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "appReceiver null!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    invoke-static {}, Ljjo;->a()Ljjo;

    const v3, 0x101d1

    const-string/jumbo v4, "MsgToBuss7"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "commandId="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "serviceId="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " errorCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " dataId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xd5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3, v4, v6, v11, v12}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v5

    move-object/from16 v14, p2

    move v15, v9

    move/from16 v16, v10

    .line 1143
    invoke-virtual/range {v11 .. v16}, Ljiq;->a(Landroid/content/Context;Ljia;Landroid/content/Intent;II)V

    goto/16 :goto_0

    .line 1146
    :cond_b
    const-string/jumbo v4, "MsgDistribute"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "action error "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    invoke-static {}, Ljjo;->a()Ljjo;

    const v4, 0x101d1

    const-string/jumbo v5, "MsgToBuss10"

    const/16 v6, 0xd5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1188
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_5
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dataId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "needReturn":Z
    const-string/jumbo v6, "routingAck"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 375
    .local v3, "routingACK":Z
    const-string/jumbo v6, "routingMsg"

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 378
    .local v4, "routingMSG":Z
    if-eqz v3, :cond_1

    .line 379
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v7, "recieve routiong ack"

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "dataId"

    aput-object v9, v8, v11

    aput-object p2, v8, v10

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    sget-object v6, Ljiq;->a:Ljava/util/Set;

    if-eqz v6, :cond_0

    .line 381
    sget-object v6, Ljiq;->a:Ljava/util/Set;

    invoke-interface {v6, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    const-string/jumbo v6, "accs"

    const-string/jumbo v7, "ele_routing_rate"

    const-string/jumbo v8, ""

    invoke-static {v6, v7, v8}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v1, 0x1

    .line 388
    :cond_1
    if-eqz v4, :cond_2

    .line 390
    :try_start_0
    const-string/jumbo v6, "packageName"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v7, "send routiong ack"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "dataId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "to pkg"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.taobao.accs.intent.action.COMMAND"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "intentAck":Landroid/content/Intent;
    const-string/jumbo v6, "command"

    const/16 v7, 0x6a

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string/jumbo v6, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string/jumbo v6, "routingAck"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v6, "dataId"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "intentAck":Landroid/content/Intent;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_0
    return v1

    .line 399
    :catch_0
    move-exception v5

    .line 400
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v7, "send routing ack"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "dataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 415
    :try_start_0
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "start MsgDistributeService"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "receive pkg"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "target pkg"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.taobao.accs.data.MsgDistributeService"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string/jumbo v3, "routingMsg"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const-string/jumbo v3, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 420
    sget-object v3, Ljiq;->a:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 421
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Ljiq;->a:Ljava/util/Set;

    .line 423
    :cond_0
    sget-object v3, Ljiq;->a:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 424
    move-object v1, p3

    .line 425
    .local v1, "routingDataId":Ljava/lang/String;
    new-instance v3, Ljiq$2;

    invoke-direct {v3, p0, v1, p1, p2}, Ljiq$2;-><init>(Ljiq;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Ljin;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v1    # "routingDataId":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    .line 448
    :cond_1
    return v0

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "ele_routing_rate"

    const-string/jumbo v5, ""

    const-string/jumbo v6, "exception"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v3, "MsgDistribute"

    const-string/jumbo v4, "routing msg error, try election"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "dataId"

    aput-object v6, v5, v9

    aput-object p3, v5, v8

    aput-object v2, v5, v10

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-direct {p0, p1}, Ljiq;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static c()Ljiq;
    .locals 3

    .prologue
    .line 44
    sget-object v0, Ljiq;->b:Ljiq;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Ljiq;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Ljiq;->b:Ljiq;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/taobao/accs/client/AccsConfig;->e:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v2, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->ALIYUN:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v2, :cond_2

    .line 48
    new-instance v0, Ljio;

    invoke-direct {v0}, Ljio;-><init>()V

    sput-object v0, Ljiq;->b:Ljiq;

    .line 53
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Ljiq;->b:Ljiq;

    return-object v0

    .line 50
    :cond_2
    :try_start_1
    new-instance v0, Ljiq;

    invoke-direct {v0}, Ljiq;-><init>()V

    sput-object v0, Ljiq;->b:Ljiq;

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ljiq;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string/jumbo v0, "com.taobao.accs.ChannelService"

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljia;Landroid/content/Intent;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appReceiver"    # Ljia;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "command"    # I
    .param p5, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    const/4 v13, 0x0

    .line 276
    .local v13, "services":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 277
    invoke-interface/range {p2 .. p2}, Ljia;->getAllServices()Ljava/util/Map;

    move-result-object v13

    .line 279
    :cond_0
    const/16 v6, 0x67

    move/from16 v0, p4

    if-ne v0, v6, :cond_9

    .line 280
    if-eqz v13, :cond_4

    .line 281
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 283
    .local v12, "key":Ljava/lang/String;
    const-string/jumbo v6, "accs"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "windvane"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "motu-remote"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    :cond_2
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 288
    .local v9, "className":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    invoke-static/range {p1 .. p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljim;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 291
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 300
    .end local v9    # "className":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, "connect_avail"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 301
    .local v8, "available":Z
    const-string/jumbo v6, "host"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v6, "errorDetail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 303
    .local v7, "errorDetail":Ljava/lang/String;
    const-string/jumbo v6, "type_inapp"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 304
    .local v4, "isInapp":Z
    const-string/jumbo v6, "is_center_host"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 305
    .local v5, "isCenter":Z
    const/4 v2, 0x0

    .line 306
    .local v2, "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 307
    if-eqz v8, :cond_7

    .line 308
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 312
    .restart local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    :goto_1
    iput-boolean v8, v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;->connected:Z

    .line 314
    :cond_5
    if-eqz v2, :cond_8

    .line 315
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v6, "com.taobao.accs.intent.action.CONNECTINFO"

    invoke-direct {v10, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v10, "connectionIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v6, "connect_info"

    invoke-virtual {v10, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "isInapp":Z
    .end local v5    # "isCenter":Z
    .end local v7    # "errorDetail":Ljava/lang/String;
    .end local v8    # "available":Z
    .end local v10    # "connectionIntent":Landroid/content/Intent;
    :cond_6
    :goto_2
    return-void

    .line 310
    .restart local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "isInapp":Z
    .restart local v5    # "isCenter":Z
    .restart local v7    # "errorDetail":Ljava/lang/String;
    .restart local v8    # "available":Z
    :cond_7
    new-instance v2, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;

    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    move/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;-><init>(Ljava/lang/String;ZZILjava/lang/String;)V

    .restart local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    goto :goto_1

    .line 320
    :cond_8
    const-string/jumbo v6, "MsgDistribute"

    const-string/jumbo v14, "connect info null, host empty"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6, v14, v15}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 323
    .end local v2    # "info":Lcom/taobao/accs/base/TaoBaseService$ConnectInfo;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "isInapp":Z
    .end local v5    # "isCenter":Z
    .end local v7    # "errorDetail":Ljava/lang/String;
    .end local v8    # "available":Z
    :cond_9
    const/16 v6, 0x68

    move/from16 v0, p4

    if-ne v0, v6, :cond_c

    .line 324
    if-eqz v13, :cond_6

    .line 325
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 326
    .restart local v12    # "key":Ljava/lang/String;
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 328
    .restart local v9    # "className":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 329
    invoke-static/range {p1 .. p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljim;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 331
    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 332
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 338
    .end local v9    # "className":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "key":Ljava/lang/String;
    :cond_c
    const-string/jumbo v6, "MsgDistribute"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "distribMessage serviceId is null!! command:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v6, v14, v15}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;Ljia;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appReceiver"    # Ljia;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "serviceId"    # Ljava/lang/String;
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "command"    # I
    .param p7, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "className":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 245
    invoke-interface {p2, p4}, Ljia;->getService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljim;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const-string/jumbo v2, "MsgDistribute"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "to start service:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_2
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    :goto_0
    invoke-static {}, Ljjo;->a()Ljjo;

    const v2, 0x101d1

    const-string/jumbo v3, "MsgToBuss"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "commandId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "serviceId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dataId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "to_buss"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "2commandId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "serviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v2, v3, v4, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 270
    return-void

    .line 259
    :cond_3
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljim;->c(Ljava/lang/String;)Ljig;

    move-result-object v1

    .line 260
    .local v1, "listener":Ljig;
    if-eqz v1, :cond_4

    .line 261
    invoke-static {p1, p3, v1}, Ljig;->a(Landroid/content/Context;Landroid/content/Intent;Ljih;)I

    goto :goto_0

    .line 263
    :cond_4
    const-string/jumbo v2, "MsgDistribute"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callback is null dataId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " serviceId\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v4, "1"

    const-string/jumbo v5, "service is null"

    invoke-static {v2, v3, p4, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected a(ILjava/lang/String;)Z
    .locals 8
    .param p1, "command"    # I
    .param p2, "serviceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "needReturn":Z
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "agooSend"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->getUsableSpace()J

    move-result-wide v2

    .line 160
    .local v2, "space":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 161
    const-string/jumbo v1, "accs"

    const-string/jumbo v4, "send_fail"

    const-string/jumbo v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "space low "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, p2, v5, v6}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "MsgDistribute"

    const-string/jumbo v4, "user space low, don\'t distribute"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "size"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v0, 0x1

    .line 166
    .end local v2    # "space":J
    :cond_0
    return v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljia;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "appReceiver"    # Ljia;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 176
    .local v0, "handled":Z
    if-nez p4, :cond_0

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const-string/jumbo v1, "MsgDistribute"

    const-string/jumbo v2, "start MsgDistributeService"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljiq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    const/4 v0, 0x1

    .line 183
    :cond_0
    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-string/jumbo v0, "com.taobao.accs.data.MsgDistributeService"

    return-object v0
.end method
