.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;
.super Ljava/lang/Object;
.source "SpaceAtEditTextDialog.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;
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
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

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
    .line 228
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAtEditTextDialog"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getConversation: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->c()V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 209
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1212
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    if-nez p1, :cond_1

    .line 1216
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceAtEditTextDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getConversation return null, mConversationId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    iget-object v4, v4, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->x:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->c()V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->y:Lcom/alibaba/wukong/im/Conversation;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$3;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog;)V

    goto :goto_0
.end method
