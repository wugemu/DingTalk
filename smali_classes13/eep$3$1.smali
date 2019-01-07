.class final Leep$3$1;
.super Ljava/lang/Object;
.source "OAExpandHeaderDelegate.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leep$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leep$3;


# direct methods
.method constructor <init>(Leep$3;)V
    .locals 0
    .param p1, "this$1"    # Leep$3;

    .prologue
    .line 265
    iput-object p1, p0, Leep$3$1;->a:Leep$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    const-string/jumbo v0, "micro_app"

    iget-object v1, p0, Leep$3$1;->a:Leep$3;

    iget-wide v2, v1, Leep$3;->a:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 269
    const-string/jumbo v0, "from_work_stat"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    return-object p1
.end method
