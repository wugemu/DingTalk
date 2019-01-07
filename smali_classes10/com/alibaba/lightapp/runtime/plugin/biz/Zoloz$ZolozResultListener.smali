.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;
.super Ljava/lang/Object;
.source "Zoloz.java"

# interfaces
.implements Ljfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZolozResultListener"
.end annotation


# instance fields
.field private mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;
    .param p2, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;->mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 36
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
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;->mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz$ZolozResultListener;->mReq:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Zoloz;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
