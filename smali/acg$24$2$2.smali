.class final Lacg$24$2$2;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$24$2;
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacd$a;

.field final synthetic b:Lacg$24$2;


# direct methods
.method constructor <init>(Lacg$24$2;Lacd$a;)V
    .locals 0
    .param p1, "this$1"    # Lacg$24$2;

    .prologue
    .line 2262
    iput-object p1, p0, Lacg$24$2$2;->b:Lacg$24$2;

    iput-object p2, p0, Lacg$24$2$2;->a:Lacd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 2311
    const-string/jumbo v0, "navToReplyOrForward"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 2312
    iget-object v0, p0, Lacg$24$2$2;->b:Lacg$24$2;

    iget-object v0, v0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2313
    iget-object v0, p0, Lacg$24$2$2;->b:Lacg$24$2;

    iget-object v0, v0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 2315
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 2262
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 3265
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lacg$24$2$2;->b:Lacg$24$2;

    iget-object v1, v1, Lacg$24$2;->b:Lacg$24;

    iget-object v1, v1, Lacg$24;->e:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/compose.html"

    .line 3267
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$24$2$2$1;

    invoke-direct {v3, p0, p1}, Lacg$24$2$2$1;-><init>(Lacg$24$2$2;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 3266
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 3303
    iget-object v0, p0, Lacg$24$2$2;->b:Lacg$24$2;

    iget-object v0, v0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lacg$24$2$2;->b:Lacg$24$2;

    iget-object v0, v0, Lacg$24$2;->b:Lacg$24;

    iget-object v0, v0, Lacg$24;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3305
    sget v1, Laxo$a;->present:I

    sget v2, Laxo$a;->pop_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 2262
    :cond_0
    return-void
.end method
