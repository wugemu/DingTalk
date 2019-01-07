.class public final Leyc$1;
.super Lcmi;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$c;

.field final synthetic b:Leyc;


# direct methods
.method public constructor <init>(Leyc;Leyo$c;)V
    .locals 0
    .param p1, "this$0"    # Leyc;

    .prologue
    .line 80
    iput-object p1, p0, Leyc$1;->b:Leyc;

    iput-object p2, p0, Leyc$1;->a:Leyo$c;

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
    .line 97
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 99
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 100
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 103
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    iget-object v0, p0, Leyc$1;->a:Leyo$c;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Leyc$1;->a:Leyo$c;

    invoke-interface {v0, p1, p2}, Leyo$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfCreateModel;

    .line 1083
    iget-object v0, p0, Leyc$1;->a:Leyo$c;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Leyc$1;->a:Leyo$c;

    invoke-interface {v0, p1}, Leyo$c;->a(Ljava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method
