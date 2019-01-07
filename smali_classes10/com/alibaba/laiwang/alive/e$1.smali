.class final Lcom/alibaba/laiwang/alive/e$1;
.super Ljava/lang/Object;
.source "XpnDeviceRpc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/alive/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic val$callback:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/e$1;->val$callback:Lcom/alibaba/wukong/Callback;

    iput-object p2, p0, Lcom/alibaba/laiwang/alive/e$1;->e:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/laiwang/alive/e$1;->f:I

    iput-object p4, p0, Lcom/alibaba/laiwang/alive/e$1;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    new-instance v0, Lcom/alibaba/laiwang/alive/e$1$1;

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/e$1;->val$callback:Lcom/alibaba/wukong/Callback;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/laiwang/alive/e$1$1;-><init>(Lcom/alibaba/laiwang/alive/e$1;Lcom/alibaba/wukong/Callback;)V

    .line 35
    .local v0, "rpcHandler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v1, Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;

    iget-object v2, p0, Lcom/alibaba/laiwang/alive/e$1;->e:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/laiwang/alive/e$1;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/laiwang/alive/e$1;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alibaba/laiwang/alive/idl/xpn/client/IDLUserDeviceService;->regDev(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Liyv;)V

    .line 36
    return-void
.end method
