.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;
.source "RuntimeWebViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/PullToRefreshModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs setColors([I)Z
    .locals 9
    .param p1, "colors"    # [I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1099
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 1100
    aget v2, p1, v0

    .line 1101
    .local v2, "c1":I
    array-length v0, p1

    if-le v0, v7, :cond_2

    aget v3, p1, v7

    .line 1102
    .local v3, "c2":I
    :goto_0
    array-length v0, p1

    if-le v0, v6, :cond_3

    aget v4, p1, v6

    .line 1103
    .local v4, "c3":I
    :goto_1
    array-length v0, p1

    if-le v0, v8, :cond_4

    aget v5, p1, v8

    .line 1104
    .local v5, "c4":I
    :goto_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    new-instance v0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$2;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;IIII)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    move v0, v7

    .line 1115
    .end local v2    # "c1":I
    .end local v3    # "c2":I
    .end local v4    # "c3":I
    .end local v5    # "c4":I
    :cond_1
    return v0

    .restart local v2    # "c1":I
    :cond_2
    move v3, v2

    .line 1101
    goto :goto_0

    .restart local v3    # "c2":I
    :cond_3
    move v4, v3

    .line 1102
    goto :goto_1

    .restart local v4    # "c3":I
    :cond_4
    move v5, v4

    .line 1103
    goto :goto_2
.end method

.method public final setEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$1;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1091
    const/4 v0, 0x1

    .line 1093
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setRefreshing(Z)Z
    .locals 2
    .param p1, "refreshing"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->m(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10$3;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$10;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1128
    const/4 v0, 0x1

    .line 1130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
