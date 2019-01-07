.class final Lgpt$5$1;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpt$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpt$5;


# direct methods
.method constructor <init>(Lgpt$5;)V
    .locals 0
    .param p1, "this$0"    # Lgpt$5;

    .prologue
    .line 677
    iput-object p1, p0, Lgpt$5$1;->a:Lgpt$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 680
    iget-object v0, p0, Lgpt$5$1;->a:Lgpt$5;

    iget-object v0, v0, Lgpt$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lgpt$5$1;->a:Lgpt$5;

    iget-object v0, v0, Lgpt$5;->b:Lcma;

    iget-object v1, p0, Lgpt$5$1;->a:Lgpt$5;

    iget-object v1, v1, Lgpt$5;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 683
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 692
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lgpt$5$1;->a:Lgpt$5;

    iget-object v1, v1, Lgpt$5;->a:Ljava/lang/String;

    const-string/jumbo v2, "sendMessageToConversation"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lgpt$5$1;->a:Lgpt$5;

    iget-object v0, v0, Lgpt$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lgpt$5$1;->a:Lgpt$5;

    iget-object v0, v0, Lgpt$5;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 688
    return-void
.end method
