.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13$1;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 949
    const-string/jumbo v0, "101002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 953
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 934
    .line 1937
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V

    .line 1938
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1939
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->finish()V

    .line 934
    return-void
.end method
