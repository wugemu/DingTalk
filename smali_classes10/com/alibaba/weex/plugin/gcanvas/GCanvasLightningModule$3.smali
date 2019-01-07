.class final Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;
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
        "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic h:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;ILjava/lang/String;Lcom/taobao/weex/bridge/JSCallback;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->h:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;

    iput p2, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->a:I

    iput-object p3, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->c:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p5, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->d:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->f:Ljava/lang/Object;

    iput-object p8, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
