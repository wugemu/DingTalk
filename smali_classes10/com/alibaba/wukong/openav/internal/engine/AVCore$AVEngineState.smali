.class public final enum Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
.super Ljava/lang/Enum;
.source "AVCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/internal/engine/AVCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVEngineState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

.field public static final enum BUSY:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

.field public static final enum IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

.field public static final enum PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    new-instance v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    const-string/jumbo v1, "PREPARED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    new-instance v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    const-string/jumbo v1, "BUSY"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->BUSY:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->IDLE:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->PREPARED:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->BUSY:Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->$VALUES:[Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->$VALUES:[Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/openav/internal/engine/AVCore$AVEngineState;

    return-object v0
.end method
