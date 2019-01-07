.class final Lejo$1$1$1;
.super Ljava/lang/Object;
.source "BurnChatEnterNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejo$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejo$1$1;


# direct methods
.method constructor <init>(Lejo$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lejo$1$1;

    .prologue
    .line 36
    iput-object p1, p0, Lejo$1$1$1;->a:Lejo$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    const-string/jumbo v0, "validate_pwd"

    iget-object v1, p0, Lejo$1$1$1;->a:Lejo$1$1;

    iget-object v1, v1, Lejo$1$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    return-object p1
.end method
