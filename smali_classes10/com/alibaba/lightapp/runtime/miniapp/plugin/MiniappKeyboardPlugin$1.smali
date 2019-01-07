.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;
.super Ljava/lang/Object;
.source "MiniappKeyboardPlugin.java"

# interfaces
.implements Lhrs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyboardEvent(ZI)V
    .locals 8
    .param p1, "isShowKeyboard"    # Z
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 81
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    .line 83
    .local v3, "h5page":Liop;
    if-nez v3, :cond_1

    .line 126
    .end local v3    # "h5page":Liop;
    :cond_0
    :goto_0
    return-void

    .line 87
    .restart local v3    # "h5page":Liop;
    :cond_1
    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 88
    .local v0, "bridge":Linx;
    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 95
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v1, :cond_3

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 96
    int-to-float v5, p2

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 105
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_1
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "addKeyboardShowListener"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v5, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v5, "keyboardShowEvent"

    invoke-interface {v0, v5, v4, v7}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 111
    .end local v0    # "bridge":Linx;
    .end local v3    # "h5page":Liop;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;->b(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappKeyboardPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5Event;->b()Liop;

    move-result-object v3

    .line 113
    .restart local v3    # "h5page":Liop;
    if-eqz v3, :cond_0

    .line 117
    invoke-interface {v3}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 118
    .restart local v0    # "bridge":Linx;
    if-eqz v0, :cond_0

    .line 122
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 123
    .restart local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "addKeyboardHideListener"

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string/jumbo v5, "keyboardHideEvent"

    invoke-interface {v0, v5, v4, v7}, Linx;->sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    goto :goto_0

    .line 98
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_3
    const/4 p2, 0x0

    goto :goto_1

    .line 100
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const/4 p2, 0x0

    goto :goto_1
.end method
