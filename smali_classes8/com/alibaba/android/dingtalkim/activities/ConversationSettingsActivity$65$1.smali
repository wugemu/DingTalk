.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    .prologue
    .line 3826
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 3837
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3838
    sget v0, Lctk$i;->conversation_clear_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3839
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3826
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3826
    .line 4829
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ac(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V

    .line 4830
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$65;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->al(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4831
    sget v0, Lctk$i;->conversation_clear_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 3826
    return-void
.end method
