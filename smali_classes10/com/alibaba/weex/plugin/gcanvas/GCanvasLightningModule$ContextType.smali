.class final enum Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;
.super Ljava/lang/Enum;
.source "GCanvasLightningModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

.field public static final enum _2D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

.field public static final enum _3D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    const-string/jumbo v1, "_2D"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->_2D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    new-instance v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    const-string/jumbo v1, "_3D"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->_3D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    .line 348
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->_2D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->_3D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->$VALUES:[Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 354
    iput p3, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->value:I

    .line 355
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    const-class v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->$VALUES:[Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    invoke-virtual {v0}, [Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->value:I

    return v0
.end method
