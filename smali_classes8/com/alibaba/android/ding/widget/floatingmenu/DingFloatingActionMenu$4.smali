.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;
.super Ljava/lang/Object;
.source "DingFloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->h(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->h(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;->b(Z)V

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->i(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$4;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;Z)V

    goto :goto_0
.end method
