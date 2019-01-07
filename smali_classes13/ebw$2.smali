.class final Lebw$2;
.super Ljava/lang/Object;
.source "TinyVideoPreHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebw;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

.field final synthetic b:Lebw;


# direct methods
.method constructor <init>(Lebw;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lebw;

    .prologue
    .line 119
    iput-object p1, p0, Lebw$2;->b:Lebw;

    iput-object p2, p0, Lebw$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    if-ltz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getCount()I

    move-result v3

    move/from16 v0, p2

    if-ge v0, v3, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->a:Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcng;

    .line 124
    .local v13, "menu":Lcng;
    iget v3, v13, Lcng;->a:I

    packed-switch v3, :pswitch_data_0

    .line 189
    .end local v13    # "menu":Lcng;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v13    # "menu":Lcng;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 1043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 126
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMessageId()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 127
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "choose_mode"

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    const-string/jumbo v3, "intent_key_menu_seed"

    move-object/from16 v0, p0

    iget-object v4, v0, Lebw$2;->b:Lebw;

    .line 2043
    iget-object v4, v4, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 130
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMenuSeed()J

    move-result-wide v4

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebw$2;->b:Lebw;

    .line 3043
    iget-object v4, v4, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 132
    move-object/from16 v0, p0

    iget-object v5, v0, Lebw$2;->b:Lebw;

    .line 4043
    iget-object v5, v5, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 133
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMessageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 135
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 5043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 135
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoMessageObject()Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    new-instance v14, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 140
    .local v14, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/16 v3, 0x67

    iput v3, v14, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 6043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 142
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoMessageObject()Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    move-result-object v3

    iput-object v3, v14, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 143
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v15, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebw$2;->b:Lebw;

    .line 7043
    iget-object v4, v4, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 147
    invoke-virtual {v3, v4, v15}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_0

    .line 153
    .end local v14    # "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .end local v15    # "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 8043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 153
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMessageId()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 154
    new-instance v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;

    invoke-direct {v12}, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;-><init>()V

    .line 155
    .local v12, "videoMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 9043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 155
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoUrl:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 10043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 156
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoAuthUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->videoAuthUrl:Ljava/lang/String;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 11043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 157
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbUrl:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 12043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 158
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoPicAuthUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->thumbAuthUrl:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 13043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 159
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->authCode:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 14043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 160
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getPicAuthCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->picAuthCode:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 15043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 161
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getBitrate()J

    move-result-wide v4

    long-to-int v3, v4

    iput v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->bitrate:I

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 16043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 162
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoDuration()J

    move-result-wide v4

    iput-wide v4, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->duration:J

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 17043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 163
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoSize()J

    move-result-wide v4

    iput-wide v4, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->size:J

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 18043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 164
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoWidth()I

    move-result v3

    iput v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->width:I

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 19043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 165
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoHeight()I

    move-result v3

    iput v3, v12, Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;->height:I

    .line 166
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lebw$2;->b:Lebw;

    .line 20043
    iget-object v4, v4, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 166
    move-object/from16 v0, p0

    iget-object v5, v0, Lebw$2;->b:Lebw;

    .line 21043
    iget-object v5, v5, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 166
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getOrgId()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lebw$2;->b:Lebw;

    .line 22043
    iget-object v8, v8, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 166
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getCid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lebw$2;->b:Lebw;

    .line 23043
    iget-object v8, v8, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 166
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getMessageId()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lebw$2;->b:Lebw;

    .line 24043
    iget-object v10, v10, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 166
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getUid()J

    move-result-wide v10

    invoke-virtual/range {v3 .. v12}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;JLjava/lang/String;JJLcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;)V

    goto/16 :goto_0

    .line 170
    .end local v12    # "videoMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$VideoMessageObject;
    :pswitch_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 171
    .restart local v6    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "space_transfer_src"

    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 25043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 172
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getSpaceStatisticSrc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "other"

    .line 171
    :goto_1
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 175
    .local v2, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    move-object/from16 v0, p0

    iget-object v8, v0, Lebw$2;->b:Lebw;

    .line 27250
    new-instance v9, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 27251
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27252
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 27253
    const-string/jumbo v3, "_sight_"

    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 27254
    iget-object v3, v8, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoSize()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    iget-object v3, v8, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoSize()J

    move-result-wide v4

    :goto_2
    invoke-virtual {v9, v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 27255
    const-string/jumbo v3, "_"

    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 27256
    iget-object v3, v8, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoHeight()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v8, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getVideoHeight()I

    move-result v3

    :goto_3
    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 27257
    const-string/jumbo v3, ".mp4"

    invoke-virtual {v9, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 27258
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    invoke-virtual {v8}, Lebw;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "&from=tfs"

    invoke-virtual {v3, v4, v5, v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 28043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 176
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getOrgId()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-nez v3, :cond_5

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 29043
    iget-object v3, v3, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 177
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v7    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 26043
    iget-object v3, v3, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 173
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getSpaceStatisticSrc()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 27254
    .restart local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_3
    const-wide/16 v4, 0x168

    goto :goto_2

    .line 27256
    :cond_4
    const/16 v3, 0x280

    goto :goto_3

    .line 179
    .restart local v7    # "url":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    .line 30043
    iget-object v3, v3, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lebw$2;->b:Lebw;

    .line 31043
    iget-object v4, v4, Lebw;->b:Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;

    .line 179
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/video/handler/VideoPlayInfo;->getOrgId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->e()Lcma;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 183
    .end local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "url":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lebw$2;->b:Lebw;

    move-object/from16 v0, p0

    iget-object v4, v0, Lebw$2;->b:Lebw;

    .line 32043
    iget-object v4, v4, Lebw;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 183
    move-object/from16 v0, p0

    iget-object v5, v0, Lebw$2;->b:Lebw;

    .line 33043
    iget-object v5, v5, Lebw;->e:Ljava/lang/String;

    .line 183
    invoke-virtual {v3, v4, v5}, Lebw;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
