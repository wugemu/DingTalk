.class public final Ldsb;
.super Ljava/lang/Object;
.source "RetailUserInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldsb$a;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/alibaba/wukong/im/Conversation;

.field public g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Ldsb;->g:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Ldsb;->f:Lcom/alibaba/wukong/im/Conversation;

    .line 63
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 3
    .param p1, "orgId"    # J

    .prologue
    .line 172
    iget-object v0, p0, Ldsb;->f:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Ldsb;->f:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldje;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldsb;->c:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Ldsb;->f:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldje;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldsb;->d:Ljava/lang/String;

    .line 177
    invoke-static {p1, p2}, Ldje;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldsb;->b:Ljava/lang/String;

    .line 1075
    invoke-static {p1, p2}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 178
    iput-object v0, p0, Ldsb;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 22
    .param p1, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 76
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 77
    .local v13, "orgInfoJson":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v16

    .line 78
    .local v16, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v16, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgIdList:Ljava/util/List;

    .line 82
    .local v12, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 84
    .local v9, "idArray":Lcom/alibaba/fastjson/JSONArray;
    :try_start_0
    invoke-static {v13}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v17

    const-string/jumbo v18, "memberOrgIdList"

    invoke-virtual/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 89
    :goto_1
    if-eqz v9, :cond_0

    .line 93
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    .line 94
    .local v15, "size":I
    if-lez v15, :cond_0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 95
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v14, "resultIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v11, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 98
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 99
    .local v10, "idSrc":Ljava/lang/Object;
    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 100
    .local v8, "id":Ljava/lang/Long;
    if-eqz v10, :cond_2

    .line 101
    instance-of v0, v10, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 103
    :try_start_1
    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "idSrc":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 112
    :cond_2
    :goto_3
    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 113
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v17, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const/16 v18, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lccr;->e(J)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 85
    .end local v7    # "i":I
    .end local v8    # "id":Ljava/lang/Long;
    .end local v11    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    .end local v14    # "resultIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v15    # "size":I
    :catch_0
    move-exception v6

    .line 86
    .local v6, "ex":Ljava/lang/Exception;
    const-string/jumbo v17, "im"

    const/16 v18, 0x0

    const-string/jumbo v19, "UserProfileObjectParseError"

    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v7    # "i":I
    .restart local v8    # "id":Ljava/lang/Long;
    .restart local v11    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    .restart local v14    # "resultIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "size":I
    :catch_1
    move-exception v5

    .line 105
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const-string/jumbo v17, "im"

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "RetailUserInfoModel"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string/jumbo v21, "parseLongError"

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 108
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v10    # "idSrc":Ljava/lang/Object;
    :cond_4
    instance-of v0, v10, Ljava/lang/Long;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object v8, v10

    .line 109
    check-cast v8, Ljava/lang/Long;

    goto :goto_3

    .line 117
    .end local v8    # "id":Ljava/lang/Long;
    .end local v10    # "idSrc":Ljava/lang/Object;
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 118
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Ldsb;->a:J

    .line 119
    move-object/from16 v0, p0

    iget-wide v0, v0, Ldsb;->a:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ldsb;->a(J)V

    goto/16 :goto_0

    .line 120
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 122
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldsb;->g:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Ldsb$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Ldsb$1;-><init>(Ldsb;Ljava/util/List;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;)V

    .line 129
    .local v4, "dialog":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    invoke-virtual {v4, v11}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 130
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    goto/16 :goto_0
.end method
