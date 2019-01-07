.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->showPrivacyDialog(Landroid/content/Context;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Landroid/content/Context;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    iput-boolean p4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 144
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "context is invalid"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
    :cond_3
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "showPrivacyDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "isFromH5"

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Landroid/content/Context;ZB)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$002(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    .line 153
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$1;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;)V

    .line 1367
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->b:Landroid/view/View$OnClickListener;

    .line 185
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2$2;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;)V

    .line 1371
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->c:Landroid/view/View$OnClickListener;

    .line 198
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->show()V

    goto :goto_0

    .line 200
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v0

    .line 2330
    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->a:Z

    .line 200
    if-nez v0, :cond_1

    .line 201
    const-string/jumbo v0, "FCRemindManager"

    const-string/jumbo v1, "privacy dialog is showing in native"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$2;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->showPrivacyDialog(Landroid/content/Context;Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$a;Z)V

    goto/16 :goto_0
.end method
