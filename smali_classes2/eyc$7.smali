.class public final Leyc$7;
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
        "Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Leyc;


# direct methods
.method public constructor <init>(Leyc;Leyo$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leyc;

    .prologue
    .line 619
    iput-object p1, p0, Leyc$7;->d:Leyc;

    iput-object p2, p0, Leyc$7;->a:Leyo$a;

    iput-object p3, p0, Leyc$7;->b:Ljava/lang/String;

    iput-object p4, p0, Leyc$7;->c:Ljava/lang/String;

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
    .line 638
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 640
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 641
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 644
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 629
    iget-object v1, p0, Leyc$7;->a:Leyo$a;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Leyc$7;->a:Leyo$a;

    invoke-interface {v1, p1, p2, p3}, Leyo$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    :cond_0
    new-instance v0, Leyc$a;

    iget-object v1, p0, Leyc$7;->d:Leyc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leyc$a;-><init>(Leyc;B)V

    .line 633
    .local v0, "helper":Leyc$a;
    iget-object v1, p0, Leyc$7;->b:Ljava/lang/String;

    iget-object v2, p0, Leyc$7;->c:Ljava/lang/String;

    .line 2265
    iput-object v1, v0, Leyc$a;->b:Ljava/lang/String;

    .line 2266
    iput-object v2, v0, Leyc$a;->c:Ljava/lang/String;

    .line 2267
    invoke-virtual {v0}, Leyc$a;->a()V

    .line 634
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 619
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/TeleChatResultModel;

    .line 2622
    iget-object v0, p0, Leyc$7;->a:Leyo$a;

    if-eqz v0, :cond_0

    .line 2623
    iget-object v0, p0, Leyc$7;->a:Leyo$a;

    invoke-interface {v0, p1}, Leyo$a;->a(Ljava/lang/Object;)V

    .line 619
    :cond_0
    return-void
.end method
