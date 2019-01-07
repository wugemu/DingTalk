.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;
.super Ljava/lang/Object;
.source "CallManageCardModel.java"

# interfaces
.implements Liyn;


# static fields
.field private static final KEY_CARD_BOTTOM:Ljava/lang/String; = "card_bottom"

.field private static final KEY_CARD_MIDDLE:Ljava/lang/String; = "card_middle"

.field private static final KEY_CARD_ORG_ID:Ljava/lang/String; = "card_org_id"

.field private static final KEY_CARD_SWITCH:Ljava/lang/String; = "card_org_switch"

.field private static final KEY_CARD_SWITCH_TXT:Ljava/lang/String; = "card_org_switch_txt"

.field private static final KEY_CARD_TOP:Ljava/lang/String; = "card_top"

.field private static final KEY_CARD_TYPE:Ljava/lang/String; = "card_type"


# instance fields
.field public bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public cardOrgId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public changeOrgSwitch:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public changeOrgText:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 70
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 47
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    goto :goto_0

    .line 50
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    goto :goto_0

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    goto :goto_0

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    goto :goto_0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgSwitch:Ljava/lang/Boolean;

    goto :goto_0

    .line 62
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgText:Ljava/lang/String;

    goto :goto_0

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;
    .locals 6
    .param p1, "jsonStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;-><init>()V

    const-string/jumbo v4, "card_top"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    .line 77
    new-instance v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;-><init>()V

    const-string/jumbo v4, "card_middle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    .line 78
    new-instance v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    invoke-direct {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;-><init>()V

    const-string/jumbo v4, "card_bottom"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->fromJsonStr(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    .line 79
    const-string/jumbo v3, "card_org_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    .line 80
    const-string/jumbo v3, "card_org_switch"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgSwitch:Ljava/lang/Boolean;

    .line 81
    const-string/jumbo v3, "card_org_switch_txt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgText:Ljava/lang/String;

    .line 82
    const-string/jumbo v3, "card_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "type":I
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->TYPE_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->valueOf()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 84
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->TYPE_BIZCALL:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    .line 92
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "type":I
    :cond_0
    :goto_0
    return-object p0

    .line 85
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "type":I
    :cond_1
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->TYPE_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->valueOf()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 86
    sget-object v3, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->TYPE_CONF:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    iput-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final toJsonStr()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    if-eqz v2, :cond_0

    .line 99
    const-string/jumbo v2, "card_top"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->topModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardTopModel;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    if-eqz v2, :cond_1

    .line 102
    const-string/jumbo v2, "card_middle"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->middleModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardMiddleModel;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    if-eqz v2, :cond_2

    .line 105
    const-string/jumbo v2, "card_bottom"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->bottomModel:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardBottomModel;->toJsonStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 108
    const-string/jumbo v2, "card_org_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardOrgId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgSwitch:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 111
    const-string/jumbo v2, "card_org_switch"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgSwitch:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 113
    :cond_4
    const-string/jumbo v2, "card_org_switch_txt"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->changeOrgText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    if-eqz v2, :cond_5

    .line 115
    const-string/jumbo v2, "card_type"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardModel;->cardType:Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/CallManageCardType;->valueOf()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    const/4 v2, 0x0

    goto :goto_0
.end method
