.class final Lacg$54$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$54;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacg$54;


# direct methods
.method constructor <init>(Lacg$54;)V
    .locals 0
    .param p1, "this$0"    # Lacg$54;

    .prologue
    .line 480
    iput-object p1, p0, Lacg$54$1;->a:Lacg$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 483
    const-string/jumbo v0, "mail_folder_id"

    iget-object v1, p0, Lacg$54$1;->a:Lacg$54;

    iget-wide v2, v1, Lacg$54;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 484
    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 488
    return-object p1
.end method
