.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;
.super Ljava/lang/Object;
.source "MiniAppComponentTestActivity.java"

# interfaces
.implements Lhln;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhlp;)V
    .locals 3
    .param p1, "pageInstance"    # Lhlp;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 107
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;Lhlp;)Lhlp;

    .line 108
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlp;

    move-result-object v2

    invoke-interface {v2}, Lhlp;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlp;

    move-result-object v1

    invoke-interface {v1}, Lhlp;->b()V

    .line 114
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)V

    .line 115
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;)Lhlp;

    move-result-object v1

    invoke-interface {v1}, Lhlp;->c()V

    .line 118
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppComponentTestActivity;->setContentView(Landroid/view/View;)V

    .line 123
    const-string/jumbo v0, "MiniAppComponentTestActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "async init instance fail"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lhmv;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method
