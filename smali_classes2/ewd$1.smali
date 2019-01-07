.class final Lewd$1;
.super Liew;
.source "QuickMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewd;->a(ZLeyo$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liew",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leyo$d;


# direct methods
.method constructor <init>(Leyo$d;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lewd$1;->a:Leyo$d;

    invoke-direct {p0}, Liew;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;

    .line 1037
    iget-object v3, p0, Lewd$1;->a:Leyo$d;

    .line 2059
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textIdList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textContentList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textContentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2061
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 2062
    new-instance v6, Leux;

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textIdList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListResultModel;->textContentList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Leux;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2061
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1037
    :cond_0
    invoke-interface {v3, v4}, Leyo$d;->a(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 42
    iget-object v0, p0, Lewd$1;->a:Leyo$d;

    invoke-interface {v0, p1, p2, p3}, Leyo$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public final getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 47
    invoke-super {p0}, Liew;->getRequestBuilder()Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    if-eqz v0, :cond_0

    .line 49
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 52
    :cond_0
    return-object v0
.end method
