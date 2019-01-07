.class final Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "LabelSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/LabelSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-virtual {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->isDestroyed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v9, "org_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 83
    .local v10, "orgId":J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_0

    .line 87
    const-string/jumbo v9, "action_key_save_label_group"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 89
    const-string/jumbo v9, "intent_key_label_group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 90
    .local v8, "newObj":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    if-eqz v8, :cond_0

    .line 94
    const-string/jumbo v9, "intent_key_label_group_is_add_mode"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 95
    .local v5, "isAddMode":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;

    move-result-object v9

    invoke-virtual {v9}, Lfnu;->f()Ljava/util/List;

    move-result-object v7

    .line 96
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    if-nez v7, :cond_2

    .line 97
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;

    move-result-object v9

    invoke-virtual {v9, v7}, Lfnu;->a(Ljava/util/List;)V

    .line 100
    :cond_2
    if-eqz v5, :cond_4

    .line 101
    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;

    move-result-object v9

    invoke-virtual {v9}, Lfnu;->notifyDataSetChanged()V

    .line 113
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9, v7}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V

    goto :goto_0

    .line 103
    :cond_4
    const/4 v4, 0x0

    .line 104
    .local v4, "index":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 105
    .local v6, "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    if-eqz v6, :cond_5

    iget-wide v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    iget-wide v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_5

    .line 106
    invoke-interface {v7, v4, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 109
    goto :goto_1

    .line 115
    .end local v4    # "index":I
    .end local v5    # "isAddMode":Z
    .end local v6    # "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    .end local v8    # "newObj":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    :cond_6
    const-string/jumbo v9, "action_key_delete_label_group"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;

    move-result-object v9

    invoke-virtual {v9}, Lfnu;->f()Ljava/util/List;

    move-result-object v7

    .line 118
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    if-nez v7, :cond_7

    .line 119
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;

    move-result-object v9

    invoke-virtual {v9, v7}, Lfnu;->a(Ljava/util/List;)V

    .line 123
    :cond_7
    const-string/jumbo v9, "intent_key_label_group_id"

    const-wide/16 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 124
    .local v2, "groupId":J
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 125
    .restart local v6    # "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    if-eqz v6, :cond_8

    iget-wide v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->id:J

    cmp-long v12, v12, v2

    if-nez v12, :cond_8

    .line 126
    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    .end local v6    # "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    :cond_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lfnu;

    move-result-object v9

    invoke-virtual {v9}, Lfnu;->notifyDataSetChanged()V

    .line 132
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v9, v7}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V

    goto/16 :goto_0
.end method
