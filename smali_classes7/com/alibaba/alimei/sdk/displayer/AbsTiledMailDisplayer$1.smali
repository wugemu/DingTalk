.class Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;
.super Ljava/lang/Object;
.source "AbsTiledMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->loadMoreHistoryMail(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 235
    const-string/jumbo v0, "MailTiledDisplayer"

    const-string/jumbo v1, "loadMoreHistoryMail fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 239
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 227
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v0

    .line 228
    .local v0, "sVoid":Lxv$a;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->val$listener:Lxv;

    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 231
    :cond_0
    return-void

    .line 227
    .end local v0    # "sVoid":Lxv$a;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 224
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
