.class final Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;
.super Ljava/lang/Object;
.source "BroadcastBridge.java"

# interfaces
.implements Lhsd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->_onMessage_(ILjrh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljrh;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;Ljrh;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;->b:Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;->a:Ljrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;->a:Ljrh;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge$1;->b:Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;

    const-string/jumbo v2, "0"

    invoke-static {v1, v2, p1}, Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;->access$000(Lcom/alibaba/lightapp/runtime/windmill/apis/broadcast/BroadcastBridge;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljrh;->a(Ljava/lang/Object;)V

    .line 130
    return-void
.end method
