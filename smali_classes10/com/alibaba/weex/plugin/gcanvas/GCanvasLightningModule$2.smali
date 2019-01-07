.class final Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$2;
.super Ljava/lang/Object;
.source "GCanvasLightningModule.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->bindImageTexture(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
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
        "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$2;->c:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    iput-object p2, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
