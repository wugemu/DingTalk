.class final Lhpp$1;
.super Ljava/lang/Object;
.source "AsyncDefaultResourceLoader.java"

# interfaces
.implements Lhpb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpp;->a(Lhpr;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

.field final synthetic b:Lhpr;

.field final synthetic c:Lhpp;


# direct methods
.method constructor <init>(Lhpp;Lcom/alibaba/lightapp/runtime/net/HydroCache$a;Lhpr;)V
    .locals 0
    .param p1, "this$0"    # Lhpp;

    .prologue
    .line 58
    iput-object p1, p0, Lhpp$1;->c:Lhpp;

    iput-object p2, p0, Lhpp$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iput-object p3, p0, Lhpp$1;->b:Lhpr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lhpp$1;->c:Lhpp;

    iget-object v1, p0, Lhpp$1;->c:Lhpp;

    .line 2043
    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 85
    const-string/jumbo v2, "net"

    invoke-static {v0, v1, v2, p1}, Lhpp;->a(Lhpp;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, Lhpp$1;->b:Lhpr;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lhpp$1;->b:Lhpr;

    invoke-interface {v0, p1, p2}, Lhpr;->onError(ILjava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public final a(Lhpg;)V
    .locals 5
    .param p1, "res"    # Lhpg;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 67
    const/16 v1, 0x130

    iget v2, p1, Lhpg;->b:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lhpp$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpp$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpp$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v1, v1, Lhpl;->a:[B

    if-eqz v1, :cond_1

    .line 70
    new-instance v0, Lhpg;

    invoke-direct {v0}, Lhpg;-><init>()V

    .line 71
    .local v0, "response":Lhpg;
    iget v1, p1, Lhpg;->b:I

    iput v1, v0, Lhpg;->b:I

    .line 72
    iget-object v1, p0, Lhpp$1;->a:Lcom/alibaba/lightapp/runtime/net/HydroCache$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/net/HydroCache$a;->e:Lhpl;

    iget-object v1, v1, Lhpl;->a:[B

    iput-object v1, v0, Lhpg;->a:[B

    .line 73
    iget-object v1, p0, Lhpp$1;->b:Lhpr;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lhpp$1;->b:Lhpr;

    invoke-interface {v1, v0}, Lhpr;->onSuccess(Lhpg;)V

    .line 80
    .end local v0    # "response":Lhpg;
    :cond_0
    :goto_0
    iget-object v1, p0, Lhpp$1;->c:Lhpp;

    iget-object v2, p0, Lhpp$1;->c:Lhpp;

    .line 1043
    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 80
    const-string/jumbo v3, "net"

    iget v4, p1, Lhpg;->b:I

    invoke-static {v1, v2, v3, v4}, Lhpp;->a(Lhpp;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void

    .line 77
    :cond_1
    iget-object v1, p0, Lhpp$1;->c:Lhpp;

    iget-object v2, p0, Lhpp$1;->b:Lhpr;

    invoke-static {v1, p1, v2}, Lhpp;->a(Lhpp;Lhpg;Lhpr;)V

    goto :goto_0
.end method
