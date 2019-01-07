.class final Lcmf$1$1;
.super Ljava/lang/Object;
.source "RPCRequestHandlerExt2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmf$1;->filter(Liys;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmf$1;


# direct methods
.method constructor <init>(Lcmf$1;)V
    .locals 0
    .param p1, "this$1"    # Lcmf$1;

    .prologue
    .line 48
    .local p0, "this":Lcmf$1$1;, "Lcmf$1$1;"
    iput-object p1, p0, Lcmf$1$1;->a:Lcmf$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    .local p0, "this":Lcmf$1$1;, "Lcmf$1$1;"
    iget-object v0, p0, Lcmf$1$1;->a:Lcmf$1;

    iget-object v0, v0, Lcmf$1;->b:Lcmf;

    invoke-static {v0}, Lcmf;->a(Lcmf;)Lcmb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcmf$1$1;->a:Lcmf$1;

    iget-object v0, v0, Lcmf$1;->b:Lcmf;

    invoke-static {v0}, Lcmf;->a(Lcmf;)Lcmb;

    move-result-object v0

    const-string/jumbo v1, "408"

    const-string/jumbo v2, "REQUEST_LOCAL_TIMEOUT_ERR"

    invoke-interface {v0, v1, v2}, Lcmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
