.class public final Lavd;
.super Ljava/lang/Object;
.source "CalendarSync.java"


# static fields
.field private static a:Lavd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lavd;

    invoke-direct {v0}, Lavd;-><init>()V

    sput-object v0, Lavd;->a:Lavd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static a()Lavd;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lavd;->a:Lavd;

    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarSync]init"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 54
    new-instance v0, Lave;

    invoke-direct {v0}, Lave;-><init>()V

    .line 57
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v2, Lavc;

    invoke-direct {v2}, Lavc;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 58
    return-void
.end method
