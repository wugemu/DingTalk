.class final Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;
.super Ljava/lang/Object;
.source "MailForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;->a:Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    .line 1046
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;->a:Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;->a:Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->finishCurrentPage()V

    .line 43
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;->a:Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler$1;->a:Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/forward/MailForwardHandler;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 54
    return-void
.end method
