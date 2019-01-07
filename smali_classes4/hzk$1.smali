.class final Lhzk$1;
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
        "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic d:Lhzk;


# direct methods
.method constructor <init>(Lhzk;Ljava/util/HashMap;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lhzk;

    .prologue
    .line 123
    iput-object p1, p0, Lhzk$1;->d:Lhzk;

    iput-object p2, p0, Lhzk$1;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lhzk$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lhzk$1;->c:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
