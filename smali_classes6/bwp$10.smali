.class final Lbwp$10;
.super Ljava/lang/Object;
.source "LiveNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lbwp$10;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    iput-object p2, p0, Lbwp$10;->b:Ljava/lang/String;

    iput-object p3, p0, Lbwp$10;->c:Ljava/lang/String;

    iput-object p4, p0, Lbwp$10;->d:Ljava/lang/String;

    iput-object p5, p0, Lbwp$10;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lbwp$10;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lbwp$10;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/IntentRewriter;->onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;

    .line 118
    :cond_0
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lbwp$10;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lbwp$10;->c:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_uuid"

    iget-object v2, p0, Lbwp$10;->d:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lbwp$10;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 122
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    :cond_1
    return-object p1
.end method
