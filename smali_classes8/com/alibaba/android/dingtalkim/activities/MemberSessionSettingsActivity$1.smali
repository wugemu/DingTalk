.class final Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;
.super Ljava/lang/Object;
.source "MemberSessionSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->finish()V

    .line 68
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    if-nez p1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->finish()V

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1055
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionSettingsActivity;)V

    goto :goto_0
.end method
