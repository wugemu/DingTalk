.class public final enum Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;
.super Ljava/lang/Enum;
.source "SceneRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

.field public static final enum ANIMATING:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    const-string/jumbo v1, "ANIMATING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->ANIMATING:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->ANIMATING:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    return-object v0
.end method
