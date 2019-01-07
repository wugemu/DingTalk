.class final Lacg$10$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$10;


# direct methods
.method constructor <init>(Lacg$10;)V
    .locals 0
    .param p1, "this$0"    # Lacg$10;

    .prologue
    .line 1371
    iput-object p1, p0, Lacg$10$1;->a:Lacg$10;

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
    .line 1374
    const-string/jumbo v0, "account_name"

    iget-object v1, p0, Lacg$10$1;->a:Lacg$10;

    iget-object v1, v1, Lacg$10;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const-string/jumbo v0, "mail_cid"

    iget-object v1, p0, Lacg$10$1;->a:Lacg$10;

    iget-object v1, v1, Lacg$10;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const-string/jumbo v0, "mail_subject"

    iget-object v1, p0, Lacg$10$1;->a:Lacg$10;

    iget-object v1, v1, Lacg$10;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    const-string/jumbo v0, "mail_folder"

    iget-object v1, p0, Lacg$10$1;->a:Lacg$10;

    iget-object v1, v1, Lacg$10;->f:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1381
    const-string/jumbo v0, "mail_session_item_count"

    iget-object v1, p0, Lacg$10$1;->a:Lacg$10;

    iget v1, v1, Lacg$10;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    return-object p1
.end method
