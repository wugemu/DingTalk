.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;
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
        "Lcom/alibaba/wukong/im/GroupIconObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;

    .prologue
    .line 3282
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->dismissLoadingDialog()V

    .line 3294
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 3282
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3282
    check-cast p1, Lcom/alibaba/wukong/im/GroupIconObject;

    .line 4285
    if-eqz p1, :cond_0

    .line 4286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->ag(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/alibaba/wukong/im/GroupIconObject;->groupIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4288
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$57;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->dismissLoadingDialog()V

    .line 3282
    return-void
.end method
