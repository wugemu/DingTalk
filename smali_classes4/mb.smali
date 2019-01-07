.class public final Lmb;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"


# static fields
.field private static a:Llm;

.field private static volatile b:Z

.field private static volatile c:Z

.field private static volatile d:Ljava/util/concurrent/CountDownLatch;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-boolean v0, Lmb;->b:Z

    .line 21
    sput-boolean v0, Lmb;->c:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lmb;->d:Ljava/util/concurrent/CountDownLatch;

    .line 24
    new-instance v0, Lmb$1;

    invoke-direct {v0}, Lmb$1;-><init>()V

    sput-object v0, Lmb;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Llm;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lmb;->a:Llm;

    return-object v0
.end method

.method static synthetic a(Llm;)Llm;
    .locals 0
    .param p0, "x0"    # Llm;

    .prologue
    .line 17
    sput-object p0, Lmb;->a:Llm;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bWait"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    sget-object v3, Lmb;->a:Llm;

    if-eqz v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-boolean v3, Lmb;->b:Z

    if-nez v3, :cond_0

    .line 1084
    invoke-static {v9}, Lanet/channel/util/ALog;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1085
    const-string/jumbo v3, "ANet.RemoteGetter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[asyncBindService] mContext:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bBindFailed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lmb;->b:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bBinding:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lmb;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v8, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    :cond_2
    if-eqz p0, :cond_5

    .line 1090
    sget-boolean v3, Lmb;->b:Z

    if-nez v3, :cond_5

    .line 1093
    sget-boolean v3, Lmb;->c:Z

    if-nez v3, :cond_5

    .line 1096
    sput-boolean v1, Lmb;->c:Z

    .line 1105
    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/ServiceConnection;

    aput-object v5, v3, v4

    .line 1106
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Llm;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lmb;->e:Landroid/content/ServiceConnection;

    aput-object v6, v4, v5

    .line 1107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.taobao.android.service.Services"

    const-string/jumbo v7, "bind"

    invoke-static {v6, v7, v3, v4}, Llb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v1

    :goto_1
    sput-boolean v3, Lmb;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1119
    :cond_3
    :goto_2
    sget-boolean v1, Lmb;->b:Z

    if-eqz v1, :cond_4

    .line 1120
    sput-boolean v2, Lmb;->c:Z

    .line 1121
    const-string/jumbo v1, "ANet.RemoteGetter"

    const-string/jumbo v3, "[asyncBindService]ANet_Service start not success.ANet run with local mode!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v8, v4}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    :cond_4
    invoke-static {v9}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1124
    const-string/jumbo v1, "ANet.RemoteGetter"

    const-string/jumbo v3, "[asyncBindService] end"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v8, v2}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_5
    sget-boolean v1, Lmb;->b:Z

    if-nez v1, :cond_0

    .line 65
    if-eqz p1, :cond_0

    .line 67
    :try_start_1
    sget-object v1, Lmb;->d:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_6

    .line 68
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lmb;->d:Ljava/util/concurrent/CountDownLatch;

    .line 70
    :cond_6
    sget-object v1, Lmb;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    move v3, v2

    .line 1107
    goto :goto_1

    .line 1108
    :catch_1
    move-exception v3

    .line 1109
    const-string/jumbo v4, "ANet.RemoteGetter"

    const-string/jumbo v5, "[asyncBindService]use taobao framwork start service error"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v8, v3, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1110
    sput-boolean v1, Lmb;->b:Z

    .line 1111
    instance-of v4, v3, Ljava/lang/ClassNotFoundException;

    if-nez v4, :cond_8

    instance-of v3, v3, Ljava/lang/NoSuchMethodException;

    if-eqz v3, :cond_3

    .line 1112
    :cond_8
    const-string/jumbo v3, "ANet.RemoteGetter"

    const-string/jumbo v4, "[asyncBindService]Cannot found Service Farmwork,User System intent start Anet service"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v8, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lanetwork/channel/aidl/NetworkService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1114
    const-class v4, Llm;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    const-string/jumbo v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    sget-object v4, Lmb;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_3
    sput-boolean v1, Lmb;->b:Z

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method static synthetic a(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lmb;->c:Z

    return v0
.end method

.method static synthetic b()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lmb;->d:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic b(Z)Z
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lmb;->b:Z

    return v0
.end method
