.class public final Lcom/alibaba/wukong/idl/im/models/ContentModel;
.super Ljava/lang/Object;
.source "ContentModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public atMeStatus:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
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

.field public atOpenIdExList:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;",
            ">;"
        }
    .end annotation
.end field

.field public atOpenIds:Ljava/util/Map;
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

.field public attachments:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public audioContent:Lcom/alibaba/wukong/idl/im/models/AudioContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public contentType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
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

.field public fileContent:Lcom/alibaba/wukong/idl/im/models/FileContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public photoContent:Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
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
    .line 42
    packed-switch p1, :pswitch_data_0

    .line 76
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    :pswitch_0
    return-void

    .line 44
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->contentType:Ljava/lang/Integer;

    goto :goto_0

    .line 47
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    goto :goto_0

    .line 50
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->photoContent:Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;

    goto :goto_0

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->audioContent:Lcom/alibaba/wukong/idl/im/models/AudioContentModel;

    goto :goto_0

    .line 56
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Lcom/alibaba/wukong/idl/im/models/FileContentModel;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->fileContent:Lcom/alibaba/wukong/idl/im/models/FileContentModel;

    goto :goto_0

    .line 59
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->extension:Ljava/util/Map;

    goto :goto_0

    .line 62
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto :goto_0

    .line 65
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atOpenIds:Ljava/util/Map;

    goto :goto_0

    .line 68
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atOpenIdExList:Ljava/util/List;

    goto :goto_0

    .line 71
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atMeStatus:Ljava/util/List;

    goto :goto_0

    .line 42
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
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
