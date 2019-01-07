.class final Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;
.super Ljava/lang/Object;
.source "ConfirmCreatingConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 260
    const/4 v5, 0x0

    .line 261
    .local v5, "orgIcon":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    .line 262
    .local v6, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .line 263
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v7

    .line 264
    .local v7, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;

    .line 268
    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->h(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;J)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConfirmCreatingConversationActivity;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    .line 269
    return-void

    :cond_1
    move v2, v4

    .line 267
    goto :goto_0
.end method
