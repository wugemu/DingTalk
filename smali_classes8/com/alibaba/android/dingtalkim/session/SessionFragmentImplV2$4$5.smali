.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 1527
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1500
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1500
    check-cast p1, Ljava/lang/Boolean;

    .line 2503
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2504
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2505
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2506
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 2509
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;->c:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->G:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4$5;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method
