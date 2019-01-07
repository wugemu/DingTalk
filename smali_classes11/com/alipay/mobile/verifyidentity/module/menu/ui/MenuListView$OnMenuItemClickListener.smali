.class Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    .line 118
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    .line 119
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mMenuData is not legal onItemClick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    long-to-int v1, p4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    .line 123
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the chosen token is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$400(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    move-result-object v2

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->getMenuClickRpc(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;

    move-result-object v0

    const-string/jumbo v2, "MenuClick"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method
