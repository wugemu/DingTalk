.class public final Lewd$2;
.super Liew;
.source "QuickMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liew",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leyo$d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lewd$2;->a:Leyo$d;

    iput-object p2, p0, Lewd$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Liew;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 78
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextResultModel;

    .line 1081
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextResultModel;->textContents:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextResultModel;->textContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    iget-object v0, p0, Lewd$2;->a:Leyo$d;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "invalid query result"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1083
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v1, p0, Lewd$2;->a:Leyo$d;

    new-instance v2, Leux;

    iget-object v3, p0, Lewd$2;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryMedusaTextResultModel;->textContents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Leux;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Leyo$d;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    iget-object v0, p0, Lewd$2;->a:Leyo$d;

    invoke-interface {v0, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 96
    invoke-super {p0}, Liew;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 97
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 98
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 100
    :cond_0
    return-object v0
.end method
