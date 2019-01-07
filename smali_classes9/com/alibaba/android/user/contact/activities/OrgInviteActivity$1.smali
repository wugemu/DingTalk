.class final Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$1;
.super Ljava/lang/Object;
.source "OrgInviteActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 182
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1185
    if-eqz p1, :cond_0

    .line 1186
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 1187
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.CONVERSATION_NOTICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v1, "cid"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;

    .line 1190
    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgInviteActivity;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    .line 1189
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 182
    :cond_0
    return-void
.end method
