.class Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;
.super Ljava/lang/Object;
.source "DDMtopModule.java"

# interfaces
.implements Lhig$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;->send(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhig$a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v1, :cond_0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/module/DDMtopModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {p1}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
