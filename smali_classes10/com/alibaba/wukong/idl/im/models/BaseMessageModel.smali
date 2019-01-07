.class public final Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;
.super Ljava/lang/Object;
.source "BaseMessageModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public compensateType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public content:Lcom/alibaba/wukong/idl/im/models/ContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public conversationId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public createdAt:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public creatorType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public extension:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
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

.field public groupNickTag:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public memberExtension:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
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

.field public memberTag:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public messageId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public recallStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public shieldStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation
.end field

.field public tag:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public type:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 107
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 60
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    goto :goto_0

    .line 63
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->conversationId:Ljava/lang/String;

    goto :goto_0

    .line 66
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    goto :goto_0

    .line 69
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 72
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->creatorType:Ljava/lang/Integer;

    goto :goto_0

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->createdAt:Ljava/lang/Long;

    goto :goto_0

    .line 78
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    goto :goto_0

    .line 81
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->tag:Ljava/lang/Long;

    goto :goto_0

    .line 84
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->extension:Ljava/util/Map;

    goto :goto_0

    .line 87
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->memberTag:Ljava/lang/Long;

    goto :goto_0

    .line 90
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->memberExtension:Ljava/util/Map;

    goto :goto_0

    .line 93
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->recallStatus:Ljava/lang/Integer;

    goto :goto_0

    .line 96
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->groupNickTag:Ljava/lang/Integer;

    goto :goto_0

    .line 99
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->compensateType:Ljava/lang/Integer;

    goto :goto_0

    .line 102
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->shieldStatus:Ljava/lang/Integer;

    goto :goto_0

    .line 58
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
