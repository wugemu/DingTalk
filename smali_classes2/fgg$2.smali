.class final Lfgg$2;
.super Ljava/lang/Object;
.source "BaseSimpleContactAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgg;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfjl;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lfgg;


# direct methods
.method constructor <init>(Lfgg;Lfjl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfgg;

    .prologue
    .line 188
    iput-object p1, p0, Lfgg$2;->d:Lfgg;

    iput-object p2, p0, Lfgg$2;->a:Lfjl;

    iput-object p3, p0, Lfgg$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lfgg$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 188
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1191
    iget-object v0, p0, Lfgg$2;->d:Lfgg;

    invoke-static {v0}, Lfgg;->a(Lfgg;)V

    .line 1192
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    :cond_0
    iget-object v0, p0, Lfgg$2;->a:Lfjl;

    iget-object v1, p0, Lfgg$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lfgg$2;->c:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->SEARCH:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfjl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v1, p0, Lfgg$2;->a:Lfjl;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->SEARCH:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v4

    .line 2096
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v5, v1, Lfjl;->a:Landroid/app/Activity;

    invoke-interface {v0, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 2097
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lfjl$4;

    invoke-direct {v6, v1, v2, v3, v4}, Lfjl$4;-><init>(Lfjl;JI)V

    .line 2096
    invoke-interface {v0, v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 206
    iget-object v0, p0, Lfgg$2;->d:Lfgg;

    invoke-static {v0}, Lfgg;->a(Lfgg;)V

    .line 207
    const-string/jumbo v0, "11016"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lfgg$2;->a:Lfjl;

    iget-object v1, p0, Lfgg$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lfgg$2;->c:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->SEARCH:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lfjl;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 202
    return-void
.end method
