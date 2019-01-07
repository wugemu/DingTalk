.class final Ldin$9;
.super Ljava/lang/Object;
.source "ConversationNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Ldin$9;->a:Ljava/lang/String;

    iput p2, p0, Ldin$9;->b:I

    iput-object p3, p0, Ldin$9;->c:Landroid/os/Bundle;

    iput-boolean p4, p0, Ldin$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    iget-object v0, p0, Ldin$9;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const-string/jumbo v0, "intent_key_biz_title"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_campus_recruitment_common_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :goto_0
    const-string/jumbo v0, "intent_key_recruitment_role"

    iget v1, p0, Ldin$9;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Ldin$9;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Ldin$9;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 372
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    iget-boolean v0, p0, Ldin$9;->d:Z

    if-eqz v0, :cond_1

    .line 374
    const/high16 v0, 0x30000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    :cond_1
    return-object p1

    .line 366
    :cond_2
    const-string/jumbo v0, "intent_key_biz_title"

    iget-object v1, p0, Ldin$9;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
