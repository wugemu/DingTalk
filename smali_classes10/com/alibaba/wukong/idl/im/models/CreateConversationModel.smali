.class public final Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;
.super Ljava/lang/Object;
.source "CreateConversationModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public active:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
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

.field public icon:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
    .end annotation
.end field

.field public memberLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public members:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/RoleModel;",
            ">;"
        }
    .end annotation
.end field

.field public nodeType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public openIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
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

.field public parentId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public showHistoryType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
    .end annotation
.end field

.field public superGroup:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public tag:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public type:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public unique:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x14
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
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 113
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 63
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->openIds:Ljava/util/List;

    goto :goto_0

    .line 66
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 69
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->icon:Ljava/lang/String;

    goto :goto_0

    .line 72
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->extension:Ljava/util/Map;

    goto :goto_0

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->tag:Ljava/lang/Long;

    goto :goto_0

    .line 78
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->type:Ljava/lang/Integer;

    goto :goto_0

    .line 81
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->memberLimit:Ljava/lang/Integer;

    goto :goto_0

    .line 84
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->superGroup:Ljava/lang/Integer;

    goto :goto_0

    .line 87
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->parentId:Ljava/lang/String;

    goto :goto_0

    .line 90
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->nodeType:Ljava/lang/Integer;

    goto :goto_0

    .line 93
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->active:Ljava/lang/Integer;

    goto :goto_0

    .line 96
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->members:Ljava/util/List;

    goto :goto_0

    .line 99
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->unique:Ljava/lang/Integer;

    goto :goto_0

    .line 102
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->showHistoryType:Ljava/lang/Integer;

    goto :goto_0

    .line 105
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->iconOption:Lcom/alibaba/wukong/idl/im/models/IconOptionModel;

    goto :goto_0

    .line 108
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/CreateConversationModel;->uuid:Ljava/lang/String;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method
