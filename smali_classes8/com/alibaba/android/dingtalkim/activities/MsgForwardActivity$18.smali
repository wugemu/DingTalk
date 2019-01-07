.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 330
    .line 1333
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .line 1337
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/conversation"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1349
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->finish()V

    .line 330
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
    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->c:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->send_fail:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 354
    return-void
.end method
