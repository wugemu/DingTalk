.class final Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;
.super Ljava/lang/Object;
.source "ConfirmCreatingConversationActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Ljava/util/List;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

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
    .line 403
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->q(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 392
    check-cast p1, Ljava/lang/String;

    .line 1395
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)I

    move-result v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->AUTOMATIC:Lcom/alibaba/wukong/im/Conversation$GroupIconType;

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Conversation$GroupIconType;->typeValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1397
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method
