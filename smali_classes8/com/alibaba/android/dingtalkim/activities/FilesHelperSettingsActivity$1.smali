.class final Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;
.super Ljava/lang/Object;
.source "FilesHelperSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->finish()V

    .line 58
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 36
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    if-nez p1, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->finish()V

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 1045
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;->a(Lcom/alibaba/android/dingtalkim/activities/FilesHelperSettingsActivity;)V

    goto :goto_0
.end method
