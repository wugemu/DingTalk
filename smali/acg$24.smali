.class final Lacg$24;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcma;Lcom/alibaba/wukong/im/Conversation;ILcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2192
    iput-object p1, p0, Lacg$24;->a:Lcma;

    iput-object p2, p0, Lacg$24;->b:Lcom/alibaba/wukong/im/Conversation;

    iput p3, p0, Lacg$24;->c:I

    iput-object p4, p0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p5, p0, Lacg$24;->e:Landroid/content/Context;

    iput-object p6, p0, Lacg$24;->f:Ljava/lang/String;

    iput-object p7, p0, Lacg$24;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2192
    .line 3195
    iget-object v0, p0, Lacg$24;->a:Lcma;

    if-eqz v0, :cond_0

    .line 3196
    iget-object v0, p0, Lacg$24;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3199
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3200
    iget-object v0, p0, Lacg$24;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    iget v0, p0, Lacg$24;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 3201
    :cond_1
    iget-object v0, p0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_2

    .line 3202
    iget-object v0, p0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 3204
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lacg$24;->e:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/mail/compose.html"

    new-instance v3, Lacg$24$1;

    invoke-direct {v3, p0, v1}, Lacg$24$1;-><init>(Lacg$24;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 3236
    iget-object v0, p0, Lacg$24;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 3237
    iget-object v0, p0, Lacg$24;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3238
    sget v1, Laxo$a;->present:I

    sget v2, Laxo$a;->pop_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3241
    :cond_3
    :goto_0
    return-void

    .line 3244
    :cond_4
    new-instance v2, Lacd;

    iget-object v3, p0, Lacg$24;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3245
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lacg$24$2;

    invoke-direct {v4, p0, v1}, Lacg$24$2;-><init>(Lacg$24;Ljava/lang/String;)V

    const-class v1, Lcma;

    iget-object v5, p0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v4, v1, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-direct {v2, v3, v0}, Lacd;-><init>(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 4047
    iget-object v0, v2, Lacd;->a:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_5

    .line 4048
    iget-object v0, v2, Lacd;->b:Lcma;

    if-eqz v0, :cond_5

    .line 4049
    iget-object v0, v2, Lacd;->b:Lcma;

    const-string/jumbo v1, ""

    const-string/jumbo v3, "param error"

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4052
    :cond_5
    invoke-virtual {v2}, Lacd;->a()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2347
    const-string/jumbo v0, "navToReplyOrForward"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object v0, p0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2349
    iget-object v0, p0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2351
    :cond_0
    iget-object v0, p0, Lacg$24;->a:Lcma;

    if-eqz v0, :cond_1

    .line 2352
    iget-object v0, p0, Lacg$24;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    :cond_1
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2343
    return-void
.end method
