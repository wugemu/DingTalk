.class public Lcom/taobao/accs/antibrush/AntiBrush;
.super Ljava/lang/Object;
.source "AntiBrush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;
    }
.end annotation


# static fields
.field private static b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile c:Z

.field private static d:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/antibrush/AntiBrush;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->e:Landroid/content/BroadcastReceiver;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/antibrush/AntiBrush;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/antibrush/AntiBrush;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Z

    .prologue
    .line 93
    const/4 v2, 0x0

    sput-boolean v2, Lcom/taobao/accs/antibrush/AntiBrush;->c:Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v2, "command"

    const/16 v3, 0x68

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string/jumbo v2, "anti_brush_ret"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v0}, Ljiq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    .line 100
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 101
    const/4 v2, 0x0

    sput-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 103
    :cond_0
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 104
    sget-object v2, Lcom/taobao/accs/antibrush/AntiBrush;->d:Ljava/lang/String;

    invoke-static {v2}, Ljif;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "sec":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/taobao/accs/utl/UtilityImpl;->storeCookie(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .end local v1    # "sec":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;Ljava/util/Map;)Z
    .locals 12
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "result":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->isForeground(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    sget-object v5, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_STATUS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    .local v3, "statusStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v7

    .line 46
    .local v2, "status":I
    :goto_0
    const/16 v5, 0x1a3

    if-ne v2, v5, :cond_1

    .line 47
    sget-object v5, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_LOCATION:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    const-string/jumbo v5, "AntiBrush"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "start anti bursh location:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    sget-boolean v5, Lcom/taobao/accs/antibrush/AntiBrush;->c:Z

    if-eqz v5, :cond_4

    .line 1112
    const-string/jumbo v5, "AntiBrush"

    const-string/jumbo v8, "handleantiBrush return"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "mIsInCheckCodeActivity"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-boolean v11, Lcom/taobao/accs/antibrush/AntiBrush;->c:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_1
    sget-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v5, :cond_0

    .line 52
    sget-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 53
    const/4 v5, 0x0

    sput-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 55
    :cond_0
    new-instance v5, Lcom/taobao/accs/antibrush/AntiBrush$1;

    invoke-direct {v5, p0}, Lcom/taobao/accs/antibrush/AntiBrush$1;-><init>(Lcom/taobao/accs/antibrush/AntiBrush;)V

    const-wide/32 v8, 0xea60

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v8, v9, v10}, Ljin;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    sput-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 64
    if-nez p1, :cond_6

    move-object v5, v6

    :goto_2
    sput-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->d:Ljava/lang/String;

    .line 65
    const/4 v1, 0x1

    .line 71
    .end local v0    # "location":Ljava/lang/String;
    .end local v2    # "status":I
    .end local v3    # "statusStr":Ljava/lang/String;
    :cond_1
    sget-object v5, Ljim;->i:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/taobao/accs/antibrush/AntiBrush;->d:Ljava/lang/String;

    invoke-static {v5}, Ljif;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 73
    const-string/jumbo v5, "AntiBrush"

    const-string/jumbo v6, "cookie invalid, clear"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v5, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->clearCookie(Landroid/content/Context;)V

    .line 80
    :cond_2
    :goto_3
    return v1

    .line 45
    .restart local v3    # "statusStr":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto/16 :goto_0

    .line 1118
    .restart local v0    # "location":Ljava/lang/String;
    .restart local v2    # "status":I
    :cond_4
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1119
    const-string/jumbo v8, "mtopsdk.mtop.antiattack.checkcode.validate.activity_action"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    iget-object v8, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    const-string/jumbo v8, "Location"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string/jumbo v8, "AntiBrush"

    const-string/jumbo v9, "handleAntiBrush:"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    iget-object v8, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1125
    const/4 v5, 0x1

    sput-boolean v5, Lcom/taobao/accs/antibrush/AntiBrush;->c:Z

    .line 1126
    iget-object v5, p0, Lcom/taobao/accs/antibrush/AntiBrush;->e:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_5

    .line 1127
    new-instance v5, Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;

    invoke-direct {v5}, Lcom/taobao/accs/antibrush/AntiBrush$AntiReceiver;-><init>()V

    iput-object v5, p0, Lcom/taobao/accs/antibrush/AntiBrush;->e:Landroid/content/BroadcastReceiver;

    .line 1129
    :cond_5
    iget-object v5, p0, Lcom/taobao/accs/antibrush/AntiBrush;->a:Landroid/content/Context;

    iget-object v8, p0, Lcom/taobao/accs/antibrush/AntiBrush;->e:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v10, "mtopsdk.extra.antiattack.result.notify.action"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1131
    :catch_0
    move-exception v5

    .line 1132
    :try_start_2
    const-string/jumbo v8, "AntiBrush"

    const-string/jumbo v9, "handleantiBrush"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v5, v10}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 76
    .end local v0    # "location":Ljava/lang/String;
    .end local v2    # "status":I
    .end local v3    # "statusStr":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 77
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "AntiBrush"

    const-string/jumbo v6, "checkAntiBrush error"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 64
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "location":Ljava/lang/String;
    .restart local v2    # "status":I
    .restart local v3    # "statusStr":Ljava/lang/String;
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto/16 :goto_2
.end method
