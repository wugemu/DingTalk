.class public final Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;
.super Ljava/lang/Object;
.source "BaseConversationModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public active:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x15
    .end annotation
.end field

.field public atAllType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x20
    .end annotation
.end field

.field public authority:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public banWordsTime:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1e
    .end annotation
.end field

.field public banWordsType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1b
    .end annotation
.end field

.field public categoryId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x22
    .end annotation
.end field

.field public conversationId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public createAt:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public entranceId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x23
    .end annotation
.end field

.field public extension:Ljava/util/Map;
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

.field public groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x18
    .end annotation
.end field

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1a
    .end annotation
.end field

.field public inBanBlack:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1d
    .end annotation
.end field

.field public inBanWhite:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1c
    .end annotation
.end field

.field public lastMsgCreateAt:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x21
    .end annotation
.end field

.field public memberCount:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public memberExtension:Ljava/util/Map;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
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

.field public memberLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x10
    .end annotation
.end field

.field public nodeType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x14
    .end annotation
.end field

.field public notificationOff:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public notificationSound:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public openIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public ownerId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation
.end field

.field public parentId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x13
    .end annotation
.end field

.field public searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1f
    .end annotation
.end field

.field public showHistoryType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x19
    .end annotation
.end field

.field public sort:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation
.end field

.field public status:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation
.end field

.field public superGroup:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x11
    .end annotation
.end field

.field public tag:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public type:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public unique:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x16
    .end annotation
.end field

.field public unreadPoint:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x12
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
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 226
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 119
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->conversationId:Ljava/lang/String;

    goto :goto_0

    .line 122
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 125
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberCount:Ljava/lang/Integer;

    goto :goto_0

    .line 128
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 131
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->icon:Ljava/lang/String;

    goto :goto_0

    .line 134
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->extension:Ljava/util/Map;

    goto :goto_0

    .line 137
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->createAt:Ljava/lang/Long;

    goto :goto_0

    .line 140
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberExtension:Ljava/util/Map;

    goto :goto_0

    .line 143
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->notificationOff:Ljava/lang/Integer;

    goto :goto_0

    .line 146
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->tag:Ljava/lang/Long;

    goto :goto_0

    .line 149
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->sort:Ljava/lang/Long;

    goto :goto_0

    .line 152
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->status:Ljava/lang/Integer;

    goto :goto_0

    .line 155
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->notificationSound:Ljava/lang/String;

    goto :goto_0

    .line 158
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->authority:Ljava/lang/Integer;

    goto :goto_0

    .line 161
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->ownerId:Ljava/lang/Long;

    goto :goto_0

    .line 164
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberLimit:Ljava/lang/Integer;

    goto :goto_0

    .line 167
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->superGroup:Ljava/lang/Integer;

    goto :goto_0

    .line 170
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->unreadPoint:Ljava/lang/Integer;

    goto :goto_0

    .line 173
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_12
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->parentId:Ljava/lang/String;

    goto/16 :goto_0

    .line 176
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_13
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->nodeType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 179
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_14
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->active:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 182
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_15
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->unique:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 185
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_16
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->openIds:Ljava/util/List;

    goto/16 :goto_0

    .line 188
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_17
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->groupValidationInfo:Lcom/alibaba/wukong/idl/im/models/GroupValidationInfoModel;

    goto/16 :goto_0

    .line 191
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_18
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->showHistoryType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 194
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_19
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    goto/16 :goto_0

    .line 197
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->banWordsType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 200
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1b
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->inBanWhite:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 203
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1c
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->inBanBlack:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 206
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1d
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->banWordsTime:Ljava/lang/Long;

    goto/16 :goto_0

    .line 209
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1e
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->searchableModel:Lcom/alibaba/wukong/idl/im/models/SearchableModel;

    goto/16 :goto_0

    .line 212
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1f
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->atAllType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 215
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_20
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->lastMsgCreateAt:Ljava/lang/Long;

    goto/16 :goto_0

    .line 218
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_21
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->categoryId:Ljava/lang/Long;

    goto/16 :goto_0

    .line 221
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_22
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->entranceId:Ljava/lang/Long;

    goto/16 :goto_0

    .line 117
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method
