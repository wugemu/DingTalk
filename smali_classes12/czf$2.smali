.class final Lczf$2;
.super Ljava/lang/Object;
.source "UserNamecardViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lczf;
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
        "Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lczf;


# direct methods
.method constructor <init>(Lczf;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lczf;

    .prologue
    .line 107
    iput-object p1, p0, Lczf$2;->c:Lczf;

    iput-object p2, p0, Lczf$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lczf$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    .line 1110
    iget-object v0, p0, Lczf$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1111
    if-eqz p1, :cond_0

    .line 1112
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lczf$2;->b:Landroid/app/Activity;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->templateId:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;JLandroid/os/Bundle;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lczf$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 124
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 119
    return-void
.end method
