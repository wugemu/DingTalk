.class final Lacg$15$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$15;


# direct methods
.method constructor <init>(Lacg$15;)V
    .locals 0
    .param p1, "this$0"    # Lacg$15;

    .prologue
    .line 1578
    iput-object p1, p0, Lacg$15$1;->a:Lacg$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1581
    const-string/jumbo v3, "from_within_app"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1582
    const-string/jumbo v3, "com.alibaba.alimei.intent.action.NEW_MAIL"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1583
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1584
    const-string/jumbo v3, "account_name"

    .line 1585
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    .line 1584
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 1587
    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1586
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1588
    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v3, v3, Lacg$15;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1589
    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v2, v3, Lacg$15;->d:Ljava/lang/String;

    .line 1590
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v3, v3, Lacg$15;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1591
    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v2, v3, Lacg$15;->c:Ljava/lang/String;

    .line 1592
    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v3, v3, Lacg$15;->c:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1593
    .local v1, "indexof":I
    if-lez v1, :cond_0

    .line 1594
    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v3, v3, Lacg$15;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1597
    .end local v1    # "indexof":I
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v3, p0, Lacg$15$1;->a:Lacg$15;

    iget-object v3, v3, Lacg$15;->c:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    const-string/jumbo v3, "key_addresses"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1601
    .end local v0    # "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object p1
.end method
