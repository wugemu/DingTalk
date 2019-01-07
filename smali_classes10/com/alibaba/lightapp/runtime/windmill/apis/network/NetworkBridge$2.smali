.class final Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$2;
.super Ljava/lang/Object;
.source "NetworkBridge.java"

# interfaces
.implements Lcom/taobao/weex/bridge/JSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;->request(Ljava/util/Map;Ljrh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge$2;->a:Lcom/alibaba/lightapp/runtime/windmill/apis/network/NetworkBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 51
    return-void
.end method

.method public final invokeAndKeepAlive(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    return-void
.end method
