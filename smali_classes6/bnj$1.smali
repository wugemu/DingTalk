.class final Lbnj$1;
.super Landroid/content/BroadcastReceiver;
.source "CircleContactSimpleInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnj;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnj;


# direct methods
.method constructor <init>(Lbnj;)V
    .locals 0
    .param p1, "this$0"    # Lbnj;

    .prologue
    .line 57
    iput-object p1, p0, Lbnj$1;->a:Lbnj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lbnj$1;->a:Lbnj;

    .line 1047
    iget-object v1, v1, Lbnj;->a:Ljava/util/List;

    .line 65
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lbnj$1;->a:Lbnj;

    iget-object v2, p0, Lbnj$1;->a:Lbnj;

    .line 2047
    iget-object v2, v2, Lbnj;->a:Ljava/util/List;

    .line 3047
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lbnj;->a(Ljava/util/List;Lcov;Z)V

    goto :goto_0
.end method
