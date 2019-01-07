.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;
.super Ljava/lang/Object;
.source "CallManageCardMiddleDetailModel.java"

# interfaces
.implements Liyn;


# static fields
.field private static final KEY_DETAIL_CONTENT:Ljava/lang/String; = "detail_msg"

.field private static final KEY_DETAIL_LABEL:Ljava/lang/String; = "detail_label"

.field private static final KEY_DETAIL_REMARKS:Ljava/lang/String; = "detail_remarks"

.field private static final KEY_DETAIL_TITLE:Ljava/lang/String; = "detail_title"


# instance fields
.field public content:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public label:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
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
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 58
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 41
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 44
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->content:Ljava/lang/String;

    goto :goto_0

    .line 47
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->label:Ljava/lang/String;

    goto :goto_0

    .line 50
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    goto :goto_0

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->jumpModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageJumpModel;

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;
    .locals 4
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "detail_title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->title:Ljava/lang/String;

    .line 65
    const-string/jumbo v2, "detail_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->content:Ljava/lang/String;

    .line 66
    const-string/jumbo v2, "detail_label"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->label:Ljava/lang/String;

    .line 67
    new-instance v2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    invoke-direct {v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;-><init>()V

    const-string/jumbo v3, "detail_remarks"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object p0

    .line 68
    :catch_0
    move-exception v0

    .line 69
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
    .line 77
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "detail_title"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v2, "detail_msg"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v2, "detail_label"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    if-eqz v2, :cond_0

    .line 82
    const-string/jumbo v2, "detail_remarks"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailModel;->remarks:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleDetailBottomModel;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    const/4 v2, 0x0

    goto :goto_0
.end method
