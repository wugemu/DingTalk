.class public final Lhni;
.super Ljava/lang/Object;
.source "MiniAppActivityProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ActivityProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "startActivity"    # Ljava/lang/Class;
    .param p4, "useNewTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 162
    if-eqz p4, :cond_0

    .line 163
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhni$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lhni$1;-><init>(Lhni;Landroid/content/Intent;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method


# virtual methods
.method public final handlerStartActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 48
    :cond_0
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "handlerStartActivity"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "context null or intent null"

    aput-object v23, v21, v22

    .line 1082
    const-string/jumbo v22, "mini_task"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string/jumbo v20, "needAnimInTiny"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string/jumbo v20, "appId"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, "miniAppId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 57
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "handlerStartActivity"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "miniAppId null"

    aput-object v23, v21, v22

    .line 2082
    const-string/jumbo v22, "mini_task"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v20, "url"

    const-string/jumbo v21, "https://tms.dingtalk.com/markets/dingtalk/no-permission-miniapp?wh_ttid=phone&errortype=noPackage"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v20

    .line 2344
    move-object/from16 v0, v20

    iget-object v5, v0, Lhlq;->a:Landroid/app/Activity;

    .line 65
    .local v5, "activity":Landroid/app/Activity;
    if-eqz v5, :cond_2

    .line 66
    invoke-static {v5, v10}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 78
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v10    # "bundle":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v20, "mainTask"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 79
    .local v11, "isInternalApp":Z
    if-eqz v11, :cond_4

    .line 80
    const-class v20, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInternalActivity;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lhni;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Z)V

    goto/16 :goto_0

    .line 85
    :cond_4
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lhlq;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 87
    .local v16, "miniAppTaskModels":Ljava/util/List;, "Ljava/util/List<Lhmu;>;"
    const/16 v18, 0x0

    .line 89
    .local v18, "startActivity":Ljava/lang/Class;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static {}, Lhlq;->c()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 90
    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static/range {v16 .. v16}, Lhlq;->a(Ljava/util/List;)Lhmu;

    move-result-object v17

    .line 91
    .local v17, "oldestTaskModel":Lhmu;
    if-eqz v17, :cond_6

    .line 93
    invoke-static {}, Lhlq;->a()Lhlq;

    .line 3041
    move-object/from16 v0, v17

    iget-object v0, v0, Lhmu;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 93
    invoke-static/range {v20 .. v20}, Lhlq;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 94
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "handlerStartActivity"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "oldestTaskModel not null & startActivity Name="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4033
    move-object/from16 v0, v17

    iget-object v9, v0, Lhmu;->b:Landroid/app/Activity;

    .line 97
    .local v9, "baseActivity":Landroid/app/Activity;
    if-eqz v9, :cond_5

    .line 98
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "handlerStartActivity"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "finishAndRemove oldTask"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {v9}, Lhrf;->b(Landroid/app/Activity;)V

    .line 158
    .end local v9    # "baseActivity":Landroid/app/Activity;
    .end local v17    # "oldestTaskModel":Lhmu;
    :cond_5
    :goto_1
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lhni;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Z)V

    goto/16 :goto_0

    .line 103
    .restart local v17    # "oldestTaskModel":Lhmu;
    :cond_6
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "oldestTaskModel is null"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    const/4 v12, 0x0

    .line 106
    .local v12, "keepAliveActivityName":Ljava/lang/String;
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v20

    .line 4344
    move-object/from16 v0, v20

    iget-object v0, v0, Lhlq;->a:Landroid/app/Activity;

    move-object/from16 v19, v0

    .line 107
    .local v19, "topActivity":Landroid/app/Activity;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lhmu;

    .line 108
    .local v14, "miniAppTaskModel":Lhmu;
    if-eqz v14, :cond_7

    .line 5033
    iget-object v5, v14, Lhmu;->b:Landroid/app/Activity;

    .line 110
    .restart local v5    # "activity":Landroid/app/Activity;
    if-eqz v5, :cond_7

    if-eqz v19, :cond_7

    .line 111
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    if-eqz v21, :cond_7

    .line 114
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 115
    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    .line 113
    invoke-static/range {v21 .. v22}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 116
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 118
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 124
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v14    # "miniAppTaskModel":Lhmu;
    :cond_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 125
    const-class v18, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity1;

    goto/16 :goto_1

    .line 127
    :cond_a
    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static {}, Lhlq;->b()Ljava/util/Set;

    move-result-object v8

    .line 128
    .local v8, "allMiniActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 129
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    .local v6, "activityName":Ljava/lang/String;
    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 131
    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static {v6}, Lhlq;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 132
    goto/16 :goto_1

    .line 140
    .end local v6    # "activityName":Ljava/lang/String;
    .end local v8    # "allMiniActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "keepAliveActivityName":Ljava/lang/String;
    .end local v17    # "oldestTaskModel":Lhmu;
    .end local v19    # "topActivity":Landroid/app/Activity;
    :cond_c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v7, "allMiniActivities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lhlq;->a()Lhlq;

    invoke-static {}, Lhlq;->b()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_d
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lhmu;

    .line 5041
    .local v15, "miniAppTaskModel1":Lhmu;
    iget-object v0, v15, Lhmu;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 143
    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 6041
    iget-object v0, v15, Lhmu;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 144
    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 148
    .end local v15    # "miniAppTaskModel1":Lhmu;
    :cond_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_f

    .line 149
    invoke-static {}, Lhlq;->a()Lhlq;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lhlq;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 155
    :goto_4
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "handlerStartActivity"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "new Activity & startActivity Name="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 151
    :cond_f
    const-string/jumbo v20, "MiniAppActivityProviderImpl"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "allMiniActivities size <= 0"

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lhmv;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const-class v18, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity1;

    goto :goto_4
.end method
