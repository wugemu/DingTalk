.class final Lacg$24$2;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$24;
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
        "Lacd$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lacg$24;


# direct methods
.method constructor <init>(Lacg$24;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lacg$24;

    .prologue
    .line 2245
    iput-object p1, p0, Lacg$24$2;->b:Lacg$24;

    iput-object p2, p0, Lacg$24$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2245
    check-cast p1, Lacd$a;

    .line 3248
    if-eqz p1, :cond_0

    iget-object v0, p1, Lacd$a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lacd$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3249
    :cond_0
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->e:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    new-instance v1, Lacg$24$2$1;

    invoke-direct {v1, p0}, Lacg$24$2$1;-><init>(Lacg$24$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3256
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 3257
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 3259
    :cond_1
    :goto_0
    return-void

    .line 3262
    :cond_2
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lacg$24$2$2;

    invoke-direct {v1, p0, p1}, Lacg$24$2$2;-><init>(Lacg$24$2;Lacd$a;)V

    const-class v2, Lxv;

    iget-object v3, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v3, v3, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 3317
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v2, v2, Lacg$24;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    .line 3318
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 3319
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2330
    const-string/jumbo v0, "navToReplyOrForward"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2333
    iget-object v0, p0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2335
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2326
    return-void
.end method
