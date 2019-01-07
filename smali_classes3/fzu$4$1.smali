.class final Lfzu$4$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$4;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$4;


# direct methods
.method constructor <init>(Lfzu$4;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$4;

    .prologue
    .line 1381
    iput-object p1, p0, Lfzu$4$1;->a:Lfzu$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1384
    const-string/jumbo v0, "space_mode"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget v1, v1, Lfzu$4;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1385
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-wide v2, v1, Lfzu$4;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1387
    const-string/jumbo v0, "space_id"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string/jumbo v0, "space_path"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string/jumbo v0, "local_path"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1392
    const-string/jumbo v0, "repath_list"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1395
    const-string/jumbo v0, "conv_name"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string/jumbo v0, "show_dialog"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-boolean v1, v1, Lfzu$4;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1399
    const-string/jumbo v0, "is_space_admin"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-boolean v1, v1, Lfzu$4;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1401
    const-string/jumbo v0, "space_type"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget v1, v1, Lfzu$4;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1403
    const-string/jumbo v0, "is_public"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-boolean v1, v1, Lfzu$4;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1405
    const-string/jumbo v0, "from_conversation"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-boolean v1, v1, Lfzu$4;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1407
    const-string/jumbo v0, "intent_key_send_param"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->o:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1408
    const-string/jumbo v0, "intent_key_auth_flag"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string/jumbo v0, "batch_save_file_list"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1412
    const-string/jumbo v0, "dentry_model"

    iget-object v1, p0, Lfzu$4$1;->a:Lfzu$4;

    iget-object v1, v1, Lfzu$4;->r:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1413
    return-object p1
.end method
