.class final Lacg$58$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$58;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$58;


# direct methods
.method constructor <init>(Lacg$58;)V
    .locals 0
    .param p1, "this$0"    # Lacg$58;

    .prologue
    .line 3995
    iput-object p1, p0, Lacg$58$1;->a:Lacg$58;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 3998
    const-string/jumbo v0, "mail_attach_model"

    iget-object v1, p0, Lacg$58$1;->a:Lacg$58;

    iget-object v1, v1, Lacg$58;->c:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4000
    const-string/jumbo v0, "account_name"

    iget-object v1, p0, Lacg$58$1;->a:Lacg$58;

    iget-object v1, v1, Lacg$58;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4002
    const-string/jumbo v0, "mail_id"

    iget-object v1, p0, Lacg$58$1;->a:Lacg$58;

    iget-object v1, v1, Lacg$58;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4004
    const-string/jumbo v0, "mail_attach_support_preview"

    iget-object v1, p0, Lacg$58$1;->a:Lacg$58;

    iget-boolean v1, v1, Lacg$58;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4006
    const-string/jumbo v0, "intent_is_eml_attachment"

    iget-object v1, p0, Lacg$58$1;->a:Lacg$58;

    iget-boolean v1, v1, Lacg$58;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4008
    return-object p1
.end method
