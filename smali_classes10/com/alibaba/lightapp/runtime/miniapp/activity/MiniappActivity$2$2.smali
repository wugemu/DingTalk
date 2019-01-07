.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;
.super Ljava/lang/Object;
.source "MiniappActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhin;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;Lhin;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->a:Lhin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->a:Lhin;

    iget-object v6, v6, Lhin;->g:Ljava/util/Map;

    invoke-static {v5, v6}, Lhrc;->a(Landroid/content/Context;Ljava/util/Map;)Landroid/view/View;

    move-result-object v4

    .line 201
    .local v4, "tipsView":Landroid/view/View;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 202
    .local v1, "contentView":Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 203
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    sget v6, Lhdn$h;->content_layout:I

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 205
    .local v3, "navView":Landroid/view/View;
    if-nez v3, :cond_1

    .line 215
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "navView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "navView":Landroid/view/View;
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 209
    .local v0, "contentTitleHeight":I
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    if-lez v0, :cond_0

    .line 210
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 211
    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v5, v4}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method
