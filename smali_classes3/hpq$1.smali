.class final Lhpq$1;
.super Ljava/lang/Object;
.source "AsyncHydroNetStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;

.field final synthetic b:Lhpq;


# direct methods
.method constructor <init>(Lhpq;Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;)V
    .locals 0
    .param p1, "this$0"    # Lhpq;

    .prologue
    .line 118
    iput-object p1, p0, Lhpq$1;->b:Lhpq;

    iput-object p2, p0, Lhpq$1;->a:Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lhpq$1;->a:Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;

    .line 1055
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->e:Lhpr;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->a(Lhpr;)V

    .line 122
    return-void
.end method
