.class public final enum Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;
.super Ljava/lang/Enum;
.source "TeleVideoUserWindowObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

.field public static final enum MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

.field public static final enum MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

.field public static final enum MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    const-string/jumbo v1, "MODE_MIC_STATUS_RENDER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 227
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    const-string/jumbo v1, "MODE_CAM_STATUS_RENDER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 228
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    const-string/jumbo v1, "MODE_ALL_RENDER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    .line 225
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_MIC_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_CAM_STATUS_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->MODE_ALL_RENDER:Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

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
    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject$RenderMode;

    return-object v0
.end method
