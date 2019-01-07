.class final Lcxk$1;
.super Ljava/lang/Object;
.source "SessionTextItemHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxk;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Lcxk;


# direct methods
.method constructor <init>(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcxk;

    .prologue
    .line 365
    iput-object p1, p0, Lcxk$1;->d:Lcxk;

    iput-object p2, p0, Lcxk$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p3, p0, Lcxk$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcxk$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    check-cast p1, Ljava/util/List;

    .line 1368
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    iget-object v0, p0, Lcxk$1;->d:Lcxk;

    iget-object v0, v0, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    :cond_0
    iget-object v0, p0, Lcxk$1;->d:Lcxk;

    iget-object v1, p0, Lcxk$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0, v1}, Lcxk;->a(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 1374
    :cond_1
    :goto_0
    return-void

    .line 1377
    :cond_2
    const-string/jumbo v0, "teleconf"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 1378
    if-eqz v0, :cond_1

    .line 1379
    new-instance v1, Lcxk$1$1;

    invoke-direct {v1, p0, p1}, Lcxk$1$1;-><init>(Lcxk$1;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 421
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v1

    iget-object v0, p0, Lcxk$1;->d:Lcxk;

    iget-object v0, v0, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcxk$1;->d:Lcxk;

    iget-object v1, p0, Lcxk$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0, v1}, Lcxk;->a(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 430
    return-void
.end method
