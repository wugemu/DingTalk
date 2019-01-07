.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;
.super Ljava/lang/Object;
.source "CallManageCardTopModel.java"

# interfaces
.implements Liyn;


# static fields
.field private static final KEY_TOP_BTN:Ljava/lang/String; = "top_btn"

.field private static final KEY_TOP_CONTENT:Ljava/lang/String; = "top_msg"

.field private static final KEY_TOP_ICON:Ljava/lang/String; = "top_icon"

.field private static final KEY_TOP_TITLE:Ljava/lang/String; = "top_title"


# instance fields
.field public btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
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
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 52
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 38
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 41
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->content:Ljava/lang/String;

    goto :goto_0

    .line 44
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    goto :goto_0

    .line 47
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "top_title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->title:Ljava/lang/String;

    .line 59
    const-string/jumbo v2, "top_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->content:Ljava/lang/String;

    .line 60
    const-string/jumbo v2, "top_icon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    .line 61
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;-><init>()V

    const-string/jumbo v3, "top_btn"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object p0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final toJsonStr()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "top_title"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v2, "top_msg"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v2, "top_icon"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    if-eqz v2, :cond_0

    .line 76
    const-string/jumbo v2, "top_btn"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->btnModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageBtnModel;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 82
    const/4 v2, 0x0

    goto :goto_0
.end method
