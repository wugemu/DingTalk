.class public final Lglk;
.super Ljava/lang/Object;
.source "SpaceSaveBatchMessageManager.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/alibaba/wukong/im/Conversation;

.field public c:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lglk;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 43
    iput-object p3, p0, Lglk;->c:Lcma;

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 149
    iget-object v0, p0, Lglk;->c:Lcma;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lglk;->c:Lcma;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    .local p1, "spaceImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "imageFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Message;

    .line 84
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 88
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 92
    .local v1, "contentType":I
    const/16 v7, 0x1f4

    if-eq v1, v7, :cond_1

    const/16 v7, 0x1f5

    if-ne v1, v7, :cond_0

    .line 96
    :cond_1
    instance-of v7, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v7, :cond_0

    .line 99
    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v3    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v4, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 100
    .local v4, "object":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v7, v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v7, :cond_0

    move-object v5, v4

    .line 103
    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 104
    .local v5, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v2, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;-><init>()V

    .line 105
    .local v2, "fileModel":Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;
    iget-object v7, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->spaceId:Ljava/lang/String;

    .line 106
    iget-object v7, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->fileId:Ljava/lang/String;

    .line 107
    iget-object v7, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v7, v2, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->name:Ljava/lang/String;

    .line 108
    iget-object v7, p0, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->cid:Ljava/lang/String;

    .line 109
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "contentType":I
    .end local v2    # "fileModel":Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 114
    .local p1, "otherImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p2, "imageFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/Message;

    .line 115
    .local v14, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v14, :cond_0

    .line 118
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 119
    .local v2, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    .line 123
    .local v3, "contentType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_0

    .line 127
    :cond_1
    invoke-static {v14}, Lhcg;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, "imgUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 131
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 132
    .local v12, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v12, :cond_0

    .line 135
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "filename":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-static {v12}, Lgll;->a(Lcom/alibaba/wukong/im/MessageContent$ImageContent;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getWidth()I

    move-result v6

    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getHeight()I

    move-result v7

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v9}, Lgll;->a(ILjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v11

    .line 140
    .end local v5    # "extension":Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;

    invoke-direct {v10}, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;-><init>()V

    .line 141
    .local v10, "fileModel":Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;
    iput-object v13, v10, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->url:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->cid:Ljava/lang/String;

    .line 143
    iput-object v11, v10, Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;->name:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v2    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v3    # "contentType":I
    .end local v10    # "fileModel":Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;
    .end local v11    # "filename":Ljava/lang/String;
    .end local v12    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v13    # "imgUrl":Ljava/lang/String;
    .end local v14    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3
    return-void
.end method
