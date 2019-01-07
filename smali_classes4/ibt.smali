.class public final Libt;
.super Ljava/lang/Object;
.source "MessageConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .locals 8
    .param p0, "type"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "isPreload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentModel;"
        }
    .end annotation

    .prologue
    .line 630
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .locals 10
    .param p0, "type"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "isPreload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentModel;"
        }
    .end annotation

    .prologue
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    const/4 v7, 0x0

    .line 635
    move v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .locals 2
    .param p0, "type"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "isPreload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;",
            ">;)",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentModel;"
        }
    .end annotation

    .prologue
    .line 641
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .local p7, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .local p8, "enhancedExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;>;"
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;-><init>()V

    .line 642
    .local v0, "attachment":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    .line 643
    iput-object p1, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    .line 644
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->size:Ljava/lang/Long;

    .line 645
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->isPreload:Ljava/lang/Boolean;

    .line 646
    iput-object p5, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 647
    iput-object p6, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    .line 648
    iput-object p7, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->nickMap:Ljava/util/Map;

    .line 649
    iput-object p8, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->enhancedExtension:Ljava/util/Map;

    .line 650
    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;
    .locals 1
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p2, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ")",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    .local p1, "atOpenIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;
    .locals 125
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p3, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;",
            "Lcom/alibaba/wukong/im/message/MessageImpl;",
            ")",
            "Lcom/alibaba/wukong/idl/im/models/ContentModel;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "atOpenIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p2, "openIdExObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    if-nez p0, :cond_1

    .line 135
    const/16 v77, 0x0

    .line 497
    :cond_0
    :goto_0
    return-object v77

    .line 136
    :cond_1
    new-instance v77, Lcom/alibaba/wukong/idl/im/models/ContentModel;

    invoke-direct/range {v77 .. v77}, Lcom/alibaba/wukong/idl/im/models/ContentModel;-><init>()V

    .line 137
    .local v77, "content":Lcom/alibaba/wukong/idl/im/models/ContentModel;
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v77

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->contentType:Ljava/lang/Integer;

    .line 2114
    if-nez p1, :cond_3

    .line 2115
    const/4 v2, 0x0

    .line 138
    :goto_1
    move-object/from16 v0, v77

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atOpenIds:Ljava/util/Map;

    .line 139
    invoke-static/range {p2 .. p2}, Lcom/alibaba/wukong/im/OpenIdExObject;->convert2IdlModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v77

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atOpenIdExList:Ljava/util/List;

    .line 140
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 479
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v2, :cond_0

    move-object/from16 v111, p0

    .line 480
    check-cast v111, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 481
    .local v111, "multipleContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface/range {v111 .. v111}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v103

    .line 482
    .local v103, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent;>;"
    if-eqz v103, :cond_0

    invoke-interface/range {v103 .. v103}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    new-instance v78, Ljava/util/ArrayList;

    invoke-direct/range {v78 .. v78}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v78, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-interface/range {v103 .. v103}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Lcom/alibaba/wukong/im/MessageContent;

    .line 486
    .local v70, "c":Lcom/alibaba/wukong/im/MessageContent;
    move-object/from16 v0, v70

    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v3, :cond_2

    move-object/from16 v79, v70

    .line 488
    check-cast v79, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 489
    .local v79, "custom":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface/range {v79 .. v79}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->customType()I

    move-result v56

    invoke-interface/range {v79 .. v79}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 490
    invoke-interface/range {v79 .. v79}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->size()J

    move-result-wide v58

    const/16 v60, 0x0

    invoke-interface/range {v79 .. v79}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v61

    invoke-interface/range {v79 .. v79}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v62

    .line 489
    invoke-static/range {v56 .. v62}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v63

    .line 491
    .local v63, "attachment":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v78

    move-object/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2117
    .end local v63    # "attachment":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v70    # "c":Lcom/alibaba/wukong/im/MessageContent;
    .end local v78    # "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v79    # "custom":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v103    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent;>;"
    .end local v111    # "multipleContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2118
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2120
    if-eqz v3, :cond_4

    .line 2121
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v4

    .line 2124
    goto/16 :goto_1

    :sswitch_0
    move-object/from16 v115, p0

    .line 142
    check-cast v115, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 143
    .local v115, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    new-instance v117, Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    invoke-direct/range {v117 .. v117}, Lcom/alibaba/wukong/idl/im/models/TextContentModel;-><init>()V

    .line 144
    .local v117, "textModel":Lcom/alibaba/wukong/idl/im/models/TextContentModel;
    invoke-interface/range {v115 .. v115}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v117

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->text:Ljava/lang/String;

    .line 145
    invoke-interface/range {v115 .. v115}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->templateId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v117

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->templateId:Ljava/lang/String;

    .line 146
    invoke-interface/range {v115 .. v115}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->templateData()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v117

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->templateData:Ljava/util/List;

    .line 147
    move-object/from16 v0, v117

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    goto/16 :goto_0

    .end local v115    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    .end local v117    # "textModel":Lcom/alibaba/wukong/idl/im/models/TextContentModel;
    :sswitch_1
    move-object/from16 v101, p0

    .line 150
    check-cast v101, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 151
    .local v101, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    new-instance v112, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;

    invoke-direct/range {v112 .. v112}, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;-><init>()V

    .line 152
    .local v112, "photoModel":Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v112

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->mediaId:Ljava/lang/String;

    .line 153
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v112

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->picSize:Ljava/lang/Long;

    .line 154
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->picType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v112

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->type:Ljava/lang/Integer;

    .line 155
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v112

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->orientation:Ljava/lang/Integer;

    .line 156
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v112

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->extension:Ljava/util/Map;

    .line 158
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v102

    .line 159
    .local v102, "imgAuthUrl":Ljava/lang/String;
    invoke-static/range {v102 .. v102}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 160
    new-instance v69, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct/range {v69 .. v69}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 161
    .local v69, "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    invoke-static/range {v102 .. v102}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 162
    move-object/from16 v0, v69

    move-object/from16 v1, v112

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->authMedia:Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 164
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    .line 3020
    new-instance v110, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct/range {v110 .. v110}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 169
    .local v110, "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_4
    const-string/jumbo v2, "authMediaId"

    move-object/from16 v0, v69

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v110

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-interface/range {v101 .. v101}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v112

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->filename:Ljava/lang/String;

    .line 173
    move-object/from16 v0, v112

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->photoContent:Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;

    goto/16 :goto_0

    .line 167
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v110

    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4

    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v101    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v102    # "imgAuthUrl":Ljava/lang/String;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v112    # "photoModel":Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;
    :sswitch_2
    move-object/from16 v67, p0

    .line 176
    check-cast v67, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 177
    .local v67, "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    new-instance v68, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;

    invoke-direct/range {v68 .. v68}, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;-><init>()V

    .line 178
    .local v68, "audioModel":Lcom/alibaba/wukong/idl/im/models/AudioContentModel;
    invoke-interface/range {v67 .. v67}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v68

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->mediaId:Ljava/lang/String;

    .line 179
    invoke-interface/range {v67 .. v67}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v68

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->duration:Ljava/lang/Long;

    .line 180
    invoke-interface/range {v67 .. v67}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v68

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->audioVolumns:Ljava/util/List;

    .line 182
    invoke-interface/range {v67 .. v67}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v66

    .line 183
    .local v66, "audAuthUrl":Ljava/lang/String;
    invoke-static/range {v66 .. v66}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 184
    new-instance v69, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct/range {v69 .. v69}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 185
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    invoke-static/range {v66 .. v66}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 186
    move-object/from16 v0, v69

    move-object/from16 v1, v68

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->authMedia:Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 188
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_9

    .line 4020
    new-instance v110, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct/range {v110 .. v110}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 193
    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_5
    const-string/jumbo v2, "authMediaId"

    move-object/from16 v0, v69

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v110

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, v68

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->audioContent:Lcom/alibaba/wukong/idl/im/models/AudioContentModel;

    goto/16 :goto_0

    .line 191
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v110

    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_5

    .end local v66    # "audAuthUrl":Ljava/lang/String;
    .end local v67    # "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    .end local v68    # "audioModel":Lcom/alibaba/wukong/idl/im/models/AudioContentModel;
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_3
    move-object/from16 v96, p0

    .line 199
    check-cast v96, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 200
    .local v96, "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    new-instance v97, Lcom/alibaba/wukong/idl/im/models/FileContentModel;

    invoke-direct/range {v97 .. v97}, Lcom/alibaba/wukong/idl/im/models/FileContentModel;-><init>()V

    .line 201
    .local v97, "fileModel":Lcom/alibaba/wukong/idl/im/models/FileContentModel;
    invoke-interface/range {v96 .. v96}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v97

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->mediaId:Ljava/lang/String;

    .line 202
    invoke-interface/range {v96 .. v96}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v97

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->fileSize:Ljava/lang/Long;

    .line 203
    invoke-interface/range {v96 .. v96}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v97

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->fileName:Ljava/lang/String;

    .line 204
    invoke-interface/range {v96 .. v96}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v97

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->fileType:Ljava/lang/String;

    .line 205
    move-object/from16 v0, v97

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->fileContent:Lcom/alibaba/wukong/idl/im/models/FileContentModel;

    goto/16 :goto_0

    .line 209
    .end local v96    # "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    .end local v97    # "fileModel":Lcom/alibaba/wukong/idl/im/models/FileContentModel;
    :sswitch_4
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v77

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .line 212
    :sswitch_5
    const/16 v2, 0x515

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v77

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v118, p0

    .line 215
    check-cast v118, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 216
    .local v118, "video":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    new-instance v121, Ljava/util/ArrayList;

    invoke-direct/range {v121 .. v121}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v121, "videoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v7, "videoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 219
    const-string/jumbo v2, "fileName"

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_a
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 222
    const-string/jumbo v2, "fileType"

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_b
    const-string/jumbo v2, "duration"

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->duration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v2, "width"

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v2, "height"

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string/jumbo v2, "bitrate"

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->bitrate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->picUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v123

    .line 229
    .local v123, "videoPicUrl":Ljava/lang/String;
    if-eqz v123, :cond_c

    .line 230
    const-string/jumbo v2, "picUrl"

    move-object/from16 v0, v123

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_c
    new-instance v120, Ljava/util/HashMap;

    invoke-direct/range {v120 .. v120}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v120, "videoAuthMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 235
    new-instance v69, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct/range {v69 .. v69}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 236
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 237
    const-string/jumbo v2, "videoAuthMedia"

    move-object/from16 v0, v120

    move-object/from16 v1, v69

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    .line 5020
    new-instance v110, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct/range {v110 .. v110}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 245
    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_6
    const-string/jumbo v2, "authMediaId"

    move-object/from16 v0, v69

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v110

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 248
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_d
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 249
    new-instance v69, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct/range {v69 .. v69}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 250
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 251
    const-string/jumbo v2, "picAuthMedia"

    move-object/from16 v0, v120

    move-object/from16 v1, v69

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_10

    .line 6020
    new-instance v110, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct/range {v110 .. v110}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 259
    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_7
    const-string/jumbo v2, "picAuthMediaId"

    move-object/from16 v0, v69

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v110

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 262
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    const/16 v2, 0x67

    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-interface/range {v118 .. v118}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->size()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 262
    invoke-static/range {v2 .. v7}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v119

    .line 264
    .local v119, "videoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v120

    move-object/from16 v1, v119

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    .line 265
    move-object/from16 v0, v121

    move-object/from16 v1, v119

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    move-object/from16 v0, v121

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .line 243
    .end local v119    # "videoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v110

    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_6

    .line 257
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v110

    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7

    .end local v7    # "videoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v118    # "video":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    .end local v120    # "videoAuthMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .end local v121    # "videoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v123    # "videoPicUrl":Ljava/lang/String;
    :sswitch_7
    move-object/from16 v75, p0

    .line 269
    check-cast v75, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 270
    .local v75, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    new-instance v76, Ljava/util/ArrayList;

    invoke-direct/range {v76 .. v76}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v76, "commonVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v13, "commonVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 273
    const-string/jumbo v2, "fileName"

    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_11
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 276
    const-string/jumbo v2, "fileType"

    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_12
    const-string/jumbo v2, "duration"

    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->duration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v2, "width"

    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string/jumbo v2, "height"

    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v122

    .line 282
    .local v122, "videoPicLocalUrl":Ljava/lang/String;
    if-eqz v122, :cond_13

    .line 283
    const-string/jumbo v2, "picUrl"

    move-object/from16 v0, v122

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_13
    new-instance v71, Ljava/util/HashMap;

    invoke-direct/range {v71 .. v71}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v71, "commVideoAuthMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 288
    new-instance v69, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct/range {v69 .. v69}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 289
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 290
    const-string/jumbo v2, "videoAuthMedia"

    move-object/from16 v0, v71

    move-object/from16 v1, v69

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_16

    .line 7020
    new-instance v110, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct/range {v110 .. v110}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 298
    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_8
    const-string/jumbo v2, "authMediaId"

    move-object/from16 v0, v69

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v110

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 301
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_14
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 302
    new-instance v69, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    invoke-direct/range {v69 .. v69}, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;-><init>()V

    .line 303
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 304
    const-string/jumbo v2, "picAuthMedia"

    move-object/from16 v0, v71

    move-object/from16 v1, v69

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_17

    .line 8020
    new-instance v110, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;

    invoke-direct/range {v110 .. v110}, Lcom/alibaba/wukong/im/utils/ConcurrentHashMapEx;-><init>()V

    .line 312
    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_9
    const-string/jumbo v2, "picAuthMediaId"

    move-object/from16 v0, v69

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    move-object/from16 v0, v110

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 316
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15
    const/16 v8, 0xca

    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-interface/range {v75 .. v75}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->size()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 316
    invoke-static/range {v8 .. v13}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v74

    .line 318
    .local v74, "commonVideoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v71

    move-object/from16 v1, v74

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    .line 319
    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    move-object/from16 v0, v76

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .line 296
    .end local v74    # "commonVideoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .restart local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v110

    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_8

    .line 310
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->extension()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v110

    .restart local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_9

    .end local v13    # "commonVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v69    # "authParams":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    .end local v71    # "commVideoAuthMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    .end local v75    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .end local v76    # "commonVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v110    # "msgExt":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v122    # "videoPicLocalUrl":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v98, p0

    .line 323
    check-cast v98, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 324
    .local v98, "geo":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    new-instance v100, Ljava/util/ArrayList;

    invoke-direct/range {v100 .. v100}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v100, "geoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v19, "geoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v98 .. v98}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 327
    const-string/jumbo v2, "locationName"

    invoke-interface/range {v98 .. v98}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_18
    const-string/jumbo v2, "latitude"

    invoke-interface/range {v98 .. v98}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->latitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v2, "longitude"

    invoke-interface/range {v98 .. v98}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->longitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/16 v14, 0x68

    invoke-interface/range {v98 .. v98}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 332
    invoke-interface/range {v98 .. v98}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->size()J

    move-result-wide v16

    const/16 v18, 0x0

    .line 331
    invoke-static/range {v14 .. v19}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v99

    .line 333
    .local v99, "geoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v100

    move-object/from16 v1, v99

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    move-object/from16 v0, v100

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v19    # "geoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v98    # "geo":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    .end local v99    # "geoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v100    # "geoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    :sswitch_9
    move-object/from16 v92, p0

    .line 337
    check-cast v92, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 338
    .local v92, "encryptImageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    new-instance v93, Ljava/util/ArrayList;

    invoke-direct/range {v93 .. v93}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v93, "encryptImageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-static/range {v92 .. v92}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Ljava/util/HashMap;

    move-result-object v25

    .line 340
    .local v25, "encryptImageExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "picType"

    .line 341
    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->picType()I

    move-result v3

    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v2, "orientation"

    .line 343
    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v3

    .line 342
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v2, "p_width"

    .line 345
    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v3

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v2, "p_height"

    .line 347
    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v3

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getThumbId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 349
    const-string/jumbo v2, "thumb_id"

    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getThumbId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_19
    const/16 v20, 0xcb

    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->url()Ljava/lang/String;

    move-result-object v21

    .line 353
    invoke-interface/range {v92 .. v92}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->size()J

    move-result-wide v22

    const/16 v24, 0x0

    .line 352
    invoke-static/range {v20 .. v25}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v86

    .line 354
    .local v86, "encryImageAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v93

    move-object/from16 v1, v86

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    move-object/from16 v0, v93

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v25    # "encryptImageExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v86    # "encryImageAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v92    # "encryptImageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    .end local v93    # "encryptImageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    :sswitch_a
    move-object/from16 v88, p0

    .line 358
    check-cast v88, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    .line 359
    .local v88, "encryptAudioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    new-instance v89, Ljava/util/ArrayList;

    invoke-direct/range {v89 .. v89}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v89, "encryptAudioList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-static/range {v88 .. v88}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Ljava/util/HashMap;

    move-result-object v31

    .line 361
    .local v31, "encryptAudioExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "duration"

    .line 362
    invoke-interface/range {v88 .. v88}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->duration()J

    move-result-wide v4

    .line 361
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-interface/range {v88 .. v88}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->volumns()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->toVolumnString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v124

    .line 364
    .local v124, "volumnStr":Ljava/lang/String;
    invoke-static/range {v124 .. v124}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 365
    const-string/jumbo v2, "volumns"

    move-object/from16 v0, v31

    move-object/from16 v1, v124

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1a
    const/16 v26, 0xcc

    invoke-interface/range {v88 .. v88}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->url()Ljava/lang/String;

    move-result-object v27

    .line 369
    invoke-interface/range {v88 .. v88}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->size()J

    move-result-wide v28

    const/16 v30, 0x0

    .line 368
    invoke-static/range {v26 .. v31}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v84

    .line 370
    .local v84, "encryAudioAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v89

    move-object/from16 v1, v84

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    move-object/from16 v0, v89

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v31    # "encryptAudioExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v84    # "encryAudioAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v88    # "encryptAudioContent":Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;
    .end local v89    # "encryptAudioList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v124    # "volumnStr":Ljava/lang/String;
    :sswitch_b
    move-object/from16 v94, p0

    .line 374
    check-cast v94, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;

    .line 375
    .local v94, "encryptVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    new-instance v95, Ljava/util/ArrayList;

    invoke-direct/range {v95 .. v95}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v95, "encryptVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-static/range {v94 .. v94}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Ljava/util/HashMap;

    move-result-object v37

    .line 377
    .local v37, "encryptVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v94

    invoke-static {v0, v1}, Libt;->a(Ljava/util/HashMap;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    .line 378
    const-string/jumbo v2, "bitrate"

    invoke-interface/range {v94 .. v94}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->bitrate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const/16 v32, 0xcd

    invoke-interface/range {v94 .. v94}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->url()Ljava/lang/String;

    move-result-object v33

    .line 381
    invoke-interface/range {v94 .. v94}, Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;->size()J

    move-result-wide v34

    const/16 v36, 0x0

    .line 380
    invoke-static/range {v32 .. v37}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v87

    .line 382
    .local v87, "encryVideoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v95

    move-object/from16 v1, v87

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    move-object/from16 v0, v95

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v37    # "encryptVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v87    # "encryVideoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v94    # "encryptVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptVideoContent;
    .end local v95    # "encryptVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    :sswitch_c
    move-object/from16 v90, p0

    .line 386
    check-cast v90, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;

    .line 387
    .local v90, "encryptCommonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    new-instance v91, Ljava/util/ArrayList;

    invoke-direct/range {v91 .. v91}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v91, "encryptCommonVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-static/range {v90 .. v90}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Ljava/util/HashMap;

    move-result-object v43

    .line 389
    .local v43, "encryptCommonVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v43

    move-object/from16 v1, v90

    invoke-static {v0, v1}, Libt;->a(Ljava/util/HashMap;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V

    .line 390
    const/16 v38, 0xce

    invoke-interface/range {v90 .. v90}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->url()Ljava/lang/String;

    move-result-object v39

    .line 391
    invoke-interface/range {v90 .. v90}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->size()J

    move-result-wide v40

    const/16 v42, 0x0

    .line 390
    invoke-static/range {v38 .. v43}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v85

    .line 392
    .local v85, "encryCommonVideoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v91

    move-object/from16 v1, v85

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    move-object/from16 v0, v91

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v43    # "encryptCommonVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v85    # "encryCommonVideoAttach":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v90    # "encryptCommonVideoContent":Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    .end local v91    # "encryptCommonVideoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    :sswitch_d
    move-object/from16 v113, p0

    .line 396
    check-cast v113, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 397
    .local v113, "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    new-instance v104, Ljava/util/ArrayList;

    invoke-direct/range {v104 .. v104}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v104, "markdownAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-interface/range {v113 .. v113}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 399
    invoke-static/range {v113 .. v113}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;)Ljava/util/HashMap;

    move-result-object v49

    .line 400
    .local v49, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v44, 0x4b0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    invoke-interface/range {v113 .. v113}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v50

    invoke-static/range {v44 .. v50}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v64

    .line 401
    .local v64, "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v104

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    .end local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    :cond_1b
    move-object/from16 v0, v104

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v104    # "markdownAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v113    # "robotMarkdownContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    :sswitch_e
    move-object/from16 v114, p0

    .line 406
    check-cast v114, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    .line 407
    .local v114, "robotMarkdownExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;
    new-instance v105, Ljava/util/ArrayList;

    invoke-direct/range {v105 .. v105}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v105, "markdownExAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->text()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 409
    invoke-static/range {v114 .. v114}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;)Ljava/util/HashMap;

    move-result-object v55

    .line 410
    .local v55, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "btn_orientation"

    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->btnOrientation()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-static {v0, v2, v3}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v2, "btn_json"

    .line 412
    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->btnDesList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;->convertBtnDesList2JsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 411
    move-object/from16 v0, v55

    invoke-static {v0, v2, v3}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "single_title"

    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-static {v0, v2, v3}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v2, "single_url"

    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->singleBtUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-static {v0, v2, v3}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v2, "hide_avatar"

    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->hideAvatar()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-static {v0, v2, v3}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v50, 0x4b1

    const/16 v51, 0x0

    const-wide/16 v52, 0x0

    const/16 v54, 0x0

    invoke-interface/range {v114 .. v114}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v56

    invoke-static/range {v50 .. v56}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v64

    .line 417
    .restart local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v105

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v55    # "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    :cond_1c
    move-object/from16 v0, v105

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v105    # "markdownExAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v114    # "robotMarkdownExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;
    :sswitch_f
    move-object/from16 v107, p0

    .line 422
    check-cast v107, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;

    .line 423
    .local v107, "markdownIconContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;
    new-instance v106, Ljava/util/ArrayList;

    invoke-direct/range {v106 .. v106}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v106, "markdownIconAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-interface/range {v107 .. v107}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;->text()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 425
    invoke-static/range {v107 .. v107}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;)Ljava/util/HashMap;

    move-result-object v49

    .line 426
    .restart local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v44, 0x4b2

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    invoke-interface/range {v107 .. v107}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v50

    invoke-static/range {v44 .. v50}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v64

    .line 427
    .restart local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v106

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    :cond_1d
    move-object/from16 v0, v106

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v106    # "markdownIconAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v107    # "markdownIconContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;
    :sswitch_10
    move-object/from16 v108, p0

    .line 432
    check-cast v108, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    .line 433
    .local v108, "markdownIconExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    invoke-static/range {v108 .. v108}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;)Ljava/util/HashMap;

    move-result-object v49

    .line 434
    .restart local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v44, 0x4b4

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    .line 435
    invoke-interface/range {v108 .. v108}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v50

    .line 436
    invoke-interface/range {v108 .. v108}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->nickMap()Ljava/util/Map;

    move-result-object v51

    invoke-interface/range {v108 .. v108}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->enhancedExtension()Ljava/util/Map;

    move-result-object v52

    .line 434
    invoke-static/range {v44 .. v52}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v64

    .line 437
    .restart local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v65, "attachmentModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    move-object/from16 v0, v65

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    move-object/from16 v0, v65

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 441
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/wukong/im/message/MessageImpl;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v2, v3, :cond_0

    .line 442
    invoke-interface/range {v108 .. v108}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->enhancedExtension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 443
    invoke-interface/range {v108 .. v108}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->enhancedExtension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "title"

    .line 444
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    .line 445
    .local v109, "model":Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;
    if-eqz v109, :cond_0

    .line 447
    new-instance v116, Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    invoke-direct/range {v116 .. v116}, Lcom/alibaba/wukong/idl/im/models/TextContentModel;-><init>()V

    .line 448
    .local v116, "textContentModel":Lcom/alibaba/wukong/idl/im/models/TextContentModel;
    invoke-interface/range {v108 .. v108}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->title()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v116

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->text:Ljava/lang/String;

    .line 449
    move-object/from16 v0, v109

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    move-object/from16 v0, v116

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->templateId:Ljava/lang/String;

    .line 450
    move-object/from16 v0, v109

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    move-object/from16 v0, v116

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->templateData:Ljava/util/List;

    .line 451
    move-object/from16 v0, v116

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    .line 453
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v77

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ContentModel;->contentType:Ljava/lang/Integer;

    goto/16 :goto_0

    .end local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    .end local v65    # "attachmentModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v108    # "markdownIconExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;
    .end local v109    # "model":Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;
    .end local v116    # "textContentModel":Lcom/alibaba/wukong/idl/im/models/TextContentModel;
    :sswitch_11
    move-object/from16 v73, p0

    .line 459
    check-cast v73, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 460
    .local v73, "commentContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    new-instance v72, Ljava/util/ArrayList;

    invoke-direct/range {v72 .. v72}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v72, "commentAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 462
    invoke-static/range {v73 .. v73}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;)Ljava/util/HashMap;

    move-result-object v49

    .line 463
    .restart local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v44, 0x578

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->authMediaParamMap()Ljava/util/Map;

    move-result-object v50

    invoke-static/range {v44 .. v50}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v64

    .line 464
    .restart local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v72

    move-object/from16 v1, v64

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v49    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v64    # "attachmentModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    :cond_1e
    move-object/from16 v0, v72

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .end local v72    # "commentAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v73    # "commentContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    :sswitch_12
    move-object/from16 v81, p0

    .line 469
    check-cast v81, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 470
    .local v81, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v80, "dingCardAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    invoke-interface/range {v81 .. v81}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->toMap()Ljava/util/Map;

    move-result-object v82

    .line 472
    .local v82, "dingCardExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v82 .. v82}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 473
    const/16 v56, 0x640

    const/16 v57, 0x0

    const-wide/16 v58, 0x0

    const/16 v60, 0x0

    invoke-interface/range {v81 .. v81}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->toMap()Ljava/util/Map;

    move-result-object v61

    invoke-static/range {v56 .. v61}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v83

    .line 474
    .local v83, "dingCardModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    move-object/from16 v0, v80

    move-object/from16 v1, v83

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v83    # "dingCardModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    :cond_1f
    move-object/from16 v0, v80

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .line 493
    .end local v80    # "dingCardAttachmentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .end local v81    # "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    .end local v82    # "dingCardExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v78    # "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    .restart local v103    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/MessageContent;>;"
    .restart local v111    # "multipleContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_20
    move-object/from16 v0, v78

    move-object/from16 v1, v77

    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    goto/16 :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_8
        0xca -> :sswitch_7
        0xcb -> :sswitch_9
        0xcc -> :sswitch_a
        0xcd -> :sswitch_b
        0xce -> :sswitch_c
        0x4b0 -> :sswitch_d
        0x4b1 -> :sswitch_e
        0x4b2 -> :sswitch_f
        0x4b4 -> :sswitch_10
        0x515 -> :sswitch_5
        0x578 -> :sswitch_11
        0x640 -> :sswitch_12
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;
    .locals 3
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "messageId"    # J
    .param p3, "toConversationId"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "templateId"    # I
    .param p6, "xpnInfo"    # Lcom/alibaba/wukong/im/XPNInfo;

    .prologue
    .line 656
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;-><init>()V

    .line 657
    .local v0, "model":Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;
    iput-object p0, v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;->uuid:Ljava/lang/String;

    .line 658
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;->messageId:Ljava/lang/Long;

    .line 659
    iput-object p3, v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;->toConversationId:Ljava/lang/String;

    .line 660
    iput-object p4, v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;->nickName:Ljava/lang/String;

    .line 662
    if-lez p5, :cond_1

    .line 664
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;-><init>()V

    .line 665
    .local v1, "xpn":Lcom/alibaba/wukong/idl/im/models/XpnPushModel;
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->templateId:Ljava/lang/Integer;

    .line 666
    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;->xpnModel:Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    .line 672
    .end local v1    # "xpn":Lcom/alibaba/wukong/idl/im/models/XpnPushModel;
    :cond_0
    :goto_0
    return-object v0

    .line 667
    :cond_1
    if-eqz p6, :cond_0

    .line 669
    invoke-static {p6}, Libt;->a(Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ForwardMessageModel;->xpnModel:Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/SendMessageModel;
    .locals 6
    .param p0, "object"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    const/4 v3, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return-object v3

    .line 66
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;-><init>()V

    .line 67
    .local v1, "model":Lcom/alibaba/wukong/idl/im/models/SendMessageModel;
    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->uuid:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 69
    .local v0, "conversationObj":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->conversationId:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Message$MessageType;->typeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->type:Ljava/lang/Integer;

    .line 71
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->creatorType:Ljava/lang/Integer;

    .line 72
    iget-wide v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->tag:Ljava/lang/Long;

    .line 73
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->extension:Ljava/util/Map;

    .line 74
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    sget-object v4, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v3, v4, :cond_5

    .line 75
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptContent:Lcom/alibaba/wukong/im/MessageContent;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3, v4, v5, p0}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 79
    :goto_1
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->senderName:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->nickName:Ljava/lang/String;

    .line 80
    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPriority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->msgPriority:Ljava/lang/Integer;

    .line 81
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mReceiverUids:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mReceiverUids:Ljava/util/List;

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->receivers:Ljava/util/List;

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExcludeUids:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 85
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExcludeUids:Ljava/util/List;

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->excludeIds:Ljava/util/List;

    .line 87
    :cond_3
    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    if-lez v3, :cond_6

    .line 89
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;-><init>()V

    .line 90
    .local v2, "xpn":Lcom/alibaba/wukong/idl/im/models/XpnPushModel;
    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->templateId:Ljava/lang/Integer;

    .line 91
    iput-object v2, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->xpnModel:Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    .end local v2    # "xpn":Lcom/alibaba/wukong/idl/im/models/XpnPushModel;
    :cond_4
    :goto_2
    move-object v3, v1

    .line 96
    goto :goto_0

    .line 77
    :cond_5
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    iget-object v5, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v3, v4, v5, p0}, Libt;->a(Lcom/alibaba/wukong/im/MessageContent;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/im/message/MessageImpl;)Lcom/alibaba/wukong/idl/im/models/ContentModel;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    goto :goto_1

    .line 92
    :cond_6
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    if-eqz v3, :cond_4

    .line 94
    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mXPNInfo:Lcom/alibaba/wukong/im/XPNInfo;

    invoke-static {v3}, Libt;->a(Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/wukong/idl/im/models/SendMessageModel;->xpnModel:Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    goto :goto_2
.end method

.method static a(Lcom/alibaba/wukong/im/XPNInfo;)Lcom/alibaba/wukong/idl/im/models/XpnPushModel;
    .locals 2
    .param p0, "xpnInfo"    # Lcom/alibaba/wukong/im/XPNInfo;

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 103
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;-><init>()V

    .line 104
    .local v0, "xpnPushModel":Lcom/alibaba/wukong/idl/im/models/XpnPushModel;
    iget-object v1, p0, Lcom/alibaba/wukong/im/XPNInfo;->params:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->params:Ljava/util/Map;

    .line 105
    iget-object v1, p0, Lcom/alibaba/wukong/im/XPNInfo;->sound:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->sound:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/alibaba/wukong/im/XPNInfo;->isXpnOff:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->isXpnOff:Ljava/lang/Integer;

    .line 107
    iget-object v1, p0, Lcom/alibaba/wukong/im/XPNInfo;->alertContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->alertContent:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/alibaba/wukong/im/XPNInfo;->templateId:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->templateId:Ljava/lang/Integer;

    .line 109
    iget-object v1, p0, Lcom/alibaba/wukong/im/XPNInfo;->msgText:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/XpnPushModel;->msgText:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(ILcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    .locals 17
    .param p0, "type"    # I
    .param p1, "attach"    # Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .prologue
    .line 1242
    const/4 v2, 0x0

    .line 1243
    .local v2, "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1244
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "isEncrypt"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v16, 0x1

    .line 1245
    .local v16, "isEncrypt":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "oid"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v10

    .line 1246
    .local v10, "orgId":J
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "appId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1247
    .local v12, "appId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "priority"

    .line 1248
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1247
    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v13

    .line 1249
    .local v13, "priority":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "s_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1250
    .local v14, "spaceId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "f_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1251
    .local v15, "fileId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "f_name"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1252
    .local v5, "fileName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "f_type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1253
    .local v8, "fileType":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "f_size"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v6

    .line 1254
    .local v6, "size":J
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    .end local v2    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    move/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .restart local v2    # "content":Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;
    move-object v9, v2

    .line 1255
    invoke-virtual/range {v9 .. v16}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;->setEncryptFileInfo(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1257
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "size":J
    .end local v8    # "fileType":Ljava/lang/String;
    .end local v10    # "orgId":J
    .end local v12    # "appId":Ljava/lang/String;
    .end local v13    # "priority":I
    .end local v14    # "spaceId":Ljava/lang/String;
    .end local v15    # "fileId":Ljava/lang/String;
    .end local v16    # "isEncrypt":Z
    :cond_0
    return-object v2

    .line 1244
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;
    .locals 5
    .param p0, "attachmentModel"    # Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .prologue
    const/4 v2, 0x0

    .line 567
    if-eqz p0, :cond_0

    iget-object v3, p0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-object v2

    .line 570
    :cond_1
    iget-object v3, p0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "markdown"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 574
    iget-object v2, p0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v3, "title"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 23
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .param p1, "openId"    # J
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 692
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    if-nez v2, :cond_1

    .line 693
    :cond_0
    const/16 v16, 0x0

    .line 750
    :goto_0
    return-object v16

    .line 695
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 697
    .local v15, "baseModel":Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v16

    .line 698
    .local v16, "obj":Lcom/alibaba/wukong/im/message/MessageImpl;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 699
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->messageId:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 700
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->type:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/wukong/im/Message$MessageType;->fromValue(I)Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 701
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->creatorType:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/wukong/im/Message$CreatorType;->fromValue(I)Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 702
    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 703
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->recallStatus:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 704
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->shieldStatus:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 705
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->createdAt:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 706
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    if-eqz v2, :cond_2

    .line 707
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 708
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->tag:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderVersion:J

    .line 8816
    :cond_2
    if-eqz v15, :cond_3

    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    if-nez v2, :cond_a

    .line 8817
    :cond_3
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl;

    const/4 v2, -0x1

    invoke-direct {v3, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 712
    :cond_4
    :goto_1
    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->receiverMessageStatus:Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;

    move-object/from16 v17, v0

    .line 716
    .local v17, "receiverModel":Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    if-eqz v17, :cond_6

    .line 717
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;->readStatus:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v19

    .line 718
    .local v19, "status":I
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/alibaba/wukong/im/Message$ReadStatus;->READ:Lcom/alibaba/wukong/im/Message$ReadStatus;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Message$ReadStatus;->typeValue()I

    move-result v2

    move/from16 v0, v19

    if-ne v0, v2, :cond_3a

    :cond_5
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 721
    .end local v19    # "status":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/MessageModel;->senderMessageStatus:Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;

    move-object/from16 v18, v0

    .line 722
    .local v18, "senderModel":Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;
    if-eqz v18, :cond_7

    .line 723
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_7

    .line 724
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->unReadCount:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 725
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;->totalCount:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 727
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 728
    invoke-static {}, Liaf;->c()J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 733
    :cond_7
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->tag:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    .line 734
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->extension:Ljava/util/Map;

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 735
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->memberTag:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 736
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->memberExtension:Ljava/util/Map;

    invoke-static {v2}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 737
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    if-eqz v2, :cond_8

    .line 738
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atOpenIds:Ljava/util/Map;

    invoke-static {v2}, Libt;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    .line 739
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atOpenIdExList:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/wukong/im/OpenIdExObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lidz;->a(Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 740
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->atMeStatus:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/wukong/im/AtMeStatusObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lidz;->a(Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 742
    :cond_8
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_9

    .line 743
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 745
    :cond_9
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->compensateType:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    const/16 v2, 0x8

    :goto_3
    move-object/from16 v0, v16

    iput v2, v0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 748
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/wukong/im/message/MessageImpl;->decrypt()Z

    .line 749
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    goto/16 :goto_0

    .line 8819
    .end local v17    # "receiverModel":Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    .end local v18    # "senderModel":Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;
    :cond_a
    iget-object v14, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 8820
    const/4 v3, 0x0

    .line 9795
    if-eqz v15, :cond_b

    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    if-nez v2, :cond_c

    .line 9796
    :cond_b
    const/4 v2, -0x1

    move v13, v2

    .line 8823
    :goto_4
    sparse-switch v13, :sswitch_data_0

    .line 9209
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9210
    if-nez v2, :cond_32

    .line 9211
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl;

    const/4 v2, -0x1

    invoke-direct {v3, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    goto/16 :goto_1

    .line 9798
    :cond_c
    iget-object v2, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->content:Lcom/alibaba/wukong/idl/im/models/ContentModel;

    .line 9799
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->contentType:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    .line 9800
    iget-object v5, v15, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->creatorType:Ljava/lang/Integer;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v5

    .line 9801
    sget-object v6, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/Message$CreatorType;->typeValue()I

    move-result v6

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 9805
    iget-object v5, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    if-eqz v5, :cond_d

    iget-object v5, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 9806
    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9807
    if-eqz v2, :cond_d

    iget-object v5, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    if-eqz v5, :cond_d

    .line 9808
    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    move v13, v2

    goto :goto_4

    :cond_d
    move v13, v4

    .line 9812
    goto :goto_4

    .line 8825
    :sswitch_0
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->textContent:Lcom/alibaba/wukong/idl/im/models/TextContentModel;

    .line 8826
    if-eqz v2, :cond_4

    .line 8827
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;

    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->text:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->templateId:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/TextContentModel;->templateData:Ljava/util/List;

    invoke-direct {v3, v4, v5, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$TextContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    .line 8832
    :sswitch_1
    iget-object v12, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->photoContent:Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;

    .line 8833
    if-eqz v12, :cond_4

    .line 8834
    iget-object v2, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8835
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    iget-object v4, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->picSize:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iget-object v6, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->filename:Ljava/lang/String;

    iget-object v7, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->type:Ljava/lang/Integer;

    .line 8836
    invoke-static {v7}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v7

    iget-object v8, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->fileType:Ljava/lang/Integer;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v8

    iget-object v9, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->picBytes:[B

    iget-object v10, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->orientation:Ljava/lang/Integer;

    .line 8837
    invoke-static {v10}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v10

    iget-object v11, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->extension:Ljava/util/Map;

    invoke-static {v11}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;II[BILjava/util/Map;)V

    .line 8838
    iget-object v3, v12, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->authMedia:Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 8839
    if-eqz v3, :cond_e

    .line 8840
    iget-object v4, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    invoke-static {v4}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 8841
    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;->mAuthCode:Ljava/lang/String;

    :cond_e
    move-object v3, v2

    .line 8851
    goto/16 :goto_1

    .line 8855
    :sswitch_2
    iget-object v9, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->audioContent:Lcom/alibaba/wukong/idl/im/models/AudioContentModel;

    .line 8856
    if-eqz v9, :cond_4

    .line 8857
    iget-object v2, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8858
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;

    iget-object v4, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->duration:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iget-object v6, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->audioVolumns:Ljava/util/List;

    iget-object v7, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->audioBytes:[B

    iget-object v8, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->opusAudioBytes:[B

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;[B[B)V

    .line 8860
    iget-object v3, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->extension:Ljava/util/Map;

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;->mExtension:Ljava/util/Map;

    .line 8861
    iget-object v3, v9, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->authMedia:Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 8862
    if-eqz v3, :cond_f

    .line 8863
    iget-object v4, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    invoke-static {v4}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 8864
    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;->mAuthCode:Ljava/lang/String;

    :cond_f
    move-object v3, v2

    .line 8874
    goto/16 :goto_1

    .line 8877
    :sswitch_3
    iget-object v7, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->fileContent:Lcom/alibaba/wukong/idl/im/models/FileContentModel;

    .line 8878
    if-eqz v7, :cond_4

    .line 8879
    iget-object v2, v7, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8880
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;

    iget-object v4, v7, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->fileSize:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iget-object v6, v7, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->fileName:Ljava/lang/String;

    iget-object v7, v7, Lcom/alibaba/wukong/idl/im/models/FileContentModel;->fileType:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$FileContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 8882
    goto/16 :goto_1

    .line 8885
    :sswitch_4
    new-instance v12, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    const/4 v2, 0x5

    invoke-direct {v12, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(I)V

    .line 8886
    iget-object v11, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->photoContent:Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;

    .line 8887
    if-eqz v11, :cond_10

    .line 8888
    iget-object v2, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8889
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;

    iget-object v4, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->picSize:Ljava/lang/Long;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iget-object v6, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->filename:Ljava/lang/String;

    iget-object v7, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->type:Ljava/lang/Integer;

    .line 8890
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->fileType:Ljava/lang/Integer;

    invoke-static {v8}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v8

    iget-object v9, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->picBytes:[B

    iget-object v10, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->orientation:Ljava/lang/Integer;

    .line 8891
    invoke-static {v10}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v10

    iget-object v11, v11, Lcom/alibaba/wukong/idl/im/models/PhotoContentModel;->extension:Ljava/util/Map;

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ImageContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;II[BILjava/util/Map;)V

    .line 8889
    invoke-virtual {v12, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->add(Lcom/alibaba/wukong/im/MessageContent;)V

    .line 8893
    :cond_10
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->audioContent:Lcom/alibaba/wukong/idl/im/models/AudioContentModel;

    .line 8894
    if-eqz v2, :cond_11

    .line 8895
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->mediaId:Ljava/lang/String;

    invoke-static {v3}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8896
    new-instance v4, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;

    iget-object v5, v2, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->duration:Ljava/lang/Long;

    invoke-static {v5}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/AudioContentModel;->audioVolumns:Ljava/util/List;

    invoke-direct {v4, v3, v6, v7, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$AudioContentImpl;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v12, v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->add(Lcom/alibaba/wukong/im/MessageContent;)V

    :cond_11
    move-object v3, v12

    .line 8900
    goto/16 :goto_1

    .line 10501
    :sswitch_5
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 10502
    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 10503
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 10504
    if-eqz v2, :cond_16

    .line 10505
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    invoke-static {v3}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10506
    iget-object v7, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 10507
    if-nez v7, :cond_12

    const/4 v4, 0x0

    .line 10508
    :goto_5
    if-nez v7, :cond_13

    const/4 v5, 0x0

    .line 10509
    :goto_6
    if-nez v7, :cond_14

    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10510
    const/16 v2, 0x515

    if-ne v13, v2, :cond_15

    .line 10511
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;

    .line 10512
    invoke-static {v7}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_8
    move-object v3, v2

    .line 8904
    goto/16 :goto_1

    .line 10507
    :cond_12
    const-string/jumbo v2, "title"

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    goto :goto_5

    .line 10508
    :cond_13
    const-string/jumbo v2, "text"

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v2

    goto :goto_6

    .line 10509
    :cond_14
    const-string/jumbo v2, "picUrl"

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_7

    .line 10514
    :cond_15
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    .line 10515
    invoke-static {v7}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    .line 10519
    :cond_16
    const/4 v2, 0x0

    goto :goto_8

    .line 8907
    :sswitch_6
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 8908
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 8909
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 8910
    if-eqz v20, :cond_3e

    .line 8911
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8912
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->size:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 8913
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    move-object/from16 v21, v0

    .line 8914
    if-nez v21, :cond_19

    const/4 v6, 0x0

    .line 8915
    :goto_9
    if-nez v21, :cond_1a

    const/4 v7, 0x0

    .line 8916
    :goto_a
    if-nez v21, :cond_1b

    const-wide/16 v8, 0x0

    .line 8917
    :goto_b
    if-nez v21, :cond_1c

    const/4 v10, 0x0

    .line 8918
    :goto_c
    if-nez v21, :cond_1d

    const/4 v11, 0x0

    .line 8919
    :goto_d
    if-nez v21, :cond_1e

    const-wide/16 v12, 0x0

    .line 8920
    :goto_e
    if-nez v21, :cond_1f

    const/4 v2, 0x0

    :goto_f
    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 8921
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;

    invoke-direct/range {v2 .. v14}, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIIJLjava/lang/String;)V

    .line 8923
    invoke-static/range {v21 .. v21}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mExtension:Ljava/util/Map;

    .line 8925
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    .line 8926
    if-eqz v4, :cond_18

    .line 8927
    const-string/jumbo v3, "videoAuthMedia"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 8928
    if-eqz v3, :cond_17

    .line 8929
    iget-object v5, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    invoke-static {v5}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 8930
    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mAuthCode:Ljava/lang/String;

    .line 8932
    :cond_17
    const-string/jumbo v3, "picAuthMedia"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 8933
    if-eqz v3, :cond_18

    .line 8934
    iget-object v4, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    invoke-static {v4}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    .line 8935
    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$VideoContentImpl;->mPicAuthCode:Ljava/lang/String;

    :cond_18
    :goto_10
    move-object v3, v2

    .line 8951
    goto/16 :goto_1

    .line 8914
    :cond_19
    const-string/jumbo v2, "fileName"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    goto :goto_9

    .line 8915
    :cond_1a
    const-string/jumbo v2, "fileType"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    goto :goto_a

    .line 8916
    :cond_1b
    const-string/jumbo v2, "duration"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v8

    goto/16 :goto_b

    .line 8917
    :cond_1c
    const-string/jumbo v2, "width"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_c

    .line 8918
    :cond_1d
    const-string/jumbo v2, "height"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_d

    .line 8919
    :cond_1e
    const-string/jumbo v2, "bitrate"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v12

    goto/16 :goto_e

    .line 8920
    :cond_1f
    const-string/jumbo v2, "picUrl"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_f

    .line 8955
    :sswitch_7
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 8956
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 8957
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 8958
    if-eqz v13, :cond_3d

    .line 8959
    iget-object v2, v13, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8960
    iget-object v2, v13, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->size:Ljava/lang/Long;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 8961
    iget-object v14, v13, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 8962
    if-nez v14, :cond_22

    const/4 v6, 0x0

    .line 8963
    :goto_11
    if-nez v14, :cond_23

    const/4 v7, 0x0

    .line 8964
    :goto_12
    if-nez v14, :cond_24

    const-wide/16 v8, 0x0

    .line 8965
    :goto_13
    if-nez v14, :cond_25

    const/4 v10, 0x0

    .line 8966
    :goto_14
    if-nez v14, :cond_26

    const/4 v11, 0x0

    .line 8967
    :goto_15
    if-nez v14, :cond_27

    const/4 v2, 0x0

    :goto_16
    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 8968
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;

    invoke-direct/range {v2 .. v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILjava/lang/String;)V

    .line 8970
    invoke-static {v14}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mExtension:Ljava/util/Map;

    .line 8972
    iget-object v4, v13, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    .line 8973
    if-eqz v4, :cond_21

    .line 8974
    const-string/jumbo v3, "videoAuthMedia"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 8975
    if-eqz v3, :cond_20

    .line 8976
    iget-object v5, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    invoke-static {v5}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mAuthUrl:Ljava/lang/String;

    .line 8977
    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mAuthCode:Ljava/lang/String;

    .line 8979
    :cond_20
    const-string/jumbo v3, "picAuthMedia"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 8980
    if-eqz v3, :cond_21

    .line 8981
    iget-object v4, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    invoke-static {v4}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mPicAuthUrl:Ljava/lang/String;

    .line 8982
    iget-object v3, v3, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommonVideoContentImpl;->mPicAuthCode:Ljava/lang/String;

    :cond_21
    :goto_17
    move-object v3, v2

    .line 8998
    goto/16 :goto_1

    .line 8962
    :cond_22
    const-string/jumbo v2, "fileName"

    invoke-interface {v14, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v6, v2

    goto :goto_11

    .line 8963
    :cond_23
    const-string/jumbo v2, "fileType"

    invoke-interface {v14, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    goto :goto_12

    .line 8964
    :cond_24
    const-string/jumbo v2, "duration"

    invoke-interface {v14, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_13

    .line 8965
    :cond_25
    const-string/jumbo v2, "width"

    invoke-interface {v14, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_14

    .line 8966
    :cond_26
    const-string/jumbo v2, "height"

    invoke-interface {v14, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_15

    .line 8967
    :cond_27
    const-string/jumbo v2, "picUrl"

    invoke-interface {v14, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_16

    .line 9001
    :sswitch_8
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9002
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9003
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9004
    if-eqz v2, :cond_4

    .line 9005
    iget-object v8, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 9006
    if-eqz v8, :cond_4

    .line 9007
    const-string/jumbo v3, "picType"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v4

    .line 9008
    const-string/jumbo v3, "orientation"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v7

    .line 9009
    const-string/jumbo v3, "p_width"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v5

    .line 9010
    const-string/jumbo v3, "p_height"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v6

    .line 9011
    const-string/jumbo v3, "thumb_id"

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 9012
    invoke-static {v13, v2}, Libt;->a(ILcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    move-result-object v3

    .line 9013
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptImageContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;IIIILjava/lang/String;)V

    move-object v3, v2

    goto/16 :goto_1

    .line 9019
    :sswitch_9
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9020
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9021
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9022
    if-eqz v2, :cond_4

    .line 9023
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 9024
    if-eqz v4, :cond_4

    .line 9025
    const-string/jumbo v3, "duration"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v6

    .line 9026
    const-string/jumbo v3, "volumns"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9027
    invoke-static {v13, v2}, Libt;->a(ILcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    move-result-object v2

    .line 9029
    invoke-static {v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl;->getVolumnList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 9030
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;

    invoke-direct {v3, v2, v6, v7, v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptAudioContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;JLjava/util/List;)V

    goto/16 :goto_1

    .line 9037
    :sswitch_a
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9038
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9039
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9040
    if-eqz v2, :cond_4

    .line 9041
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 9042
    if-eqz v4, :cond_4

    .line 9043
    const-string/jumbo v3, "duration"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v6

    .line 9044
    const-string/jumbo v3, "picUrl"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9045
    const-string/jumbo v3, "width"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v8

    .line 9046
    const-string/jumbo v3, "height"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v9

    .line 9047
    const/16 v3, 0xcd

    if-ne v13, v3, :cond_28

    const-string/jumbo v3, "bitrate"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ligb;->f(Ljava/lang/String;)I

    move-result v3

    move v10, v3

    .line 9049
    :goto_18
    invoke-static {v13, v2}, Libt;->a(ILcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;

    move-result-object v4

    .line 9051
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptContentImpl;Ljava/lang/String;JII)V

    .line 9052
    const/16 v2, 0xcd

    if-ne v13, v2, :cond_4

    .line 9053
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;

    invoke-direct {v2, v3, v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptVideoContentImpl;-><init>(Lcom/alibaba/wukong/im/message/MessageContentImpl$EncryptCommonVideoContentImpl;I)V

    move-object v3, v2

    goto/16 :goto_1

    .line 9047
    :cond_28
    const/4 v3, 0x0

    move v10, v3

    goto :goto_18

    .line 9062
    :sswitch_b
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9063
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9064
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9065
    if-eqz v2, :cond_3c

    .line 9066
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    invoke-static {v3}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9067
    iget-object v9, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 9068
    if-nez v9, :cond_29

    const-wide/16 v4, 0x0

    .line 9069
    :goto_19
    if-nez v9, :cond_2a

    const-wide/16 v6, 0x0

    .line 9070
    :goto_1a
    if-nez v9, :cond_2b

    const/4 v8, 0x0

    .line 9071
    :goto_1b
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;-><init>(Ljava/lang/String;DDLjava/lang/String;)V

    .line 9072
    invoke-static {v9}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$GeoContentImpl;->mExtension:Ljava/util/Map;

    :goto_1c
    move-object v3, v2

    .line 9075
    goto/16 :goto_1

    .line 9068
    :cond_29
    const-string/jumbo v2, "latitude"

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->h(Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_19

    .line 9069
    :cond_2a
    const-string/jumbo v2, "longitude"

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ligb;->h(Ljava/lang/String;)D

    move-result-wide v6

    goto :goto_1a

    .line 9070
    :cond_2b
    const-string/jumbo v2, "locationName"

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    goto :goto_1b

    .line 9078
    :sswitch_c
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9079
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9080
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9081
    if-eqz v2, :cond_4

    .line 9082
    invoke-static {v2}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v3

    goto/16 :goto_1

    .line 9087
    :sswitch_d
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9088
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9089
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9090
    if-eqz v2, :cond_4

    .line 9091
    iget-object v6, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 9092
    if-eqz v6, :cond_4

    .line 9093
    invoke-static {v2}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v7

    .line 9094
    if-eqz v7, :cond_4

    .line 9095
    new-instance v8, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    invoke-direct {v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;-><init>()V

    .line 9096
    const-string/jumbo v2, "btn_orientation"

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9097
    const-string/jumbo v3, "btn_json"

    .line 9098
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;->parseBtnDesJsonString2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 9099
    const-string/jumbo v3, "single_title"

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9100
    const-string/jumbo v4, "single_url"

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 9101
    const-string/jumbo v5, "hide_avatar"

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9102
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->text()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->text(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->title()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->title(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v8

    .line 9103
    invoke-virtual {v8, v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->extension(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->btnOrientation(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v2

    .line 9104
    invoke-virtual {v2, v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->btnBtnDesList(Ljava/util/List;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->singleBtnTitle(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v2

    .line 9105
    invoke-virtual {v2, v4}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->singleBtnUrl(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->hideAvatar(Ljava/lang/String;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v2

    .line 9106
    invoke-virtual {v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->authMediaParamMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->authMediaMap(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl$Builder;->build()Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownExContentImpl;

    move-result-object v3

    goto/16 :goto_1

    .line 9113
    :sswitch_e
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9114
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9115
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9116
    if-eqz v2, :cond_4

    .line 9117
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    .line 9118
    const/16 v5, 0x4b2

    if-ne v4, v5, :cond_4

    .line 9119
    invoke-static {v2}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v2

    .line 9120
    if-eqz v2, :cond_4

    .line 9121
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->text()Ljava/lang/String;

    move-result-object v4

    .line 9122
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->extension()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->authMediaParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 9129
    :sswitch_f
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9130
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9131
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9132
    if-eqz v8, :cond_4

    .line 9133
    iget-object v2, v8, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v2

    .line 9134
    const/16 v4, 0x4b4

    if-ne v2, v4, :cond_4

    .line 9135
    invoke-static {v8}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v6

    .line 9136
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->text()Ljava/lang/String;

    move-result-object v3

    .line 9137
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->extension()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 9138
    invoke-virtual {v6}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->authMediaParamMap()Ljava/util/Map;

    move-result-object v6

    iget-object v7, v8, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->nickMap:Ljava/util/Map;

    iget-object v8, v8, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->enhancedExtension:Ljava/util/Map;

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownIconExContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object v3, v2

    goto/16 :goto_1

    .line 9144
    :sswitch_10
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9145
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9146
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9147
    if-eqz v2, :cond_4

    .line 9148
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    .line 9149
    const/16 v5, 0x578

    if-ne v4, v5, :cond_4

    .line 9150
    invoke-static {v2}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/AttachmentModel;)Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;

    move-result-object v2

    .line 9151
    if-eqz v2, :cond_4

    .line 9152
    new-instance v3, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommentContentImp;

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->text()Ljava/lang/String;

    move-result-object v4

    .line 9153
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->extension()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$RobotMarkdownContentImpl;->authMediaParamMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CommentContentImp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 9160
    :sswitch_11
    iget-object v7, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9161
    if-eqz v7, :cond_2c

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 9162
    :cond_2c
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 9165
    :cond_2d
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9166
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    if-nez v3, :cond_2e

    .line 9167
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 9169
    :cond_2e
    iget-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9170
    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v4, "summary"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9171
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 9172
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 9176
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_31

    .line 9177
    const/4 v4, 0x1

    move v6, v4

    :goto_1d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_31

    .line 9178
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9179
    iget-object v5, v4, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    if-eqz v5, :cond_30

    .line 9180
    iget-object v5, v4, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v10, "message"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9181
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_30

    .line 9184
    invoke-static {v5}, Libt;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v10

    .line 9185
    if-eqz v10, :cond_2f

    .line 9186
    iget-object v5, v4, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    const-string/jumbo v11, "senderName"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9187
    const-string/jumbo v11, "senderName"

    invoke-interface {v10, v11, v5}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 9188
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9190
    :cond_2f
    iget-object v4, v4, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9177
    :cond_30
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1d

    .line 9194
    :cond_31
    new-instance v4, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;

    invoke-direct {v4, v3, v2, v8, v9}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    move-object v3, v4

    .line 9195
    goto/16 :goto_1

    .line 9197
    :sswitch_12
    iget-object v2, v14, Lcom/alibaba/wukong/idl/im/models/ContentModel;->attachments:Ljava/util/List;

    .line 9198
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 9199
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9200
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 9201
    iget-object v4, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    invoke-static {v4}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    .line 9202
    const/16 v5, 0x640

    if-ne v4, v5, :cond_4

    .line 9203
    iget-object v2, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    invoke-static {v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;->fromMap2Object(Ljava/util/Map;)Lcom/alibaba/wukong/im/message/MessageContentImpl$DingCardContentImpl;

    move-result-object v3

    goto/16 :goto_1

    .line 9214
    :cond_32
    new-instance v12, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;

    invoke-direct {v12, v13}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;-><init>(I)V

    .line 9216
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_33
    :goto_1e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    .line 9217
    if-eqz v11, :cond_33

    .line 9219
    iget-object v2, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->type:Ljava/lang/Integer;

    invoke-static {v2}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v4

    .line 9220
    const/16 v2, 0x66

    if-eq v4, v2, :cond_34

    const/16 v2, 0x10

    if-ne v4, v2, :cond_38

    .line 9221
    :cond_34
    iget-object v2, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9222
    iget-object v7, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    .line 9223
    if-nez v7, :cond_35

    const/4 v4, 0x0

    .line 9224
    :goto_1f
    if-nez v7, :cond_36

    const/4 v5, 0x0

    .line 9225
    :goto_20
    if-nez v7, :cond_37

    const/4 v2, 0x0

    :goto_21
    invoke-static {v2}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9226
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9233
    :goto_22
    invoke-virtual {v12, v2}, Lcom/alibaba/wukong/im/message/MessageContentImpl$MultiMessageContentImpl;->add(Lcom/alibaba/wukong/im/MessageContent;)V

    goto :goto_1e

    .line 9223
    :cond_35
    const-string/jumbo v2, "title"

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    goto :goto_1f

    .line 9224
    :cond_36
    const-string/jumbo v2, "text"

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v2

    goto :goto_20

    .line 9225
    :cond_37
    const-string/jumbo v2, "picUrl"

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_21

    .line 9229
    :cond_38
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;

    iget-object v5, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->url:Ljava/lang/String;

    iget-object v3, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->size:Ljava/lang/Long;

    .line 9230
    invoke-static {v3}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v6

    iget-object v3, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->extension:Ljava/util/Map;

    invoke-static {v3}, Liea;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    iget-object v9, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->authMediaMap:Ljava/util/Map;

    iget-object v10, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->nickMap:Ljava/util/Map;

    iget-object v11, v11, Lcom/alibaba/wukong/idl/im/models/AttachmentModel;->enhancedExtension:Ljava/util/Map;

    move v3, v13

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$CustomMessageContentImpl;-><init>(IILjava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_22

    :cond_39
    move-object v3, v12

    .line 9235
    goto/16 :goto_1

    .line 718
    .restart local v17    # "receiverModel":Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    .restart local v19    # "status":I
    :cond_3a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 745
    .end local v19    # "status":I
    .restart local v18    # "senderModel":Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;
    :cond_3b
    const/4 v2, 0x0

    goto/16 :goto_3

    .end local v17    # "receiverModel":Lcom/alibaba/wukong/idl/im/models/ReceiverMessageStatusModel;
    .end local v18    # "senderModel":Lcom/alibaba/wukong/idl/im/models/SenderMessageStatusModel;
    :cond_3c
    move-object v2, v3

    goto/16 :goto_1c

    :cond_3d
    move-object v2, v3

    goto/16 :goto_17

    :cond_3e
    move-object v2, v3

    goto/16 :goto_10

    .line 8823
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_b
        0xca -> :sswitch_7
        0xcb -> :sswitch_8
        0xcc -> :sswitch_9
        0xcd -> :sswitch_a
        0xce -> :sswitch_a
        0xfb -> :sswitch_1
        0xfc -> :sswitch_2
        0xfd -> :sswitch_6
        0xfe -> :sswitch_7
        0x4b0 -> :sswitch_c
        0x4b1 -> :sswitch_d
        0x4b2 -> :sswitch_e
        0x4b4 -> :sswitch_f
        0x515 -> :sswitch_5
        0x578 -> :sswitch_10
        0x5dc -> :sswitch_11
        0x640 -> :sswitch_12
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 614
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p0, "openIdExObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    :cond_0
    const/4 v0, 0x0

    .line 1408
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/im/MessageContent$EncryptContent;)Ljava/util/HashMap;
    .locals 4
    .param p0, "encryptContent"    # Lcom/alibaba/wukong/im/MessageContent$EncryptContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptContent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 580
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "oid"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->orgId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const-string/jumbo v1, "appId"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_0
    const-string/jumbo v1, "priority"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->priority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->spaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    const-string/jumbo v1, "s_id"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->spaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 589
    const-string/jumbo v1, "f_id"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_2
    const-string/jumbo v2, "isEncrypt"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->isEncrypt()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 593
    const-string/jumbo v1, "f_name"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 596
    const-string/jumbo v1, "f_type"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->fileType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_4
    const-string/jumbo v1, "f_size"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$EncryptContent;->size()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-object v0

    .line 591
    :cond_5
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;)Ljava/util/HashMap;
    .locals 3
    .param p0, "markdownContent"    # Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 556
    .local v0, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 557
    const-string/jumbo v1, "markdown"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->text()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string/jumbo v1, "title"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Libt;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    invoke-interface {p0}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 563
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/alibaba/wukong/im/MessageContent;I)Ljava/util/List;
    .locals 10
    .param p0, "messageContent"    # Lcom/alibaba/wukong/im/MessageContent;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/MessageContent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    move-object v7, p0

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 524
    .local v7, "link":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v8, "linkedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/AttachmentModel;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v5, "linkedExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->extension()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 529
    :cond_0
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    const-string/jumbo v0, "title"

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_1
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 533
    const-string/jumbo v0, "text"

    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_2
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 536
    .local v9, "picMediaId":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 537
    const-string/jumbo v0, "picUrl"

    invoke-virtual {v5, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_3
    const/16 v0, 0x515

    if-ne p1, v0, :cond_4

    const/16 v0, 0x66

    :goto_0
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Libt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->size()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 540
    invoke-static/range {v0 .. v5}, Libt;->a(ILjava/lang/String;JZLjava/util/Map;)Lcom/alibaba/wukong/idl/im/models/AttachmentModel;

    move-result-object v6

    .line 544
    .local v6, "attachModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    return-object v8

    .end local v6    # "attachModel":Lcom/alibaba/wukong/idl/im/models/AttachmentModel;
    :cond_4
    move v0, p1

    .line 540
    goto :goto_0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 755
    const/4 v2, 0x0

    .line 764
    :cond_0
    return-object v2

    .line 757
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 758
    .local v2, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 759
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 760
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 761
    invoke-static {v1}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/Message$CreatorType;)V
    .locals 0
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "creatorType"    # Lcom/alibaba/wukong/im/Message$CreatorType;

    .prologue
    .line 1329
    if-eqz p0, :cond_0

    .line 1330
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 1332
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 0
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 1323
    if-eqz p0, :cond_0

    .line 1324
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1326
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V
    .locals 2
    .param p0, "from"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "to"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p2, "include"    # Z

    .prologue
    .line 1286
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1288
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalId:Ljava/lang/String;

    .line 1289
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMid:J

    .line 1290
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderId:J

    .line 1291
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderVersion:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSenderVersion:J

    .line 1292
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageType:Lcom/alibaba/wukong/im/Message$MessageType;

    .line 1293
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatorType:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 1294
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mCreatedAt:J

    .line 1295
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastModify:J

    .line 1296
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageStatus:Lcom/alibaba/wukong/im/Message$MessageStatus;

    .line 1297
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mUnreadCount:I

    .line 1298
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTotalCount:I

    .line 1299
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    .line 1300
    if-eqz p2, :cond_2

    .line 1301
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateTag:J

    .line 1302
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mPrivateExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1304
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTag:J

    .line 1305
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mExtension:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1306
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    iput-boolean v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mIsRead:Z

    .line 1307
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    .line 1308
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIdExObjectList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1309
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1310
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    .line 1311
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    .line 1312
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    .line 1313
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mRecallStatus:I

    .line 1314
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mSentLocalTime:J

    .line 1316
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mViewStatus:I

    .line 1317
    iget v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    iput v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    .line 1318
    iget-wide v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    iput-wide v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mLastUpdateUnreadCount:J

    .line 1319
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Liea;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/wukong/im/message/MessageImpl;->mMemoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    goto/16 :goto_0

    .line 1299
    :cond_3
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mMessageContent:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->cloneContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/util/HashMap;Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;)V
    .locals 4
    .param p1, "encryptVideoContent"    # Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "encryptVideoExt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "duration"

    .line 604
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->duration()J

    move-result-wide v2

    .line 603
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const-string/jumbo v0, "picUrl"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_0
    const-string/jumbo v0, "width"

    .line 609
    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->getWidth()I

    move-result v1

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v0, "height"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptCommonVideoContent;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 550
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_0
    return-void
.end method

.method public static b(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;
    .locals 2
    .param p0, "childLastMsg"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .param p1, "parent"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 1345
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 1350
    :goto_0
    return-object v0

    .line 1346
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/message/MessageImpl;->newInstance()Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 1347
    .local v0, "parentMsg":Lcom/alibaba/wukong/im/message/MessageImpl;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/message/MessageImpl;Z)V

    .line 1348
    invoke-static {v0, p1}, Libt;->a(Lcom/alibaba/wukong/im/message/MessageImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 1349
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/message/MessageImpl;->doAfter()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 618
    if-nez p0, :cond_0

    .line 625
    :goto_0
    return-object v1

    .line 621
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1431
    :try_start_0
    invoke-static {p0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1437
    :goto_0
    return-object v1

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[TAG] MessageConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAtMeStatusObjectsString failed, error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11018
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/message/MessageImpl;)Z
    .locals 8
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1354
    if-nez p0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return v1

    .line 1356
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 1357
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Liaw;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1358
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->isParent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->senderId()J

    move-result-wide v4

    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->n()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 1361
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-eq v3, v4, :cond_0

    .line 1362
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    invoke-static {p0}, Libs;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->iHaveRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageImpl;->recallStatus()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mShieldStatus:I

    if-eq v3, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 769
    const/4 v4, 0x0

    .line 791
    :cond_0
    :goto_0
    return-object v4

    .line 771
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 773
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 774
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 775
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 776
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 779
    .local v3, "keyL":Ljava/lang/Long;
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 783
    :goto_2
    if-eqz v3, :cond_2

    .line 784
    :try_start_2
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 785
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 788
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyL":Ljava/lang/Long;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 780
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keyL":Ljava/lang/Long;
    .restart local v6    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 781
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static c(Lcom/alibaba/wukong/im/message/MessageImpl;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/message/MessageImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1393
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1394
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "atIds"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtOpenIds:Ljava/util/Map;

    invoke-static {v2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    const-string/jumbo v1, "tplId"

    iget v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mTemplateId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1396
    const-string/jumbo v1, "local_extras"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mLocalExtras:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1397
    const-string/jumbo v1, "flag"

    iget v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mFlag:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1398
    const-string/jumbo v1, "isDecrypt"

    iget v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mEncryptStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1399
    const-string/jumbo v1, "atStatus"

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageImpl;->mAtMeStatusObjects:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Libt;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 9
    .param p0, "packString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1266
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1268
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v5}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1269
    .local v1, "bytes":[B
    const-string/jumbo v5, "p"

    .line 1270
    invoke-static {v5}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v5

    const-class v8, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    invoke-interface {v5, v1, v8}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 1271
    .local v0, "baseMessageModel":Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    .line 1274
    .local v6, "openId":J
    :goto_0
    new-instance v4, Lcom/alibaba/wukong/idl/im/models/MessageModel;

    invoke-direct {v4}, Lcom/alibaba/wukong/idl/im/models/MessageModel;-><init>()V

    .line 1275
    .local v4, "messageModel":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    iput-object v0, v4, Lcom/alibaba/wukong/idl/im/models/MessageModel;->baseMessage:Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;

    .line 1276
    const/4 v5, 0x0

    invoke-static {v4, v6, v7, v5}, Libt;->a(Lcom/alibaba/wukong/idl/im/models/MessageModel;JLcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v3

    .line 1282
    .end local v0    # "baseMessageModel":Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;
    .end local v1    # "bytes":[B
    .end local v4    # "messageModel":Lcom/alibaba/wukong/idl/im/models/MessageModel;
    .end local v6    # "openId":J
    :cond_0
    :goto_1
    return-object v3

    .line 1271
    .restart local v0    # "baseMessageModel":Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;
    .restart local v1    # "bytes":[B
    :cond_1
    iget-object v5, v0, Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;->openIdEx:Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;

    iget-object v5, v5, Lcom/alibaba/wukong/idl/im/models/OpenIdExModel;->openId:Ljava/lang/Long;

    .line 1272
    invoke-static {v5}, Lieb;->a(Ljava/lang/Long;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 1278
    .end local v0    # "baseMessageModel":Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;
    .end local v1    # "bytes":[B
    :catch_0
    move-exception v2

    .line 1279
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 4
    .param p0, "atIdObjectListString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/wukong/im/OpenIdExObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1412
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-object v2

    .line 1415
    :cond_1
    const/4 v1, 0x0

    .line 1417
    .local v1, "openIdExObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/OpenIdExObject;>;"
    :try_start_0
    const-class v3, Lcom/alibaba/wukong/im/OpenIdExObject;

    invoke-static {p0, v3}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1422
    :goto_1
    if-eqz v1, :cond_0

    .line 1425
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .param p0, "atMeStatusObjectsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/alibaba/wukong/im/AtMeStatusObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1443
    :try_start_0
    const-class v2, Lcom/alibaba/wukong/im/AtMeStatusObject;

    invoke-static {p0, v2}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1444
    .local v0, "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    if-eqz v0, :cond_0

    .line 1445
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    .end local v0    # "atMeStatusObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/AtMeStatusObject;>;"
    :goto_0
    return-object v2

    .line 1447
    :catch_0
    move-exception v1

    .line 1448
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[TAG] MessageConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parse2AtMeStatusObjectsFromString failed, error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12018
    const-string/jumbo v4, "im"

    invoke-static {v2, v3, v4}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
