.class final Lhzk$2;
.super Ljava/lang/Object;
.source "GCanvasImageLoader.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhzk;->a(Ljava/lang/String;ILcom/taobao/weex/bridge/JSCallback;)V
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

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:I

.field final synthetic d:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic e:Lhzk;


# direct methods
.method constructor <init>(Lhzk;Ljava/lang/String;Ljava/util/HashMap;ILcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lhzk;

    .prologue
    .line 84
    iput-object p1, p0, Lhzk$2;->e:Lhzk;

    iput-object p2, p0, Lhzk$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lhzk$2;->b:Ljava/util/HashMap;

    iput p4, p0, Lhzk$2;->c:I

    iput-object p5, p0, Lhzk$2;->d:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
