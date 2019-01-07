.class public final Ldgu;
.super Ljava/lang/Object;
.source "ChatDetailConvert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    .locals 31
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 57
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v22

    if-nez v22, :cond_2

    .line 58
    :cond_0
    const/4 v5, 0x0

    .line 219
    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    .local v5, "chatDetailModel":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    :cond_1
    :goto_0
    return-object v5

    .line 60
    .end local v5    # "chatDetailModel":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_2
    new-instance v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;-><init>(Lcom/alibaba/wukong/im/Message;)V

    .line 61
    .restart local v5    # "chatDetailModel":Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;
    iget v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->type:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 217
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_lst_msg_tip_error:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto :goto_0

    .line 63
    :sswitch_0
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v19

    check-cast v19, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 64
    .local v19, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto :goto_0

    .line 68
    .end local v19    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :sswitch_1
    invoke-static/range {p0 .. p0}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v17

    .line 69
    .local v17, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const-string/jumbo v23, "e_id"

    .line 70
    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_3

    .line 72
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_lst_msg_tip_emotion:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 75
    .local v12, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    goto/16 :goto_0

    .line 80
    .end local v12    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v17    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :sswitch_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->lst_msg_tip_voice:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 83
    :sswitch_3
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "["

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcid;->c()Landroid/app/Application;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lctk$i;->dt_cspace_entrypt_file_type_amr:I

    .line 84
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "]"

    aput-object v24, v22, v23

    .line 83
    invoke-static/range {v22 .. v22}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 87
    :sswitch_4
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "["

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcid;->c()Landroid/app/Application;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lctk$i;->dt_cspace_entrypt_file_type_image:I

    .line 88
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "]"

    aput-object v24, v22, v23

    .line 87
    invoke-static/range {v22 .. v22}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 92
    :sswitch_5
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 93
    .local v6, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v22

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v23

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_im_chat_app_title_common_video:I

    .line 96
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 97
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->duration()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lebk;->a(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 101
    .end local v6    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    :sswitch_6
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    .line 102
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v21

    check-cast v21, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 103
    .local v21, "videoContent":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v22

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileType()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    .line 104
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->picUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->chat_app_title_video:I

    .line 106
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 107
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->duration()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lebk;->a(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 110
    .end local v21    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    :sswitch_7
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    .line 111
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 112
    .local v11, "geoContent":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    sget v22, Lctk$e;->msg_select_location_mark:I

    move/from16 v0, v22

    iput v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    .line 113
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->url()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->lst_msg_tip_gis:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 115
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$GeoContent;->locationName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    .end local v11    # "geoContent":Lcom/alibaba/wukong/im/MessageContent$GeoContent;
    :sswitch_8
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    .line 119
    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 120
    .local v13, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    sget v22, Lctk$e;->default_link_icon:I

    move/from16 v0, v22

    iput v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    .line 121
    invoke-interface {v13}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 122
    invoke-interface {v13}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 123
    invoke-interface {v13}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    .line 124
    invoke-interface {v13}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->linkUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    .end local v13    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :sswitch_9
    invoke-static/range {p0 .. p0}, Ldkc;->s(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v18

    .line 132
    .local v18, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v18, :cond_4

    .line 133
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->extension:Ljava/lang/String;

    .line 134
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 135
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    .line 137
    :cond_4
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1257
    const-string/jumbo v22, ""

    .line 1261
    iget v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->type:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_1

    .line 138
    :goto_1
    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    goto/16 :goto_0

    .line 1264
    :sswitch_a
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "["

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 1265
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcid;->c()Landroid/app/Application;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lctk$i;->dt_cspace_entrypt_file_type_vedio:I

    .line 1266
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "]"

    aput-object v24, v22, v23

    .line 1264
    invoke-static/range {v22 .. v22}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_1

    .line 1269
    :sswitch_b
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "["

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 1270
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcid;->c()Landroid/app/Application;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    sget v25, Lctk$i;->dt_cspace_entrypt_file_type_file:I

    .line 1271
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "]"

    aput-object v24, v22, v23

    .line 1269
    invoke-static/range {v22 .. v22}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_1

    .line 142
    .end local v18    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :sswitch_c
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 143
    .local v10, "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->extension:Ljava/lang/String;

    .line 144
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 145
    invoke-interface {v10}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 148
    .end local v10    # "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    :sswitch_d
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_message_merge_robot_content:I

    .line 149
    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 153
    :sswitch_e
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, p0

    check-cast v22, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 154
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    check-cast v15, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 155
    .local v15, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v15, :cond_1

    .line 156
    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 157
    .local v8, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 2223
    .local v16, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    const-string/jumbo v23, ""

    .line 2224
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->url()Ljava/lang/String;

    move-result-object v25

    .line 2225
    const-string/jumbo v24, ""

    .line 2226
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2227
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 2228
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v22, v26, v27

    const/16 v22, 0x1

    const-string/jumbo v27, "\uff1a"

    aput-object v27, v26, v22

    const/16 v22, 0x2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    aput-object v27, v26, v22

    invoke-static/range {v26 .. v26}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2231
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 2232
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 2243
    :cond_6
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v26

    iget-wide v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->senderId:J

    move-wide/from16 v28, v0

    .line 2244
    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v26

    .line 2245
    if-eqz v26, :cond_7

    .line 2246
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2247
    invoke-static/range {v24 .. v24}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2249
    :cond_7
    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->mediaId:Ljava/lang/String;

    .line 2250
    sget v24, Lctk$e;->default_link_icon:I

    move/from16 v0, v24

    iput v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->defaultRes:I

    .line 2251
    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->title:Ljava/lang/String;

    .line 2252
    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    .line 2253
    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->linkUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 2233
    :cond_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2234
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v26

    .line 2235
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2236
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->formList:[Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    aget-object v29, v27, v23

    .line 2237
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->key:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2238
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OAFormDo;->value:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2236
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 2240
    :cond_9
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 168
    .end local v8    # "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v15    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    .end local v16    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_f
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->lst_msg_tip_lucky_money:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    :sswitch_10
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_redenvelop_luckytime_conversation_content_title:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 176
    :sswitch_11
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->lst_msg_tip_pub:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    :sswitch_12
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->lst_msg_tip_namecard:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 182
    :sswitch_13
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v22, p0

    check-cast v22, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 183
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 184
    .local v4, "announceMessageDo":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    iget-object v0, v4, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    .end local v4    # "announceMessageDo":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_14
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->lst_msg_tip_mail:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 191
    :sswitch_15
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_attachment_type_chat_record:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :sswitch_16
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    .line 195
    .local v7, "content":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v0, v7, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object v9, v7

    .line 196
    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 197
    .local v9, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 202
    .end local v7    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v9    # "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    :sswitch_17
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lctk$i;->dt_im_lst_msg_live_card_record:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 204
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 205
    .local v20, "thirdPartyDo":Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v14, v20

    .line 206
    check-cast v14, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    .line 207
    .local v14, "liveRecordDo":Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    iget-object v0, v14, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 208
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    const/16 v23, 0x1

    iget-object v0, v14, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v22 .. v22}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    .end local v14    # "liveRecordDo":Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    .end local v20    # "thirdPartyDo":Ljava/lang/Object;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_18
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcid;->c()Landroid/app/Application;

    move-result-object v22

    sget v23, Lctk$i;->dt_pay_group_bill:I

    invoke-virtual/range {v22 .. v23}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto/16 :goto_0

    .line 61
    .line 1261
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_c
        0x65 -> :sswitch_11
        0x66 -> :sswitch_8
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0xc9 -> :sswitch_11
        0xca -> :sswitch_5
        0xcb -> :sswitch_4
        0xcc -> :sswitch_3
        0xcd -> :sswitch_9
        0xce -> :sswitch_9
        0xfb -> :sswitch_1
        0xfc -> :sswitch_2
        0xfd -> :sswitch_6
        0xfe -> :sswitch_5
        0x12c -> :sswitch_e
        0x12d -> :sswitch_e
        0x190 -> :sswitch_14
        0x1f4 -> :sswitch_9
        0x1f5 -> :sswitch_9
        0x1f6 -> :sswitch_9
        0x258 -> :sswitch_12
        0x2bc -> :sswitch_13
        0x384 -> :sswitch_f
        0x385 -> :sswitch_f
        0x386 -> :sswitch_f
        0x388 -> :sswitch_f
        0x389 -> :sswitch_f
        0x38a -> :sswitch_10
        0x38b -> :sswitch_10
        0x38c -> :sswitch_f
        0x4b0 -> :sswitch_d
        0x5dc -> :sswitch_15
        0x640 -> :sswitch_16
        0x76c -> :sswitch_18
        0x960 -> :sswitch_17
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xcd -> :sswitch_a
        0xce -> :sswitch_a
        0x1f6 -> :sswitch_b
    .end sparse-switch
.end method
