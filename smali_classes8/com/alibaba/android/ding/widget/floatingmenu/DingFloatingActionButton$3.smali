.class final Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;
.super Ljava/lang/Object;
.source "DingFloatingActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

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
    .line 492
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;->k(Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton$3;->a:Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 495
    :cond_0
    return-void
.end method
