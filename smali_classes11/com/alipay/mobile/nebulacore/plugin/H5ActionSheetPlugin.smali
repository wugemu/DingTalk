.class public Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;
.super Lipd;
.source "H5ActionSheetPlugin.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

.field private contentView:Landroid/view/ViewGroup;

.field private dialog:Landroid/app/Dialog;

.field private rootView:Landroid/view/ViewGroup;

.field private sheetVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lipd;-><init>()V

    .line 32
    const-string/jumbo v0, "H5ActionSheetPlugin"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->sheetVisible:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->hide()Z

    move-result v0

    return v0
.end method

.method private hide()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 91
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->sheetVisible:Z

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->rootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->sheetVisible:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method private show(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 30
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    .prologue
    .line 97
    .line 1121
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v26, v0

    .line 98
    .local v26, "params":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v6

    .line 99
    .local v6, "activity":Landroid/app/Activity;
    if-nez v6, :cond_1

    .line 100
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string/jumbo v5, "title"

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v5, "cancelBtn"

    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "cancelBtn":Ljava/lang/String;
    const-string/jumbo v5, "btns"

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v5, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v21

    .line 107
    .local v21, "jaButtons":Lcom/alibaba/fastjson/JSONArray;
    const-string/jumbo v5, "destructiveBtnIndex"

    .line 108
    move-object/from16 v0, v26

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 110
    .local v18, "destructiveBtn":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v5

    const-class v9, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    .line 111
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProviderUseCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    .line 113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    if-eqz v5, :cond_4

    .line 114
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v7, "btnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 119
    const/16 v19, 0x0

    .local v19, "index":I
    :goto_1
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_3

    .line 120
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 127
    .end local v19    # "index":I
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    const/4 v10, 0x0

    move-object/from16 v9, p2

    invoke-interface/range {v5 .. v10}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->setContextAndContent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Liny;Landroid/view/View$OnClickListener;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    invoke-interface {v5}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->getAntUIActionSheet()Landroid/app/Dialog;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->dialog:Landroid/app/Dialog;

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->dialog:Landroid/app/Dialog;

    if-eqz v5, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 135
    .end local v7    # "btnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->rootView:Landroid/view/ViewGroup;

    if-nez v5, :cond_5

    .line 136
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v9, 0x1020002

    .line 137
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->rootView:Landroid/view/ViewGroup;

    .line 140
    :cond_5
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    .line 141
    .local v20, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_action_sheet:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->rootView:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    .line 143
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v9, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v22, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 147
    .local v16, "context":Landroid/content/Context;
    const/4 v5, 0x7

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->dip2px(Landroid/content/Context;I)I

    move-result v23

    .line 148
    .local v23, "margin":I
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v23

    move/from16 v3, v23

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    new-instance v25, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;Liny;)V

    .line 162
    .local v25, "outsideClick":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    sget v9, Lcom/alipay/mobile/nebula/R$id;->rl_h5_action_sheet:I

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 163
    .local v27, "rlSheet":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    sget v9, Lcom/alipay/mobile/nebula/R$id;->h5_action_sheet_content:I

    .line 164
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 166
    .local v12, "apContent":Landroid/widget/LinearLayout;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    sget v9, Lcom/alipay/mobile/nebula/R$id;->h5_action_sheet_title:I

    .line 170
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 172
    .local v28, "tvTitle":Landroid/widget/TextView;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 173
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_2
    new-instance v15, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;Liny;)V

    .line 192
    .local v15, "clickListener":Landroid/view/View$OnClickListener;
    const/16 v29, 0x0

    .line 194
    .local v29, "viewIndex":I
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 195
    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_as_default_button:I

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 197
    .local v17, "destructButton":Landroid/widget/Button;
    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 199
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    add-int/lit8 v29, v29, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 204
    .end local v17    # "destructButton":Landroid/widget/Button;
    :cond_6
    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 205
    const/16 v19, 0x0

    .restart local v19    # "index":I
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    move/from16 v0, v19

    if-ge v0, v5, :cond_8

    .line 206
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 207
    .local v24, "otherButton":Ljava/lang/String;
    const-string/jumbo v5, "H5ActionSheetPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "otherButton ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_as_default_button:I

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 210
    .local v11, "apButton":Landroid/widget/Button;
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v11, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v12, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 205
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 176
    .end local v11    # "apButton":Landroid/widget/Button;
    .end local v15    # "clickListener":Landroid/view/View$OnClickListener;
    .end local v19    # "index":I
    .end local v24    # "otherButton":Ljava/lang/String;
    .end local v29    # "viewIndex":I
    :cond_7
    const/16 v5, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 218
    .restart local v15    # "clickListener":Landroid/view/View$OnClickListener;
    .restart local v29    # "viewIndex":I
    :cond_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 219
    sget v5, Lcom/alipay/mobile/nebula/R$layout;->h5_as_cancel_button:I

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 221
    .local v14, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v14, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v12, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 228
    .end local v14    # "cancelButton":Landroid/widget/Button;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->rootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->rootView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 230
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->sheetVisible:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 64
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "h5PageBack"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->hide()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    :goto_0
    return v1

    .line 69
    :cond_0
    const-string/jumbo v2, "actionSheet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->hide()Z

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->show(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 58
    const-string/jumbo v0, "actionSheet"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "h5PageBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->hide()Z

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->actionSheetProvider:Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5ActionSheetProvider;->onRelease()V

    .line 54
    :cond_0
    return-void
.end method
