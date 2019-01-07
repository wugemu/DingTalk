.class final Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;
.super Ljava/lang/Object;
.source "RemindOnlineCollaboratorDialog.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/widget/SpaceAtEditTextDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;Z)Z

    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog$2;->a:Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 54
    :cond_0
    return-void
.end method
