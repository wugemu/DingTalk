.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;
.super Lcmi;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->setRuleCallback(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    const/16 v1, 0x9

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Long;)V
    .locals 5
    .param p1, "count"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1318
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1320
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "userCount"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1326
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1323
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1315
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$11;->onLoadSuccess(Ljava/lang/Long;)V

    return-void
.end method
