.class final Leyc$22;
.super Lcmi;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyc;->c(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;

.field final synthetic b:Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

.field final synthetic c:Leyc;


# direct methods
.method constructor <init>(Leyc;Leyo$d;Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)V
    .locals 0
    .param p1, "this$0"    # Leyc;

    .prologue
    .line 266
    iput-object p1, p0, Leyc$22;->c:Leyc;

    iput-object p2, p0, Leyc$22;->a:Leyo$d;

    iput-object p3, p0, Leyc$22;->b:Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

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
    .line 289
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 291
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 292
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 295
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 276
    iget-object v2, p0, Leyc$22;->a:Leyo$d;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Leyc$22;->a:Leyo$d;

    invoke-interface {v2, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    new-instance v0, Leyc$b;

    iget-object v2, p0, Leyc$22;->c:Leyc;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Leyc$b;-><init>(Leyc;B)V

    .line 281
    .local v0, "helper":Leyc$b;
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 282
    .local v1, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-object v2, p0, Leyc$22;->b:Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 2203
    if-eqz v1, :cond_0

    .line 2204
    iput-object v1, v0, Leyc$b;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 2205
    invoke-virtual {v0}, Leyc$b;->a()V

    .line 285
    .end local v0    # "helper":Leyc$b;
    .end local v1    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 266
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    .line 2269
    iget-object v0, p0, Leyc$22;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Leyc$22;->a:Leyo$d;

    invoke-interface {v0, p1}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 266
    :cond_0
    return-void
.end method
