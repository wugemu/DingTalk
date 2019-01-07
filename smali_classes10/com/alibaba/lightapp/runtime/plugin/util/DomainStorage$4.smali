.class Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;
.super Ljava/lang/Object;
.source "DomainStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->listItems(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

.field final synthetic val$domainSize:I

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;ILjava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$domainSize:I

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$host:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    const/4 v13, 0x2

    .line 167
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 169
    .local v6, "resultJsonObj":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v9, "setItemTotal"

    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$domainSize:I

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 172
    .local v4, "itemsLengthMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 173
    .local v0, "allTotal":I
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 174
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 175
    .local v8, "storagesArray":Lorg/json/JSONArray;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 176
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 178
    .local v5, "key":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 179
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v3, "itemJsonObj":Lorg/json/JSONObject;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-static {v9}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v7

    .line 181
    .local v7, "size":I
    const-string/jumbo v9, "k"

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v9, "s"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    add-int/2addr v0, v7

    goto :goto_0

    .line 191
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "itemJsonObj":Lorg/json/JSONObject;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "size":I
    :cond_1
    const-string/jumbo v9, "storages"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .end local v8    # "storagesArray":Lorg/json/JSONArray;
    :cond_2
    const-string/jumbo v9, "allTotal"

    invoke-virtual {v6, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v9, v6, v10}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$700(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "allTotal":I
    .end local v4    # "itemsLengthMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Lorg/json/JSONException;
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    new-array v10, v13, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "listItems "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$4;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v11, v11, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$800(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method
