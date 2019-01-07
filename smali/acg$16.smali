.class final Lacg$16;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1630
    iput-object p1, p0, Lacg$16;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$16;->b:[Ljava/lang/String;

    iput-object p3, p0, Lacg$16;->c:[Ljava/lang/String;

    iput-object p4, p0, Lacg$16;->d:[Ljava/lang/String;

    iput-object p5, p0, Lacg$16;->e:Ljava/lang/String;

    iput-object p6, p0, Lacg$16;->f:Ljava/lang/String;

    iput-object p7, p0, Lacg$16;->g:Ljava/util/List;

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
    .line 1633
    const-string/jumbo v0, "from_within_app"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1634
    const-string/jumbo v0, "com.alibaba.alimei.intent.action.standard.MAIL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1636
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1635
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1637
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1638
    const-string/jumbo v0, "account_name"

    iget-object v1, p0, Lacg$16;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1640
    iget-object v0, p0, Lacg$16;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacg$16;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 1641
    const-string/jumbo v0, "android.intent.extra.EMAIL"

    iget-object v1, p0, Lacg$16;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    :cond_0
    iget-object v0, p0, Lacg$16;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacg$16;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1644
    const-string/jumbo v0, "android.intent.extra.CC"

    iget-object v1, p0, Lacg$16;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    :cond_1
    iget-object v0, p0, Lacg$16;->d:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lacg$16;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1647
    const-string/jumbo v0, "android.intent.extra.BCC"

    iget-object v1, p0, Lacg$16;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1649
    :cond_2
    iget-object v0, p0, Lacg$16;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1650
    const-string/jumbo v0, "android.intent.extra.HTML_TEXT"

    iget-object v1, p0, Lacg$16;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    :cond_3
    iget-object v0, p0, Lacg$16;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1653
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    iget-object v1, p0, Lacg$16;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1656
    :cond_4
    iget-object v0, p0, Lacg$16;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lacg$16;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1657
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v0, p0, Lacg$16;->g:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1659
    :cond_5
    return-object p1
.end method
