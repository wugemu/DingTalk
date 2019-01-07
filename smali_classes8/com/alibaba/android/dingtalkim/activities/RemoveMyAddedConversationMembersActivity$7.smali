.class final Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;
.super Ljava/lang/Object;
.source "RemoveMyAddedConversationMembersActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 236
    const-string/jumbo v0, "101002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->dismissLoadingDialog()V

    .line 240
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    check-cast p1, Ljava/util/List;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->dismissLoadingDialog()V

    .line 1224
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->d(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)Lcww;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcww;->a(Ljava/util/List;)V

    .line 1228
    :cond_0
    sget v0, Lctk$i;->dt_remove_member_finsh:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1229
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->a:Z

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity$7;->b:Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RemoveMyAddedConversationMembersActivity;->finish()V

    .line 220
    :cond_1
    return-void
.end method
