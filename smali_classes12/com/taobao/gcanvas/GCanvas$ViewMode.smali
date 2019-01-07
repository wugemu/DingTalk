.class public final enum Lcom/taobao/gcanvas/GCanvas$ViewMode;
.super Ljava/lang/Enum;
.source "GCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/gcanvas/GCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/gcanvas/GCanvas$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field public static final enum FLOAT_HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field public static final enum HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field public static final enum NONE_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field public static final enum SINGLE_CANVAS_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field public static final enum SWITCH_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

.field public static final enum WEEX_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    new-instance v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    const-string/jumbo v1, "NONE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/gcanvas/GCanvas$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->NONE_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    new-instance v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    const-string/jumbo v1, "SINGLE_CANVAS_MODE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/gcanvas/GCanvas$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->SINGLE_CANVAS_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    new-instance v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    const-string/jumbo v1, "SWITCH_MODE"

    invoke-direct {v0, v1, v5}, Lcom/taobao/gcanvas/GCanvas$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->SWITCH_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    new-instance v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    const-string/jumbo v1, "HYBRID_MODE"

    invoke-direct {v0, v1, v6}, Lcom/taobao/gcanvas/GCanvas$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    new-instance v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    const-string/jumbo v1, "FLOAT_HYBRID_MODE"

    invoke-direct {v0, v1, v7}, Lcom/taobao/gcanvas/GCanvas$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->FLOAT_HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    new-instance v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    const-string/jumbo v1, "WEEX_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/gcanvas/GCanvas$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->WEEX_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/gcanvas/GCanvas$ViewMode;

    sget-object v1, Lcom/taobao/gcanvas/GCanvas$ViewMode;->NONE_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/gcanvas/GCanvas$ViewMode;->SINGLE_CANVAS_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/gcanvas/GCanvas$ViewMode;->SWITCH_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/gcanvas/GCanvas$ViewMode;->HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/gcanvas/GCanvas$ViewMode;->FLOAT_HYBRID_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/gcanvas/GCanvas$ViewMode;->WEEX_MODE:Lcom/taobao/gcanvas/GCanvas$ViewMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->$VALUES:[Lcom/taobao/gcanvas/GCanvas$ViewMode;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/gcanvas/GCanvas$ViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/gcanvas/GCanvas$ViewMode;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/taobao/gcanvas/GCanvas$ViewMode;->$VALUES:[Lcom/taobao/gcanvas/GCanvas$ViewMode;

    invoke-virtual {v0}, [Lcom/taobao/gcanvas/GCanvas$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/gcanvas/GCanvas$ViewMode;

    return-object v0
.end method
