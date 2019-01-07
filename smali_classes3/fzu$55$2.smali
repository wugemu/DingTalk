.class final Lfzu$55$2;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$55;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lfzu$55;


# direct methods
.method constructor <init>(Lfzu$55;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$55;

    .prologue
    .line 935
    iput-object p1, p0, Lfzu$55$2;->b:Lfzu$55;

    iput-object p2, p0, Lfzu$55$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 938
    const-string/jumbo v0, "dentry_model"

    iget-object v1, p0, Lfzu$55$2;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 939
    const-string/jumbo v0, "preview_menu_mode"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfzu$55$2;->b:Lfzu$55;

    iget-wide v2, v1, Lfzu$55;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 941
    const-string/jumbo v0, "message_id"

    iget-object v1, p0, Lfzu$55$2;->b:Lfzu$55;

    iget-wide v2, v1, Lfzu$55;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 942
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lfzu$55$2;->b:Lfzu$55;

    iget-object v1, v1, Lfzu$55;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    iget-object v0, p0, Lfzu$55$2;->b:Lfzu$55;

    iget-object v0, v0, Lfzu$55;->f:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 944
    return-object p1
.end method
