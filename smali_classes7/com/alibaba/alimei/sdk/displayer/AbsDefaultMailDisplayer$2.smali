.class Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;
.super Ljava/lang/Object;
.source "AbsDefaultMailDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->changeAllReadStatus(ZLxv;)V
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
        "Lxv$a;",
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
    .line 286
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->val$listener:Lxv;

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
    .line 296
    const-string/jumbo v0, "AbsDefaultMailDisplayer"

    const-string/jumbo v1, "changeAllReadStatus fail"

    invoke-static {v0, v1, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 300
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Lxv$a;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->onSuccess(Lxv$a;)V

    return-void
.end method

.method public onSuccess(Lxv$a;)V
    .locals 1
    .param p1, "result"    # Lxv$a;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer$2;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 292
    :cond_0
    return-void
.end method
