.class Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;
.super Ljava/lang/Object;
.source "PhoneContact.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvatarResponseReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 240
    return-void
.end method

.method public onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string/jumbo v0, "PhoneContact"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 235
    return-void
.end method
