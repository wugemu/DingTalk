.class final Lhox$1$1$1;
.super Ljava/lang/Object;
.source "AlipayHandleUrlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhox$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhox$1$1;


# direct methods
.method constructor <init>(Lhox$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lhox$1$1;

    .prologue
    .line 172
    iput-object p1, p0, Lhox$1$1$1;->a:Lhox$1$1;

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
    .line 175
    iget-object v0, p0, Lhox$1$1$1;->a:Lhox$1$1;

    iget-object v0, v0, Lhox$1$1;->b:Lhox$1;

    iget-object v0, v0, Lhox$1;->e:Lhox;

    iget-object v1, p0, Lhox$1$1$1;->a:Lhox$1$1;

    iget-object v1, v1, Lhox$1$1;->b:Lhox$1;

    iget-object v1, v1, Lhox$1;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iget-object v2, p0, Lhox$1$1$1;->a:Lhox$1$1;

    iget-object v2, v2, Lhox$1$1;->b:Lhox$1;

    iget-object v2, v2, Lhox$1;->b:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lhox$1$1$1;->a:Lhox$1$1;

    iget-object v4, v4, Lhox$1$1;->b:Lhox$1;

    iget-object v4, v4, Lhox$1;->d:Lhot;

    invoke-static {v0, v1, v2, v3, v4}, Lhox;->a(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;ZLhot;)V

    .line 176
    return-void
.end method
