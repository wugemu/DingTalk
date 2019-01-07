.class public final enum Lcom/alibaba/wukong/sync/SyncType;
.super Ljava/lang/Enum;
.source "SyncType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/sync/SyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/sync/SyncType;

.field public static final enum SYNC:Lcom/alibaba/wukong/sync/SyncType;

.field public static final enum SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

.field public static final enum SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/wukong/sync/SyncType;

    const-string/jumbo v1, "SYNC"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v0, Lcom/alibaba/wukong/sync/SyncType;

    const-string/jumbo v1, "SYNC_A"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/sync/SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v0, Lcom/alibaba/wukong/sync/SyncType;

    const-string/jumbo v1, "SYNC_DEVICE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/sync/SyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/sync/SyncType;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC:Lcom/alibaba/wukong/sync/SyncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_DEVICE:Lcom/alibaba/wukong/sync/SyncType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/sync/SyncType;->$VALUES:[Lcom/alibaba/wukong/sync/SyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/sync/SyncType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/wukong/sync/SyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/sync/SyncType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->$VALUES:[Lcom/alibaba/wukong/sync/SyncType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/sync/SyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/sync/SyncType;

    return-object v0
.end method
