.class final Lacg$60;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZLcma;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcma;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;ZLandroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 4080
    iput-object p1, p0, Lacg$60;->a:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    iput-boolean p2, p0, Lacg$60;->b:Z

    iput-object p3, p0, Lacg$60;->c:Landroid/content/Context;

    iput-object p4, p0, Lacg$60;->d:Ljava/lang/String;

    iput-object p5, p0, Lacg$60;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 4080
    check-cast p1, Ljava/util/List;

    .line 5083
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5084
    iget-object v1, p0, Lacg$60;->a:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->sendMsgObject:Landroid/os/Parcelable;

    .line 5085
    iget-boolean v0, p0, Lacg$60;->b:Z

    if-eqz v0, :cond_2

    .line 5086
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lacg$60;->c:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lacg$60$1;

    invoke-direct {v2, p0}, Lacg$60$1;-><init>(Lacg$60;)V

    .line 5087
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 5109
    :cond_0
    :goto_0
    iget-object v0, p0, Lacg$60;->e:Lcma;

    if-eqz v0, :cond_1

    .line 5110
    iget-object v0, p0, Lacg$60;->e:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4080
    :cond_1
    return-void

    .line 5101
    :cond_2
    iget-object v0, p0, Lacg$60;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5103
    const-string/jumbo v0, "chat_float_dialog"

    iget-object v2, p0, Lacg$60;->a:Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5104
    const-string/jumbo v0, "conversation_id"

    iget-object v2, p0, Lacg$60;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5105
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v2, "mail_trans"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v0, p0, Lacg$60;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lacg$60;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4122
    const-string/jumbo v0, "navToChat, convertMailModel"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4123
    iget-object v0, p0, Lacg$60;->e:Lcma;

    if-eqz v0, :cond_0

    .line 4124
    iget-object v0, p0, Lacg$60;->e:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 4118
    return-void
.end method
