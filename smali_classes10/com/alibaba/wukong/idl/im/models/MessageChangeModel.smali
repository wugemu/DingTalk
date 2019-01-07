.class public final Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;
.super Ljava/lang/Object;
.source "MessageChangeModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public atMeStatus:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/AtMsgStatusModel;",
            ">;"
        }
    .end annotation
.end field

.field public conversationId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public deleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public messageId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public messageModel:Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public privateExtension:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public privateTag:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public recallStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public receiverMessageStatus:Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public shieldStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public viewStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 100
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->conversationId:Ljava/lang/String;

    goto :goto_0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageId:Ljava/lang/Long;

    goto :goto_0

    .line 62
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->extension:Ljava/util/Map;

    goto :goto_0

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateTag:Ljava/lang/Long;

    goto :goto_0

    .line 68
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->privateExtension:Ljava/util/Map;

    goto :goto_0

    .line 71
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->receiverMessageStatus:Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    goto :goto_0

    .line 74
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    goto :goto_0

    .line 77
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->recallStatus:Ljava/lang/Integer;

    goto :goto_0

    .line 80
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->deleted:Ljava/lang/Boolean;

    goto :goto_0

    .line 83
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->viewStatus:Ljava/lang/Integer;

    goto :goto_0

    .line 86
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->messageModel:Lcom/alibaba/wukong/idl/im/models/MessageModel;

    goto :goto_0

    .line 89
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->uuid:Ljava/lang/String;

    goto :goto_0

    .line 92
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->shieldStatus:Ljava/lang/Integer;

    goto :goto_0

    .line 95
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/MessageChangeModel;->atMeStatus:Ljava/util/List;

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
