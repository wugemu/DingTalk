.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;
.super Ljava/lang/Object;
.source "BizCallResultModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public businessId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public callbackNum:Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public isExtContact:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public labelList:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcec;",
            ">;"
        }
    .end annotation
.end field

.field public result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public tipMsg:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
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
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 54
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 34
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->result:Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;

    goto :goto_0

    .line 37
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->businessId:Ljava/lang/String;

    goto :goto_0

    .line 40
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->callbackNum:Lcom/alibaba/android/teleconf/sdk/idl/model/CallNumInfo;

    goto :goto_0

    .line 43
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->isExtContact:Ljava/lang/Boolean;

    goto :goto_0

    .line 46
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->labelList:Ljava/util/List;

    goto :goto_0

    .line 49
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/BizCallResultModel;->tipMsg:Ljava/lang/String;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
