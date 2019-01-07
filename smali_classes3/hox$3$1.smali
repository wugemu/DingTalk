.class final Lhox$3$1;
.super Ljava/lang/Object;
.source "AlipayHandleUrlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhox$3;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhox$3;


# direct methods
.method constructor <init>(Lhox$3;Z)V
    .locals 0
    .param p1, "this$1"    # Lhox$3;

    .prologue
    .line 469
    iput-object p1, p0, Lhox$3$1;->b:Lhox$3;

    iput-boolean p2, p0, Lhox$3$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 472
    iget-object v0, p0, Lhox$3$1;->b:Lhox$3;

    iget-object v0, v0, Lhox$3;->d:Lhox;

    iget-object v1, p0, Lhox$3$1;->b:Lhox$3;

    iget-object v1, v1, Lhox$3;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iget-object v2, p0, Lhox$3$1;->b:Lhox$3;

    iget-object v2, v2, Lhox$3;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lhox$3$1;->a:Z

    iget-object v4, p0, Lhox$3$1;->b:Lhox$3;

    iget-object v4, v4, Lhox$3;->c:Lhot;

    invoke-static {v0, v1, v2, v3, v4}, Lhox;->a(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V

    .line 473
    return-void
.end method
