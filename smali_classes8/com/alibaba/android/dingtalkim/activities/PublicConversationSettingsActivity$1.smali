.class final Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;
.super Ljava/lang/Object;
.source "PublicConversationSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->finish()V

    .line 87
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1069
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    if-eqz p1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1072
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;)V

    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "PublicConversationSettingsActivity getConversation null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/PublicConversationSettingsActivity;->finish()V

    goto :goto_0
.end method
