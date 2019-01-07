.class final Lacg$11$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$11;


# direct methods
.method constructor <init>(Lacg$11;)V
    .locals 0
    .param p1, "this$0"    # Lacg$11;

    .prologue
    .line 1426
    iput-object p1, p0, Lacg$11$1;->a:Lacg$11;

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
    .line 1429
    const-string/jumbo v0, "mail_id"

    iget-object v1, p0, Lacg$11$1;->a:Lacg$11;

    iget-object v1, v1, Lacg$11;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    const-string/jumbo v0, "is_meeting"

    iget-object v1, p0, Lacg$11$1;->a:Lacg$11;

    iget-boolean v1, v1, Lacg$11;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1432
    return-object p1
.end method
