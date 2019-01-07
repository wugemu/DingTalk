.class public final enum Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;
.super Ljava/lang/Enum;
.source "ScreenMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

.field public static final enum FULL_SCREEN:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

.field public static final enum TINY_WINDOW:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->NORMAL:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    const-string/jumbo v1, "FULL_SCREEN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->FULL_SCREEN:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    const-string/jumbo v1, "TINY_WINDOW"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->TINY_WINDOW:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->NORMAL:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->FULL_SCREEN:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->TINY_WINDOW:Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->$VALUES:[Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->$VALUES:[Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/video/play/ScreenMode;

    return-object v0
.end method
