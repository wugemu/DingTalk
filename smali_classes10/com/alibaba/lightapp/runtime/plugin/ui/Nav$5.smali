.class Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;
.super Ljava/lang/Object;
.source "Nav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->push(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

.field final synthetic val$anim:I

.field final synthetic val$jsonObject:Lorg/json/JSONObject;

.field final synthetic val$webViewModel:Lcom/alibaba/lightapp/runtime/model/WebViewModel;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;ILorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/model/WebViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$anim:I

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$jsonObject:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$webViewModel:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 283
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$700(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 284
    .local v4, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-eqz v4, :cond_1

    .line 285
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;-><init>()V

    .line 286
    .local v0, "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    iget v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$anim:I

    iput v8, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->type:I

    .line 287
    iget v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$anim:I

    invoke-static {v8}, Lhhw;->a(I)[I

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->res:[I

    .line 288
    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    .line 289
    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitTo:Landroid/graphics/RectF;

    .line 291
    iget v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$anim:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 293
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v9, "transit"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 294
    .local v7, "transit":Lorg/json/JSONObject;
    const-string/jumbo v8, "from"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 295
    .local v2, "from":Lorg/json/JSONObject;
    const-string/jumbo v8, "to"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 297
    .local v5, "to":Lorg/json/JSONObject;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 298
    .local v3, "fromRect":Landroid/graphics/RectF;
    const-string/jumbo v8, "top"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/RectF;->top:F

    .line 299
    const-string/jumbo v8, "left"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v3, Landroid/graphics/RectF;->left:F

    .line 300
    iget v8, v3, Landroid/graphics/RectF;->top:F

    const-string/jumbo v9, "height"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v3, Landroid/graphics/RectF;->bottom:F

    .line 301
    iget v8, v3, Landroid/graphics/RectF;->top:F

    const-string/jumbo v9, "width"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v3, Landroid/graphics/RectF;->right:F

    .line 303
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 304
    .local v6, "toRect":Landroid/graphics/RectF;
    const-string/jumbo v8, "top"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v6, Landroid/graphics/RectF;->top:F

    .line 305
    const-string/jumbo v8, "left"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iput v8, v6, Landroid/graphics/RectF;->left:F

    .line 306
    iget v8, v6, Landroid/graphics/RectF;->top:F

    const-string/jumbo v9, "height"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 307
    iget v8, v6, Landroid/graphics/RectF;->top:F

    const-string/jumbo v9, "width"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Landroid/graphics/RectF;->right:F

    .line 309
    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    .line 310
    iput-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitTo:Landroid/graphics/RectF;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v2    # "from":Lorg/json/JSONObject;
    .end local v3    # "fromRect":Landroid/graphics/RectF;
    .end local v5    # "to":Lorg/json/JSONObject;
    .end local v6    # "toRect":Landroid/graphics/RectF;
    .end local v7    # "transit":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$5;->val$webViewModel:Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-virtual {v4, v8, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->pushPage(Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    .line 318
    .end local v0    # "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    :cond_1
    return-void

    .line 311
    .restart local v0    # "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
