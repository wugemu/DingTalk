.class final Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;
.super Ljava/lang/Object;
.source "OnlineEditApplyPermissionDialog.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    .line 123
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "OnlineEditApplyPermissionDialog"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "navToConversation: getConversation: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", cid: "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    .line 1113
    :goto_0
    return-void

    .line 1111
    :cond_0
    if-nez p1, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->b(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;)V

    goto :goto_0

    .line 1115
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog$3;->b:Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->dismiss()V

    goto :goto_0
.end method
