.class final Lacg$56;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field final synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/alimei/sdk/model/FolderModel;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3833
    iput-object p1, p0, Lacg$56;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$56;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lacg$56;->c:Z

    iput-object p4, p0, Lacg$56;->d:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput-object p5, p0, Lacg$56;->e:[Ljava/lang/String;

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
    .line 3836
    const-string/jumbo v0, "account_name"

    iget-object v1, p0, Lacg$56;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3837
    const-string/jumbo v0, "mail_request_ticket"

    iget-object v1, p0, Lacg$56;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3839
    const-string/jumbo v0, "mail_folder_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3841
    const-string/jumbo v0, "mail_is_sessionable"

    iget-boolean v1, p0, Lacg$56;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3843
    const-string/jumbo v0, "mail_folder"

    iget-object v1, p0, Lacg$56;->d:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3844
    const-string/jumbo v0, "mail_server_ids"

    iget-object v1, p0, Lacg$56;->e:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3845
    return-object p1
.end method
