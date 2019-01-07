.class Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;
.super Ljava/lang/Object;
.source "Alpha.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->copyPwd(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$subTitle:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$subTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$content:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v3, "subTitle"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$subTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v3, "content"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v3, "bigFont"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 117
    .local v1, "buttonLabels":[Ljava/lang/String;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lhdn$k;->dt_alpha_pwd_copy_cancel:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 118
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lhdn$k;->dt_alpha_pwd_copy:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 119
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;-><init>(Landroid/content/Context;)V

    .line 120
    .local v2, "dialogUtils":Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;
    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$3;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils;->popBigTextDialog(Landroid/os/Bundle;[Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/device/DialogUtils$DialogCallback;)V

    .line 134
    return-void
.end method
