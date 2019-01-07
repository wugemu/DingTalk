.class final Lfzu$2$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$2;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$2;


# direct methods
.method constructor <init>(Lfzu$2;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$2;

    .prologue
    .line 1133
    iput-object p1, p0, Lfzu$2$1;->a:Lfzu$2;

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
    .line 1136
    const-string/jumbo v0, "space_mode"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget v1, v1, Lfzu$2;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-wide v2, v1, Lfzu$2;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1142
    const-string/jumbo v0, "local_path"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-object v1, v1, Lfzu$2;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    const-string/jumbo v0, "repath_list"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-object v1, v1, Lfzu$2;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1148
    const-string/jumbo v0, "space_org_share_visible"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-boolean v1, v1, Lfzu$2;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    const-string/jumbo v0, "space_tab_show_recent"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-boolean v1, v1, Lfzu$2;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1153
    const-string/jumbo v0, "intent_key_send_param"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-object v1, v1, Lfzu$2;->j:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1154
    const-string/jumbo v0, "space_show_tab_index"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget v1, v1, Lfzu$2;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1157
    const-string/jumbo v0, "space_transfer_src"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-object v1, v1, Lfzu$2;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    const-string/jumbo v0, "last_msg_tip"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-object v1, v1, Lfzu$2;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string/jumbo v0, "batch_save_file_list"

    iget-object v1, p0, Lfzu$2$1;->a:Lfzu$2;

    iget-object v1, v1, Lfzu$2;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1164
    return-object p1
.end method
