.class final Lacg$28$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$28;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$28;


# direct methods
.method constructor <init>(Lacg$28;)V
    .locals 0
    .param p1, "this$0"    # Lacg$28;

    .prologue
    .line 2582
    iput-object p1, p0, Lacg$28$1;->a:Lacg$28;

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
    .line 2585
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2586
    const-string/jumbo v0, "mail_id"

    iget-object v1, p0, Lacg$28$1;->a:Lacg$28;

    iget-object v1, v1, Lacg$28;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2587
    const-string/jumbo v0, "account_name"

    .line 2588
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    .line 2587
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2589
    iget-object v0, p0, Lacg$28$1;->a:Lacg$28;

    iget-object v0, v0, Lacg$28;->d:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 2590
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lacg$28$1;->a:Lacg$28;

    iget-object v1, v1, Lacg$28;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2593
    :cond_0
    return-object p1
.end method
