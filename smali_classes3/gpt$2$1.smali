.class final Lgpt$2$1;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpt$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lgpt$2;


# direct methods
.method constructor <init>(Lgpt$2;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lgpt$2;

    .prologue
    .line 324
    iput-object p1, p0, Lgpt$2$1;->b:Lgpt$2;

    iput-object p2, p0, Lgpt$2$1;->a:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 337
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 324
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1327
    if-eqz p1, :cond_0

    .line 1328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1329
    const-string/jumbo v1, "cSpaceId"

    iget-object v2, p0, Lgpt$2$1;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateExtensionByKeys(Ljava/util/Map;)V

    .line 324
    :cond_0
    return-void
.end method
