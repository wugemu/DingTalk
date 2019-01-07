.class public Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;
.super Lipd;
.source "H5AlertPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AlertPlugin"

.field public static final showUCFailDialog:Ljava/lang/String; = "showUCFailDialog"


# instance fields
.field private h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lipd;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebulacore/view/H5Alert;)Lcom/alipay/mobile/nebulacore/view/H5Alert;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    return-object p1
.end method

.method private alert(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    .line 80
    .local v1, "activity":Landroid/app/Activity;
    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    iget-object v11, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 84
    .local v11, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v11, :cond_0

    .line 88
    const-string/jumbo v4, "title"

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v4, "message"

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "message":Ljava/lang/String;
    const-string/jumbo v4, "button"

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "button":Ljava/lang/String;
    const-string/jumbo v4, "align"

    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "align":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 97
    :cond_2
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v8, v4

    .line 102
    .local v8, "buttons":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 103
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 104
    .local v0, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-eqz v0, :cond_3

    .line 106
    const/4 v4, 0x0

    aget-object v4, v8, v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v9

    .line 109
    .local v9, "dialog":Landroid/app/Dialog;
    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$1;

    invoke-direct {v4, p0, v0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;Liny;)V

    .line 110
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 119
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    .line 121
    if-eqz v9, :cond_0

    .line 122
    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$2;

    invoke-direct {v4, p0, p2, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {v9, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 132
    .end local v9    # "dialog":Landroid/app/Dialog;
    :cond_3
    new-instance v10, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$3;

    invoke-direct {v10, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$3;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;)V

    .line 146
    .local v10, "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 148
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 151
    :cond_4
    new-instance v4, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v4

    .line 152
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    goto/16 :goto_0
.end method

.method private confirm(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 15
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 3121
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 161
    .local v13, "params":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v13, :cond_0

    .line 164
    const-string/jumbo v5, "title"

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v5, "message"

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v5, "okButton"

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "confirm":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 169
    .local v14, "resources":Landroid/content/res/Resources;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_confirm:I

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 172
    :cond_2
    const-string/jumbo v5, "cancelButton"

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 173
    .local v9, "cancel":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_default_cancel:I

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 177
    :cond_3
    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v8, v5

    const/4 v5, 0x1

    aput-object v9, v8, v5

    .line 180
    .local v8, "buttons":[Ljava/lang/String;
    const-string/jumbo v5, "align"

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "align":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    .line 185
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 186
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 187
    .local v1, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-eqz v1, :cond_5

    .line 188
    const/4 v5, 0x0

    aget-object v5, v8, v5

    const/4 v6, 0x1

    aget-object v6, v8, v6

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v11

    .line 191
    .local v11, "dialog":Landroid/app/Dialog;
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$4;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$4;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;Liny;)V

    .line 192
    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 203
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$5;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v1, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$5;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;Liny;)V

    .line 204
    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V

    .line 216
    if-eqz v11, :cond_4

    .line 217
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$6;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;)V

    invoke-virtual {v11, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 228
    :cond_4
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    goto/16 :goto_0

    .line 231
    .end local v11    # "dialog":Landroid/app/Dialog;
    :cond_5
    new-instance v12, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$7;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;)V

    .line 250
    .local v12, "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v5, :cond_6

    .line 251
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 252
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 255
    :cond_6
    new-instance v5, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v5, v2}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v5

    .line 256
    invoke-virtual {v5, v4}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    goto/16 :goto_0
.end method

.method private showAlert(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 263
    .line 4121
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 264
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    if-nez v7, :cond_1

    .line 265
    const-string/jumbo v9, "H5AlertPlugin"

    const-string/jumbo v10, "none params"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    const-string/jumbo v9, "title"

    invoke-static {v7, v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v9, "message"

    invoke-static {v7, v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, "message":Ljava/lang/String;
    const/4 v1, 0x0

    .line 272
    .local v1, "buttonLabels":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "buttons"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 273
    .local v2, "buttons":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 274
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 275
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-eq v4, v9, :cond_2

    .line 276
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 281
    .end local v2    # "buttons":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 282
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "H5AlertPlugin"

    invoke-static {v9, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;

    invoke-direct {v5, p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$8;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;)V

    .line 306
    .local v5, "listener":Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    if-eqz v9, :cond_3

    .line 307
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->dismiss()V

    .line 308
    iput-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 311
    :cond_3
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v0

    .line 312
    .local v0, "activity":Landroid/app/Activity;
    new-instance v9, Lcom/alipay/mobile/nebulacore/view/H5Alert;

    invoke-direct {v9, v0}, Lcom/alipay/mobile/nebulacore/view/H5Alert;-><init>(Landroid/app/Activity;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->cancelable(Z)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->title(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v9

    .line 313
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->message(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->buttons([Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->listener(Lcom/alipay/mobile/nebulacore/view/H5Alert$H5AlertListener;)Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v9

    .line 314
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/view/H5Alert;->show()Lcom/alipay/mobile/nebulacore/view/H5Alert;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    goto :goto_0
.end method

.method private showDialog(Lcom/alipay/mobile/h5container/api/H5Event;Liop;Liny;)V
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5Page"    # Liop;
    .param p3, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 320
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 322
    .local v8, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v8, :cond_1

    .line 323
    const-string/jumbo v1, "h5_show_uc_fail_dialog"

    invoke-interface {v8, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-static {v10, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p2, :cond_0

    .line 333
    invoke-interface {p2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "nburl"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "url":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 335
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/Nebula;->moveTaskToBack(Landroid/app/Activity;)V

    .line 339
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;

    invoke-direct {v1, p0, p1, p2, v9}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$9;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liop;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v7

    .line 367
    .local v7, "activity":Landroid/app/Activity;
    if-eqz v7, :cond_3

    .line 368
    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 370
    :cond_3
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    .end local v7    # "activity":Landroid/app/Activity;
    :cond_4
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 375
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;

    .line 376
    .local v0, "h5DialogManagerProvider":Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v7

    .line 378
    .restart local v7    # "activity":Landroid/app/Activity;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v3, "\u7cfb\u7edf\u5f02\u5e38\uff0c\u6682\u65f6\u65e0\u6cd5\u542f\u52a8\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    const-string/jumbo v4, "\u786e\u8ba4"

    move-object v5, v2

    move-object v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 383
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;

    invoke-direct {v1, p0, p3, p2, v7}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin$10;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;Liny;Liop;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V

    .line 409
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;->showDialog()V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "showAlert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->showAlert(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 75
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 65
    :cond_1
    const-string/jumbo v2, "alert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->alert(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v2, "confirm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->confirm(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    goto :goto_0

    .line 69
    :cond_3
    const-string/jumbo v2, "showUCFailDialog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1081
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 70
    instance-of v2, v2, Liop;

    if-eqz v2, :cond_0

    .line 2081
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 71
    check-cast v1, Liop;

    .line 72
    .local v1, "h5Page":Liop;
    invoke-direct {p0, p1, v1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->showDialog(Lcom/alipay/mobile/h5container/api/H5Event;Liop;Liny;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 54
    const-string/jumbo v0, "showAlert"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "alert"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v0, "confirm"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "showUCFailDialog"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5AlertPlugin;->h5Alert:Lcom/alipay/mobile/nebulacore/view/H5Alert;

    .line 50
    return-void
.end method
