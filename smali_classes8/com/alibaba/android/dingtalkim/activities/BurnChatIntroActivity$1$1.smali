.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;
.super Ljava/lang/Object;
.source "BurnChatIntroActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

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
    .line 51
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1054
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    if-nez p1, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->finish()V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    sget v1, Lctk$f;->btn_start_chat:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    const-string/jumbo v1, "pref_burn_dialog_showed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->finish()V

    .line 98
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 91
    return-void
.end method
