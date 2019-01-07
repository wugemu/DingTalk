.class Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;
.super Ljava/lang/Object;
.source "H5PopMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/view/H5PopMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "tag":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 73
    .end local v3    # "tag":Ljava/lang/Object;
    :goto_0
    return-void

    .line 60
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "tag":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 62
    .local v2, "position":I
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->menuList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 63
    .local v1, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    const-string/jumbo v4, "-1"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->setRedDotNum(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 65
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "name"

    iget-object v5, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string/jumbo v4, "tag"

    iget-object v5, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v4, "title"

    iget-object v5, v1, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v4, "url"

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v5, v5, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    invoke-interface {v5}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-boolean v4, v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->isShowPopMenu:Z

    if-eqz v4, :cond_2

    .line 70
    const-string/jumbo v4, "popMenuType"

    const-string/jumbo v5, "popmenu"

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$1;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v4, v4, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->h5Page:Liop;

    const-string/jumbo v5, "h5ToolbarMenuBt"

    invoke-interface {v4, v5, v0}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
