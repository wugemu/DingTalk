.class public final enum Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;
.super Ljava/lang/Enum;
.source "BaseFloatingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/operation/BaseFloatingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FloatingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field public static final enum FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field public static final enum FLOATING_UNKNOWN:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field public static final enum FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field public static final enum FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

.field public static final enum FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    const-string/jumbo v1, "FLOATING_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_UNKNOWN:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .line 21
    new-instance v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    const-string/jumbo v1, "FLOATING_CONF"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .line 22
    new-instance v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    const-string/jumbo v1, "FLOATING_VIDEO_RUN_EXT"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .line 23
    new-instance v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    const-string/jumbo v1, "FLOATING_VIDEO_RUN_HOLDER"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .line 24
    new-instance v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    const-string/jumbo v1, "FLOATING_VOIP"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_UNKNOWN:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_EXT:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VIDEO_RUN_HOLDER:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_VOIP:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->$VALUES:[Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->$VALUES:[Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    return-object v0
.end method
