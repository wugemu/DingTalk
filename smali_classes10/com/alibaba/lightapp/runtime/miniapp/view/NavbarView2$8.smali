.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;
.super Ljava/lang/Object;
.source "NavbarView2.java"

# interfaces
.implements Lheg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v6

    .line 804
    invoke-virtual {v6}, Lhee;->a()V

    .line 2044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v6

    .line 2205
    iget-object v2, v6, Lhee;->c:Ljava/lang/String;

    .line 808
    .local v2, "className":Ljava/lang/String;
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v6

    invoke-virtual {v6, v2}, Lhlq;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 809
    const-string/jumbo v6, "NavbarView2"

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "float_onClick"

    aput-object v8, v7, v10

    const-string/jumbo v8, "activity isForeground , name="

    aput-object v8, v7, v9

    aput-object v2, v7, v11

    .line 3082
    const-string/jumbo v8, "mini_task"

    invoke-static {v8, v6, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 4044
    :cond_1
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v6

    .line 813
    invoke-virtual {v6}, Lhee;->b()Landroid/app/Activity;

    move-result-object v0

    .line 815
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_2

    .line 816
    invoke-static {}, Lheh;->a()Lheh;

    move-result-object v6

    .line 4172
    iget-object v4, v6, Lheh;->f:Ljava/lang/String;

    .line 817
    .local v4, "miniAppId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v6, v4}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Ljava/lang/String;)V

    .line 818
    const-string/jumbo v6, "NavbarView2"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "float_onClick"

    aput-object v8, v7, v10

    const-string/jumbo v8, "activity == null"

    aput-object v8, v7, v9

    const-string/jumbo v8, " miniAppId=>"

    aput-object v8, v7, v11

    aput-object v4, v7, v12

    .line 5082
    const-string/jumbo v8, "mini_task"

    invoke-static {v8, v6, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 824
    .end local v4    # "miniAppId":Ljava/lang/String;
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_3

    .line 825
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 826
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "mini_anim_action"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v6

    .line 6197
    iget-object v6, v6, Lhee;->a:Lcom/alibaba/lightapp/runtime/activity/floating/FloatMonkService;

    .line 827
    invoke-static {v0, v6, v1}, Lhrf;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    .line 833
    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v3, "isHandleTaskFront":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 834
    const-string/jumbo v6, "NavbarView2"

    new-array v7, v12, [Ljava/lang/Object;

    const-string/jumbo v8, "float_onClick"

    aput-object v8, v7, v10

    const-string/jumbo v8, "move activity foreground , name="

    aput-object v8, v7, v9

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 830
    .end local v3    # "isHandleTaskFront":Z
    :cond_3
    invoke-static {v0}, Lhrf;->a(Landroid/app/Activity;)Z

    move-result v3

    .restart local v3    # "isHandleTaskFront":Z
    goto :goto_1

    .line 839
    :cond_4
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->l(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)Liop;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 840
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->l(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;)Liop;

    move-result-object v6

    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 841
    .local v5, "startParam":Landroid/os/Bundle;
    const-string/jumbo v6, "appId"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 842
    .restart local v4    # "miniAppId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2$8;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;

    invoke-static {v6, v4}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;->a(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView2;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
