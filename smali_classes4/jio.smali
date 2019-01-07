.class public final Ljio;
.super Ljiq;
.source "AliyunMsgDistribute.java"


# static fields
.field private static a:Lorg/android/agoo/accs/AgooService;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/android/agoo/accs/AgooService;

    invoke-direct {v0}, Lorg/android/agoo/accs/AgooService;-><init>()V

    sput-object v0, Ljio;->a:Lorg/android/agoo/accs/AgooService;

    .line 30
    new-instance v0, Lcom/taobao/accs/data/AliyunMsgDistribute$1;

    invoke-direct {v0}, Lcom/taobao/accs/data/AliyunMsgDistribute$1;-><init>()V

    sput-object v0, Ljio;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljiq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "com.alibaba.sdk.android.push.ChannelService"

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Ljia;Landroid/content/Intent;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appReceiver"    # Ljia;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "command"    # I
    .param p5, "errorCode"    # I

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Ljiq;->a(Landroid/content/Context;Ljia;Landroid/content/Intent;II)V

    .line 81
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljia;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appReceiver"    # Ljia;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "serviceId"    # Ljava/lang/String;
    .param p5, "dataId"    # Ljava/lang/String;
    .param p6, "command"    # I
    .param p7, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 59
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljim;->c(Ljava/lang/String;)Ljig;

    move-result-object v0

    .line 60
    .local v0, "listener":Ljig;
    sget-object v1, Ljio;->b:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    if-eqz v0, :cond_1

    .line 67
    invoke-static {p1, p3, v0}, Ljig;->a(Landroid/content/Context;Landroid/content/Intent;Ljih;)I

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Ljjo;->a()Ljjo;

    const v1, 0x101d1

    const-string/jumbo v2, "MsgToBuss"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "commandId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "serviceId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dataId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "to_buss"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "2commandId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "serviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 76
    return-void

    .line 70
    :cond_1
    const-string/jumbo v1, "AliyunMsgDistribute"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callback is null dataId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " serviceId\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string/jumbo v1, "accs"

    const-string/jumbo v2, "send_fail"

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "service is null"

    invoke-static {v1, v2, p4, v3, v4}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final a(ILjava/lang/String;)Z
    .locals 1
    .param p1, "command"    # I
    .param p2, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljia;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "appReceiver"    # Ljia;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "handled":Z
    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string/jumbo v1, "AliyunMsgDistribute"

    const-string/jumbo v2, "start MsgDistributeService"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 1090
    const-string/jumbo v2, "com.alibaba.sdk.android.push.MsgService"

    .line 48
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "com.alibaba.sdk.android.push.MsgService"

    return-object v0
.end method
