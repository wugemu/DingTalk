.class final Leyc$23;
.super Lcmi;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leyc;->d(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
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
    .line 313
    iput-object p1, p0, Leyc$23;->c:Leyc;

    iput-object p2, p0, Leyc$23;->a:Leyo$d;

    iput-object p3, p0, Leyc$23;->b:Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

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
    .line 338
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 340
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 341
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 344
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
    .line 325
    iget-object v2, p0, Leyc$23;->a:Leyo$d;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Leyc$23;->a:Leyo$d;

    invoke-interface {v2, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    new-instance v1, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-direct {v1}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;-><init>()V

    .line 329
    .local v1, "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    iget-object v2, p0, Leyc$23;->b:Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->fromIDLModel(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 331
    new-instance v0, Leyc$c;

    iget-object v2, p0, Leyc$23;->c:Leyc;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Leyc$c;-><init>(Leyc;B)V

    .line 2144
    .local v0, "helper":Leyc$c;
    if-eqz v1, :cond_0

    .line 2145
    iput-object v1, v0, Leyc$c;->a:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 2146
    invoke-virtual {v0}, Leyc$c;->a()V

    .line 334
    .end local v0    # "helper":Leyc$c;
    .end local v1    # "object":Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 313
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;

    .line 2317
    iget-object v0, p0, Leyc$23;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Leyc$23;->a:Leyo$d;

    invoke-interface {v0, p1}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 313
    :cond_0
    return-void
.end method
