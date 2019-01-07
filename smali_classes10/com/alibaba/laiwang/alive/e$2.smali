.class final Lcom/alibaba/laiwang/alive/e$2;
.super Ljava/lang/Object;
.source "XpnDeviceRpc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/e;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/e$2;->val$callback:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Lcom/alibaba/laiwang/alive/e$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    new-instance v0, Lcom/alibaba/laiwang/alive/e$2$1;

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/e$2;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/laiwang/alive/e$2$1;-><init>(Lcom/alibaba/laiwang/alive/e$2;Lcom/alibaba/wukong/Callback;)V

    .line 57
    .local v0, "rpcHandler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v1, Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;

    iget-object v2, p0, Lcom/alibaba/laiwang/alive/e$2;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;->unregistDevice(Ljava/lang/String;Liyv;)V

    .line 58
    return-void
.end method
