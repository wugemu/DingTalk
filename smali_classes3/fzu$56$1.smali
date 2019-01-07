.class final Lfzu$56$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$56;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzu$56;


# direct methods
.method constructor <init>(Lfzu$56;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$56;

    .prologue
    .line 1011
    iput-object p1, p0, Lfzu$56$1;->a:Lfzu$56;

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
    .line 1014
    const-string/jumbo v0, "dentry_model"

    iget-object v1, p0, Lfzu$56$1;->a:Lfzu$56;

    iget-object v1, v1, Lfzu$56;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1016
    const-string/jumbo v0, "preview_menu_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const-string/jumbo v0, "is_space_admin"

    iget-object v1, p0, Lfzu$56$1;->a:Lfzu$56;

    iget-boolean v1, v1, Lfzu$56;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    const-string/jumbo v0, "space_transfer_src"

    iget-object v1, p0, Lfzu$56$1;->a:Lfzu$56;

    iget-object v1, v1, Lfzu$56;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1022
    const-string/jumbo v0, "space_type"

    iget-object v1, p0, Lfzu$56$1;->a:Lfzu$56;

    iget v1, v1, Lfzu$56;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfzu$56$1;->a:Lfzu$56;

    iget-wide v2, v1, Lfzu$56;->g:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1027
    return-object p1
.end method
