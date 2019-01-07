.class final enum Lali/mmpc/pwp/PwpClient$PWPProjectionState;
.super Ljava/lang/Enum;
.source "PwpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lali/mmpc/pwp/PwpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PWPProjectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lali/mmpc/pwp/PwpClient$PWPProjectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lali/mmpc/pwp/PwpClient$PWPProjectionState;

.field public static final enum PWP_PROJECTION_STATE_INITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

.field public static final enum PWP_PROJECTION_STATE_REQUESTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

.field public static final enum PWP_PROJECTION_STATE_STARTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

.field public static final enum PWP_PROJECTION_STATE_STOPED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

.field public static final enum PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    const-string/jumbo v1, "PWP_PROJECTION_STATE_UNINITED"

    invoke-direct {v0, v1, v2}, Lali/mmpc/pwp/PwpClient$PWPProjectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 132
    new-instance v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    const-string/jumbo v1, "PWP_PROJECTION_STATE_INITED"

    invoke-direct {v0, v1, v3}, Lali/mmpc/pwp/PwpClient$PWPProjectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_INITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 133
    new-instance v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    const-string/jumbo v1, "PWP_PROJECTION_STATE_REQUESTED"

    invoke-direct {v0, v1, v4}, Lali/mmpc/pwp/PwpClient$PWPProjectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_REQUESTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 134
    new-instance v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    const-string/jumbo v1, "PWP_PROJECTION_STATE_STARTED"

    invoke-direct {v0, v1, v5}, Lali/mmpc/pwp/PwpClient$PWPProjectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STARTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 135
    new-instance v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    const-string/jumbo v1, "PWP_PROJECTION_STATE_STOPED"

    invoke-direct {v0, v1, v6}, Lali/mmpc/pwp/PwpClient$PWPProjectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STOPED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_UNINITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    aput-object v1, v0, v2

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_INITED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    aput-object v1, v0, v3

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_REQUESTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    aput-object v1, v0, v4

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STARTED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    aput-object v1, v0, v5

    sget-object v1, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->PWP_PROJECTION_STATE_STOPED:Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    aput-object v1, v0, v6

    sput-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->$VALUES:[Lali/mmpc/pwp/PwpClient$PWPProjectionState;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lali/mmpc/pwp/PwpClient$PWPProjectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    return-object v0
.end method

.method public static values()[Lali/mmpc/pwp/PwpClient$PWPProjectionState;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lali/mmpc/pwp/PwpClient$PWPProjectionState;->$VALUES:[Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    invoke-virtual {v0}, [Lali/mmpc/pwp/PwpClient$PWPProjectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lali/mmpc/pwp/PwpClient$PWPProjectionState;

    return-object v0
.end method
