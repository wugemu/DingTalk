.class public final Lbwp$7;
.super Ljava/lang/Object;
.source "LiveNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lbwp$7;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    iput-object p2, p0, Lbwp$7;->b:Ljava/lang/String;

    iput-object p3, p0, Lbwp$7;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    iget-object v0, p0, Lbwp$7;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lbwp$7;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/IntentRewriter;->onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;

    .line 65
    :cond_0
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lbwp$7;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lbwp$7;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 67
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    :cond_1
    return-object p1
.end method
