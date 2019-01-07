.class public final Lgcs;
.super Ljava/lang/Object;
.source "Favorite2MessageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/util/List;
    .locals 8
    .param p0, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 35
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v2, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "dingTitle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 39
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 40
    .local v1, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    iput v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 41
    iput-object v0, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 42
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v0    # "dingTitle":Ljava/lang/String;
    .end local v1    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 46
    .restart local v1    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 80
    :goto_1
    :pswitch_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :pswitch_1
    iput v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_1

    .line 52
    :pswitch_2
    const/4 v3, 0x2

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1090
    new-instance v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;-><init>()V

    .line 1091
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1092
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    if-eqz v3, :cond_2

    .line 1093
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    .line 1094
    if-eqz v3, :cond_2

    .line 1095
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getUrl()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->url:Ljava/lang/String;

    .line 1096
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getOrigin()I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_2
    iput-boolean v4, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->sendOrigin:Z

    .line 1097
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getSize()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->fileSize:J

    .line 1098
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getOrientation()I

    move-result v4

    iput v4, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->orientation:I

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->filename:Ljava/lang/String;

    .line 1100
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getAuthMediaId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/alibaba/android/dingtalkim/base/IMInterface$PicMessageObject;->authMediaId:Ljava/lang/String;

    .line 53
    :cond_2
    iput-object v5, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto :goto_1

    .line 1096
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 56
    :pswitch_3
    iput v5, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1204
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;-><init>()V

    .line 1205
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1206
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;

    if-eqz v3, :cond_5

    .line 1207
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;

    .line 1208
    if-eqz v3, :cond_5

    .line 1209
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    .line 1210
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->getMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 1211
    iget-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1212
    const-string/jumbo v3, ""

    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 1215
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string/jumbo v3, ""

    :goto_4
    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    .line 1216
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const-string/jumbo v3, ""

    :goto_5
    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->text:Ljava/lang/String;

    .line 57
    :cond_5
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1210
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->getMediaId()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1215
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 1216
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 60
    :pswitch_4
    iput v5, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 2112
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;-><init>()V

    .line 2113
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 2114
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;

    if-eqz v3, :cond_9

    .line 2115
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;

    .line 2116
    if-eqz v3, :cond_9

    .line 2117
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    .line 2118
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->getPicUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    const-string/jumbo v3, ""

    :goto_6
    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 2119
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    const-string/jumbo v3, ""

    :goto_7
    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    .line 2120
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const-string/jumbo v3, ""

    :goto_8
    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->text:Ljava/lang/String;

    .line 61
    :cond_9
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 2118
    :cond_a
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 2119
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 2120
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getSummary()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 64
    :pswitch_5
    const/16 v3, 0x1f4

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 65
    invoke-static {p0}, Lgcs;->c(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 68
    :pswitch_6
    const/16 v3, 0x67

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 69
    invoke-static {p0}, Lgcs;->b(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 72
    :pswitch_7
    const/16 v3, 0xca

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 2160
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;-><init>()V

    .line 2161
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2162
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;

    if-eqz v3, :cond_d

    .line 2163
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;

    .line 2164
    if-eqz v3, :cond_d

    .line 2165
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getDuration()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->duration:J

    .line 2166
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getHeight()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->height:I

    .line 2167
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->width:I

    .line 2168
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getSize()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->size:J

    .line 2169
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getPicUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->thumbUrl:Ljava/lang/String;

    .line 2170
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->videoUrl:Ljava/lang/String;

    .line 2171
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getAuthMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->authMediaId:Ljava/lang/String;

    .line 2172
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getPicAuthMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$CommonVideoMessageObject;->picAuthMediaId:Ljava/lang/String;

    .line 73
    :cond_d
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 76
    :pswitch_8
    const/16 v3, 0x68

    iput v3, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 2184
    new-instance v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;-><init>()V

    .line 2185
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 2186
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;

    if-eqz v3, :cond_e

    .line 2187
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;

    .line 2188
    if-eqz v3, :cond_e

    .line 2189
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->latitude:D

    .line 2190
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->longitude:D

    .line 2191
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->getLocationName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->locationName:Ljava/lang/String;

    .line 2192
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavGisModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->thumbUrl:Ljava/lang/String;

    .line 77
    :cond_e
    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    goto/16 :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    .locals 4
    .param p0, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 132
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;-><init>()V

    .line 133
    .local v1, "videoMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    .line 136
    .local v0, "favVideoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getDuration()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->duration:J

    .line 138
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->height:I

    .line 139
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->width:I

    .line 140
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->size:J

    .line 141
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbUrl:Ljava/lang/String;

    .line 142
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getPicAuthMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbAuthUrl:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getAuthMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgao;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoAuthUrl:Ljava/lang/String;

    .line 145
    invoke-static {p0}, Lgao;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authType:Ljava/lang/String;

    .line 146
    invoke-static {p0}, Lgao;->b(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authEntity:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authCode:Ljava/lang/String;

    .line 148
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getPicAuthCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->picAuthCode:Ljava/lang/String;

    .line 151
    .end local v0    # "favVideoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;
    :cond_0
    return-object v1
.end method

.method public static c(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 6
    .param p0, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    if-eqz v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    .line 232
    .local v0, "favSpaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getOrgId()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;Ljava/lang/String;J)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 234
    .end local v0    # "favSpaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    :cond_0
    return-object v1
.end method
