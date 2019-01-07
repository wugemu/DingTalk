.class final Lacg$14$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$14;


# direct methods
.method constructor <init>(Lacg$14;)V
    .locals 0
    .param p1, "this$0"    # Lacg$14;

    .prologue
    .line 1523
    iput-object p1, p0, Lacg$14$1;->a:Lacg$14;

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
    const/4 v2, 0x1

    .line 1526
    const-string/jumbo v0, "from_within_app"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1527
    const-string/jumbo v0, "com.alibaba.alimei.intent.action.NEW_MAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    const-string/jumbo v0, "account_name"

    .line 1529
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    .line 1528
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1531
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1530
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1532
    iget-object v0, p0, Lacg$14$1;->a:Lacg$14;

    iget-object v0, v0, Lacg$14;->c:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1533
    const-string/jumbo v0, "key_psmailuri"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1534
    iget-object v0, p0, Lacg$14$1;->a:Lacg$14;

    iget-object v0, v0, Lacg$14;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1536
    :cond_0
    return-object p1
.end method
