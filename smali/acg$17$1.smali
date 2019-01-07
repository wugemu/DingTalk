.class final Lacg$17$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$17;


# direct methods
.method constructor <init>(Lacg$17;)V
    .locals 0
    .param p1, "this$0"    # Lacg$17;

    .prologue
    .line 1689
    iput-object p1, p0, Lacg$17$1;->a:Lacg$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1692
    iget-object v1, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v1, v1, Lacg$17;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1693
    iget-object v1, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v1, v1, Lacg$17;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1695
    :cond_0
    const-string/jumbo v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1696
    const-string/jumbo v1, "com.alibaba.alimei.intent.action.NEW_MAIL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 1698
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1697
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1700
    const-string/jumbo v1, "account_name"

    .line 1701
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    .line 1700
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    iget-object v1, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v1, v1, Lacg$17;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1703
    const-string/jumbo v1, "mail_subject"

    iget-object v2, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v2, v2, Lacg$17;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    :cond_1
    iget-object v1, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v1, v1, Lacg$17;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v1, v1, Lacg$17;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1706
    :cond_2
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v1, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v1, v1, Lacg$17;->e:Ljava/lang/String;

    iget-object v2, p0, Lacg$17$1;->a:Lacg$17;

    iget-object v2, v2, Lacg$17;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    const-string/jumbo v1, "key_addresses"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1710
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_3
    return-object p1
.end method
