.class final Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;
.super Ljava/lang/Object;
.source "GCanvasLightningModule.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->texSubImage2D(Ljava/lang/String;IIIIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/intf/event/IPhenixListener",
        "<",
        "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Ljava/lang/Object;

.field final synthetic i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic j:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/String;IIIIIILjava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->j:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    iput-object p2, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->b:I

    iput p4, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->c:I

    iput p5, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->d:I

    iput p6, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->e:I

    iput p7, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->f:I

    iput p8, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->g:I

    iput-object p9, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->h:Ljava/lang/Object;

    iput-object p10, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
