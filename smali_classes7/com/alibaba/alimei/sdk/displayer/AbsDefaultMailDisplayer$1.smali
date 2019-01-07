.class Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;
.super Ljava/lang/Object;
.source "AbsDefaultMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->loadMoreHistoryMail(Lxv;)V
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
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->val$listener:Lxv;

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
    .line 171
    const-string/jumbo v0, "AbsDefaultMailDisplayer"

    const-string/jumbo v1, "loadmore failed for exception"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 162
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->val$listener:Lxv;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->val$listener:Lxv;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v0

    :cond_0
    invoke-interface {v1, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$002(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;Z)Z

    .line 166
    const-string/jumbo v0, "AbsDefaultMailDisplayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loadmore success, hasMore: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->access$000(Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 165
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
