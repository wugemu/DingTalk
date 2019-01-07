.class final Leyc$24;
.super Lcmi;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyc;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$e;

.field final synthetic b:Leyc;


# direct methods
.method constructor <init>(Leyc;Leyo$e;)V
    .locals 0
    .param p1, "this$0"    # Leyc;

    .prologue
    .line 360
    iput-object p1, p0, Leyc$24;->b:Leyc;

    iput-object p2, p0, Leyc$24;->a:Leyo$e;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 377
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 379
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 380
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 383
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 370
    iget-object v0, p0, Leyc$24;->a:Leyo$e;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Leyc$24;->a:Leyo$e;

    invoke-interface {v0, p1, p2}, Leyo$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 360
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;

    .line 1363
    iget-object v0, p0, Leyc$24;->a:Leyo$e;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Leyc$24;->a:Leyo$e;

    invoke-interface {v0, p1}, Leyo$e;->a(Ljava/lang/Object;)V

    .line 360
    :cond_0
    return-void
.end method
