.class public final enum Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;
.super Ljava/lang/Enum;
.source "RuntimeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

.field public static final enum FINISH:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

.field public static final enum INIT:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

.field public static final enum RUNNING:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->INIT:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    new-instance v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->RUNNING:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    new-instance v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    const-string/jumbo v1, "FINISH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->FINISH:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    sget-object v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->INIT:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->RUNNING:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->FINISH:Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->$VALUES:[Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->$VALUES:[Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/cache/RuntimeCacheManager$Status;

    return-object v0
.end method
