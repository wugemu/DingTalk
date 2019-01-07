.class public final Lbon;
.super Ljava/lang/Object;
.source "RecentImagesFetcher.java"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;JI)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "imgs"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbon;->a:Ljava/lang/ref/WeakReference;

    .line 43
    iput p4, p0, Lbon;->c:I

    .line 44
    invoke-static {p2, p3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->firstParam(J)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    move-result-object v0

    iput-object v0, p0, Lbon;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    .line 45
    return-void
.end method


# virtual methods
.method final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)Ljava/util/List;
    .locals 21
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;->getPosts()Ljava/util/List;

    move-result-object v14

    .line 76
    .local v14, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;>;"
    invoke-static {v14}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 155
    :cond_0
    return-object v13

    .line 78
    :cond_1
    const/4 v6, 0x0

    .line 1019
    .local v6, "imgs":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v13, "pictures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 82
    .local v8, "o":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v8, :cond_2

    .line 83
    iget-object v3, v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 84
    .local v3, "content":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-eqz v3, :cond_2

    .line 85
    iget v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 86
    .local v4, "contentType":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_7

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lbon;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    .line 91
    iget-object v11, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 92
    .local v11, "photoContent":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    if-nez v11, :cond_3

    .line 93
    const-string/jumbo v17, "photoContent = null"

    .line 1076
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v12, v11, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 98
    .local v12, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    invoke-static {v12}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v17

    if-nez v17, :cond_5

    const/16 v17, 0x1

    :goto_1
    const-string/jumbo v19, "photos is empty"

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 100
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 101
    .local v10, "photo":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    if-nez v10, :cond_6

    .line 102
    const-string/jumbo v19, "photo = null"

    .line 2076
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_2

    .line 98
    .end local v10    # "photo":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 105
    .restart local v10    # "photo":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    :cond_6
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->authMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 106
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->authMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->getOriginUrl()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "originUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 108
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lbon;->c:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v6, v0, :cond_0

    .line 111
    new-instance v19, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->authMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    .end local v9    # "originUrl":Ljava/lang/String;
    .end local v10    # "photo":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .end local v11    # "photoContent":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;
    .end local v12    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    :cond_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Lbon;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    .line 118
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    move-object/from16 v16, v0

    .line 119
    .local v16, "videoContent":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;
    if-nez v16, :cond_8

    .line 120
    const-string/jumbo v17, "videoContent = null"

    .line 3076
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_8
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picAuthMedia:Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;

    .line 125
    .local v2, "authMediaParamObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;
    const/4 v15, 0x0

    .line 126
    .local v15, "url":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 127
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 128
    .local v7, "mediaId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 129
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 131
    :try_start_0
    invoke-static {v7}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 142
    .end local v7    # "mediaId":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 143
    const-string/jumbo v17, "url is empty"

    .line 5076
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .restart local v7    # "mediaId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 133
    .local v5, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "invalid encoding = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 4076
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lbqh;->a(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v7    # "mediaId":Ljava/lang/String;
    :cond_a
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->getOriginUrl()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 147
    :cond_b
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lbon;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    .line 151
    new-instance v19, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;

    if-eqz v2, :cond_c

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/AuthMediaParamObject;->authCode:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x0

    goto :goto_4
.end method
