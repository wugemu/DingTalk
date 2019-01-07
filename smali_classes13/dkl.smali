.class public Ldkl;
.super Ljava/lang/Object;
.source "RedPacketsStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldkl$a;
    }
.end annotation


# static fields
.field private static volatile a:Ldkl;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldq;

.field private d:Ldkl$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldkl;->b:Ljava/util/HashMap;

    .line 37
    new-instance v1, Ldkl$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldkl$a;-><init>(Ldkl;B)V

    iput-object v1, p0, Ldkl;->d:Ldkl$a;

    .line 38
    invoke-static {p1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Ldkl;->c:Ldq;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "intent_action_pick_status_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Ldkl;->c:Ldq;

    iget-object v2, p0, Ldkl;->d:Ldkl$a;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 41
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)I
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 59
    const/4 v1, -0x1

    .line 60
    .local v1, "status":I
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    const/4 v3, -0x1

    .line 73
    :goto_0
    return v3

    .line 64
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->localExtras()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "red_packets_pick_status"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "statusStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_2
    :goto_1
    move v3, v1

    .line 73
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Failed parse redpackets status="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", error="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 69
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ldkl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v0, Ldkl;->a:Ldkl;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Ldkl;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Ldkl;->a:Ldkl;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ldkl;

    invoke-direct {v0, p0}, Ldkl;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldkl;->a:Ldkl;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Ldkl;->a:Ldkl;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldkl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Ldkl;

    .prologue
    .line 24
    iget-object v0, p0, Ldkl;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Ldkl;)Ldq;
    .locals 1
    .param p0, "x0"    # Ldkl;

    .prologue
    .line 24
    iget-object v0, p0, Ldkl;->c:Ldq;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "clusterId"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 55
    iget-object v0, p0, Ldkl;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method
