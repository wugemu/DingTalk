.class final Lgpt$4;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Lcma;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lgpt$4;->a:Lcma;

    iput-object p2, p0, Lgpt$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lgpt$4;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 472
    check-cast p1, Ljava/lang/Long;

    .line 1475
    if-nez p1, :cond_0

    .line 1476
    const-string/jumbo v0, "CSpace"

    invoke-static {}, Lgpt;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkEncryptConversationSpace"

    const-string/jumbo v3, "10607"

    const-string/jumbo v4, "spaceId is null "

    const/4 v5, 0x0

    .line 1477
    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object v0, p0, Lgpt$4;->a:Lcma;

    const-string/jumbo v1, "10607"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1483
    :cond_0
    iget-object v0, p0, Lgpt$4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1485
    iget-object v1, p0, Lgpt$4;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    iget-object v1, p0, Lgpt$4;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateExtensionByKeys(Ljava/util/Map;)V

    .line 1489
    :cond_1
    iget-object v0, p0, Lgpt$4;->a:Lcma;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 500
    const-string/jumbo v0, "CSpace"

    invoke-static {}, Lgpt;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkEncryptConversationSpace"

    const/4 v3, 0x0

    .line 501
    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lgpt$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 496
    return-void
.end method
