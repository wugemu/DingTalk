.class public final Leyd$9;
.super Lcmi;
.source "ConferenceCallAdminImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leyd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;

.field final synthetic b:Leyd;


# direct methods
.method public constructor <init>(Leyd;Leyo$d;)V
    .locals 0
    .param p1, "this$0"    # Leyd;

    .prologue
    .line 302
    iput-object p1, p0, Leyd$9;->b:Leyd;

    iput-object p2, p0, Leyd$9;->a:Leyo$d;

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
    .line 319
    invoke-super {p0}, Lcmi;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 321
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 322
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 325
    :cond_0
    return-object v0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    iget-object v0, p0, Leyd$9;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Leyd$9;->a:Leyo$d;

    invoke-interface {v0, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 302
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ShowPageRspModel;

    .line 1305
    iget-object v0, p0, Leyd$9;->a:Leyo$d;

    if-eqz v0, :cond_0

    .line 1306
    iget-object v0, p0, Leyd$9;->a:Leyo$d;

    invoke-interface {v0, p1}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 302
    :cond_0
    return-void
.end method