.class final Lezj$1;
.super Ljava/lang/Object;
.source "AlphaDeviceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lezj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrr;

.field final synthetic b:Lezj;


# direct methods
.method constructor <init>(Lezj;Lfrr;)V
    .locals 0
    .param p1, "this$0"    # Lezj;

    .prologue
    .line 92
    iput-object p1, p0, Lezj$1;->b:Lezj;

    iput-object p2, p0, Lezj$1;->a:Lfrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lezj$1;->b:Lezj;

    invoke-static {v1}, Lezj;->a(Lezj;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lezj$1;->a:Lfrr;

    iget-object v2, v2, Lfrr;->d:Ljava/lang/String;

    const-string/jumbo v3, "mine"

    .line 96
    invoke-static {v2, v3}, Lfxk;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method
