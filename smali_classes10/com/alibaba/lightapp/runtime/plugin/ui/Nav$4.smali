.class Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;
.super Ljava/lang/Object;
.source "Nav.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->go(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

.field final synthetic val$anim:I

.field final synthetic val$createIfNeeded:Z

.field final synthetic val$jsonObject:Lorg/json/JSONObject;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/ActionRequest;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$createIfNeeded:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$pageId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$jsonObject:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput p6, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$anim:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 193
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$300(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;

    .line 194
    .local v4, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
    if-eqz v4, :cond_2

    .line 195
    iget-boolean v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$createIfNeeded:Z

    if-eqz v10, :cond_0

    .line 197
    :try_start_0
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$pageId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->hasPage(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v5, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$jsonObject:Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v12, v12, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$400(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    move-result-object v9

    .line 200
    .local v9, "wvModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->preloadPages(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v5    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v9    # "wvModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;-><init>()V

    .line 211
    .local v0, "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$anim:I

    iput v10, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->type:I

    .line 212
    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$anim:I

    invoke-static {v10}, Lhhw;->a(I)[I

    move-result-object v10

    iput-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->res:[I

    .line 213
    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    .line 214
    iput-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitTo:Landroid/graphics/RectF;

    .line 216
    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$anim:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 218
    :try_start_1
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$jsonObject:Lorg/json/JSONObject;

    const-string/jumbo v11, "transit"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 219
    .local v8, "transit":Lorg/json/JSONObject;
    const-string/jumbo v10, "from"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 220
    .local v2, "from":Lorg/json/JSONObject;
    const-string/jumbo v10, "to"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 222
    .local v6, "to":Lorg/json/JSONObject;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 223
    .local v3, "fromRect":Landroid/graphics/RectF;
    const-string/jumbo v10, "top"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v3, Landroid/graphics/RectF;->top:F

    .line 224
    const-string/jumbo v10, "left"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v3, Landroid/graphics/RectF;->left:F

    .line 225
    iget v10, v3, Landroid/graphics/RectF;->top:F

    const-string/jumbo v11, "height"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v3, Landroid/graphics/RectF;->bottom:F

    .line 226
    iget v10, v3, Landroid/graphics/RectF;->top:F

    const-string/jumbo v11, "width"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v3, Landroid/graphics/RectF;->right:F

    .line 228
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 229
    .local v7, "toRect":Landroid/graphics/RectF;
    const-string/jumbo v10, "top"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/RectF;->top:F

    .line 230
    const-string/jumbo v10, "left"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 231
    iget v10, v7, Landroid/graphics/RectF;->top:F

    const-string/jumbo v11, "height"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v7, Landroid/graphics/RectF;->bottom:F

    .line 232
    iget v10, v7, Landroid/graphics/RectF;->top:F

    const-string/jumbo v11, "width"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 234
    iput-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitFrom:Landroid/graphics/RectF;

    .line 235
    iput-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;->transitTo:Landroid/graphics/RectF;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .end local v2    # "from":Lorg/json/JSONObject;
    .end local v3    # "fromRect":Landroid/graphics/RectF;
    .end local v6    # "to":Lorg/json/JSONObject;
    .end local v7    # "toRect":Landroid/graphics/RectF;
    .end local v8    # "transit":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->val$pageId:Ljava/lang/String;

    invoke-virtual {v4, v10, v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;->goPage(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    .line 243
    .end local v0    # "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    :cond_2
    :goto_1
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    const/4 v11, 0x2

    const-string/jumbo v12, "invalid args"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;

    invoke-static {v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$500(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;->access$600(Lcom/alibaba/lightapp/runtime/plugin/ui/Nav;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 236
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;
    :catch_1
    move-exception v1

    .line 237
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
