.class final Liae$1;
.super Ljava/lang/Object;
.source "IMTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liae;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liae;


# direct methods
.method constructor <init>(Liae;)V
    .locals 0
    .param p1, "this$0"    # Liae;

    .prologue
    .line 46
    .local p0, "this":Liae$1;, "Liae$1;"
    iput-object p1, p0, Liae$1;->a:Liae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Liae$1;, "Liae$1;"
    new-instance v0, Liae$1$1;

    invoke-direct {v0, p0}, Liae$1$1;-><init>(Liae$1;)V

    .line 130
    .local v0, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    iget-object v1, p0, Liae$1;->a:Liae;

    iget-object v2, p0, Liae$1;->a:Liae;

    invoke-virtual {v2}, Liae;->onBeforeRpc()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Liae;->onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V

    .line 131
    return-void
.end method
