.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;
.super Ljava/lang/Object;
.source "NavbarView.java"

# interfaces
.implements Lheg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v5

    .line 834
    invoke-virtual {v5}, Lhee;->a()V

    .line 2044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v5

    .line 2205
    iget-object v1, v5, Lhee;->c:Ljava/lang/String;

    .line 838
    .local v1, "className":Ljava/lang/String;
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v5

    invoke-virtual {v5, v1}, Lhlq;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 839
    const-string/jumbo v5, "NavbarView"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "float_onClick"

    aput-object v7, v6, v8

    const-string/jumbo v7, "activity isForeground , name="

    aput-object v7, v6, v9

    aput-object v1, v6, v10

    .line 3082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 4044
    :cond_1
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v5

    .line 843
    invoke-virtual {v5}, Lhee;->b()Landroid/app/Activity;

    move-result-object v0

    .line 845
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 846
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v5

    .line 4172
    iget-object v3, v5, Lheh;->f:Ljava/lang/String;

    .line 847
    .local v3, "miniAppId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5, v3}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Ljava/lang/String;)V

    .line 848
    const-string/jumbo v5, "NavbarView"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "float_onClick"

    aput-object v7, v6, v8

    const-string/jumbo v7, "activity == null"

    aput-object v7, v6, v9

    const-string/jumbo v7, " miniAppId=>"

    aput-object v7, v6, v10

    aput-object v3, v6, v11

    .line 5082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 854
    .end local v3    # "miniAppId":Ljava/lang/String;
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_3

    .line 6044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v5

    .line 6197
    iget-object v5, v5, Lhee;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .line 856
    const/4 v6, 0x0

    .line 855
    invoke-static {v0, v5, v6}, Lhrf;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    .line 861
    .local v2, "isHandleTaskFront":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 862
    const-string/jumbo v5, "NavbarView"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v7, "float_onClick"

    aput-object v7, v6, v8

    const-string/jumbo v7, "move activity foreground , name="

    aput-object v7, v6, v9

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 7082
    const-string/jumbo v7, "mini_task"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 858
    .end local v2    # "isHandleTaskFront":Z
    :cond_3
    invoke-static {v0}, Lhrf;->a(Landroid/app/Activity;)Z

    move-result v2

    .restart local v2    # "isHandleTaskFront":Z
    goto :goto_1

    .line 867
    :cond_4
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Liop;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 868
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->o(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Liop;

    move-result-object v5

    invoke-interface {v5}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 869
    .local v4, "startParam":Landroid/os/Bundle;
    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    .restart local v3    # "miniAppId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5, v3}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
