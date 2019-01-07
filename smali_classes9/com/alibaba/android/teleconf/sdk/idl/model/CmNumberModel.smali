.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;
.super Ljava/lang/Object;
.source "CmNumberModel.java"

# interfaces
.implements Liyn;


# static fields
.field private static final KEY_NUMBERS:Ljava/lang/String; = "code_numbers"


# instance fields
.field public codeNumbers:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 30
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 25
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;
    .locals 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 35
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "code_numbers"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 37
    const-string/jumbo v6, "code_numbers"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 38
    .local v1, "detailsObj":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    .line 40
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "detailJsonObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 40
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v6, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;

    invoke-direct {v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;

    move-result-object v5

    .line 46
    .local v5, "numberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 50
    .end local v0    # "detailJsonObj":Ljava/lang/Object;
    .end local v1    # "detailsObj":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "numberModel":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    return-object p0
.end method

.method public final toJsonStr()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 61
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 62
    .local v1, "detailArray":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CmNumberModel;->codeNumbers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;

    .line 63
    .local v0, "codeNumber":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;->toJsonStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "codeNumber":Lcom/alibaba/android/teleconf/sdk/idl/model/CodeNumberModel;
    .end local v1    # "detailArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    const/4 v4, 0x0

    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 68
    .restart local v1    # "detailArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "code_numbers"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    .end local v1    # "detailArray":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method
