.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;
.super Ljava/lang/Object;
.source "Mybank.java"

# interfaces
.implements Ljfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MybankResultListener"
.end annotation


# instance fields
.field private mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;
    .param p2, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;->mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 40
    return-void
.end method


# virtual methods
.method public onResult(ZLorg/json/JSONObject;)V
    .locals 2
    .param p1, "succ"    # Z
    .param p2, "result"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;->mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank$MybankResultListener;->mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Mybank;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
