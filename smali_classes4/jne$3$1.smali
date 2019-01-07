.class final Ljne$3$1;
.super Ljava/lang/Object;
.source "DingMaHandlerV2.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljne$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljne$3;


# direct methods
.method constructor <init>(Ljne$3;)V
    .locals 0
    .param p1, "this$0"    # Ljne$3;

    .prologue
    .line 555
    iput-object p1, p0, Ljne$3$1;->a:Ljne$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 558
    const-string/jumbo v0, "intent_key_robot_text"

    iget-object v1, p0, Ljne$3$1;->a:Ljne$3;

    iget-object v1, v1, Ljne$3;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    return-object p1
.end method
