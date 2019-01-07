.class final Lcom/alibaba/android/oa/fragment/OAFragment$1;
.super Ljava/lang/Object;
.source "OAFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/OAFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/OAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/OAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/OAFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/OAFragment$1;->a:Lcom/alibaba/android/oa/fragment/OAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 199
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    check-cast p1, Ljava/util/List;

    .line 1173
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1175
    const/4 v0, 0x0

    .line 1177
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v3

    .line 1182
    if-eqz v3, :cond_0

    invoke-static {}, Leel;->f()Leek;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Leek;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1183
    const/4 v1, 0x1

    .line 1184
    invoke-static {}, Leel;->f()Leek;

    move-result-object v3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    invoke-interface {v3, v4, v0}, Leek;->b(Ljava/lang/String;I)V

    :cond_0
    move v0, v1

    move v1, v0

    .line 1188
    goto :goto_0

    .line 1191
    :cond_1
    if-eqz v1, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/OAFragment$1;->a:Lcom/alibaba/android/oa/fragment/OAFragment;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/OAFragment;->G:Landroid/app/Application;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "action_microapp_unread_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 166
    :cond_2
    return-void
.end method
