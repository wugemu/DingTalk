.class public final Lbjd;
.super Ljava/lang/Object;
.source "DingSync.java"


# static fields
.field private static a:Lbjd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lbjd;

    invoke-direct {v0}, Lbjd;-><init>()V

    sput-object v0, Lbjd;->a:Lbjd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lbjd;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lbjd;->a:Lbjd;

    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingSync]init"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 29
    new-instance v0, Lbje;

    invoke-direct {v0}, Lbje;-><init>()V

    .line 31
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v2, Lbjc;

    invoke-direct {v2}, Lbjc;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 32
    return-void
.end method
