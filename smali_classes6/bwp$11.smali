.class final Lbwp$11;
.super Ljava/lang/Object;
.source "LiveNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lbwp$11;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    iput-object p2, p0, Lbwp$11;->b:Ljava/lang/String;

    iput-wide p3, p0, Lbwp$11;->c:J

    iput-object p5, p0, Lbwp$11;->d:Ljava/lang/String;

    iput-object p6, p0, Lbwp$11;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lbwp$11;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lbwp$11;->a:Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/IntentRewriter;->onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;

    .line 137
    :cond_0
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lbwp$11;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_open_id"

    iget-wide v2, p0, Lbwp$11;->c:J

    .line 138
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_live_uuid"

    iget-object v2, p0, Lbwp$11;->d:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lbwp$11;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 141
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    :cond_1
    return-object p1
.end method
