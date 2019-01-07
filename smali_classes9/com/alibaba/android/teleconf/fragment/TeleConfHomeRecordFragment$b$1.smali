.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    .prologue
    .line 3059
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .prologue
    .line 3062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3172
    :goto_0
    return-void

    .line 3067
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->a:Ljava/util/List;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;JLjava/util/List;)V

    .line 3069
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3070
    .local v12, "icons":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3071
    new-instance v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 3072
    .local v11, "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    const-string/jumbo v2, ""

    iput-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 3073
    const-string/jumbo v2, ""

    iput-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    .line 3074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetMediaId:Ljava/lang/String;

    iput-object v2, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 3076
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3100
    .end local v11    # "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3078
    :cond_2
    const/4 v10, 0x0

    .line 3079
    .local v10, "avatarNum":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3080
    .local v13, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v13, :cond_3

    .line 3083
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v13, v0}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v4

    .line 3085
    .local v4, "nickName":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;-><init>()V

    .line 3086
    .restart local v11    # "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    iput-object v4, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    .line 3087
    iput-object v4, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->name:Ljava/lang/String;

    .line 3088
    iget-object v3, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v3, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->mediaId:Ljava/lang/String;

    .line 3090
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3092
    add-int/lit8 v10, v10, 0x1

    .line 3094
    const/4 v3, 0x4

    if-ge v10, v3, :cond_1

    goto :goto_1

    .line 3119
    .end local v4    # "nickName":Ljava/lang/String;
    .end local v10    # "avatarNum":I
    .end local v11    # "iconObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;
    .end local v12    # "icons":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;>;"
    .end local v13    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3120
    .restart local v13    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v13, :cond_5

    .line 3123
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v13, v3}, Lewh;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Ljava/lang/String;

    move-result-object v14

    .line 3124
    .local v14, "recordName":Ljava/lang/String;
    const-string/jumbo v15, ""

    .line 3125
    .local v15, "recordTitle":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-wide v0, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    move-result-object v17

    .line 3126
    .local v17, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    if-eqz v17, :cond_7

    .line 3127
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3129
    .local v16, "title":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3130
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3132
    :cond_6
    move-object/from16 v15, v16

    .line 3134
    .end local v16    # "title":Ljava/lang/String;
    :cond_7
    move-object v4, v14

    .line 3135
    .restart local v4    # "nickName":Ljava/lang/String;
    move-object v8, v15

    .line 3136
    .local v8, "titleName":Ljava/lang/String;
    iget-object v9, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 3137
    .local v9, "active":Ljava/lang/Boolean;
    iget-object v5, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 3138
    .local v5, "mediaId":Ljava/lang/String;
    iget-wide v6, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 3140
    .local v6, "uid":J
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v19

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 3161
    .end local v4    # "nickName":Ljava/lang/String;
    .end local v5    # "mediaId":Ljava/lang/String;
    .end local v6    # "uid":J
    .end local v8    # "titleName":Ljava/lang/String;
    .end local v9    # "active":Ljava/lang/Boolean;
    .end local v13    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v14    # "recordName":Ljava/lang/String;
    .end local v15    # "recordTitle":Ljava/lang/String;
    .end local v17    # "userObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    :cond_8
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1$3;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$b$1;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
