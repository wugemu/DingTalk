.class public Lcom/taobao/weex/ui/module/WXModalUIModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXModalUIModule.java"


# static fields
.field public static final CANCEL:Ljava/lang/String; = "Cancel"

.field public static final CANCEL_TITLE:Ljava/lang/String; = "cancelTitle"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OK_TITLE:Ljava/lang/String; = "okTitle"

.field public static final RESULT:Ljava/lang/String; = "result"


# instance fields
.field private activeDialog:Landroid/app/Dialog;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/module/WXModalUIModule;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/module/WXModalUIModule;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private tracking(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    .line 252
    new-instance v0, Lcom/taobao/weex/ui/module/WXModalUIModule$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/module/WXModalUIModule$6;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 258
    return-void
.end method


# virtual methods
.method public alert(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 7
    .param p1, "jsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    iget-object v6, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_3

    .line 104
    const-string/jumbo v3, ""

    .line 105
    .local v3, "message":Ljava/lang/String;
    const-string/jumbo v4, "OK"

    .line 106
    .local v4, "okTitle":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    const-string/jumbo v6, "message"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string/jumbo v6, "okTitle"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 114
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    const-string/jumbo v3, ""

    .line 117
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v5, "OK"

    .line 121
    .local v5, "okTitle_f":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/taobao/weex/ui/module/WXModalUIModule$1;

    invoke-direct {v6, p0, p2, v5}, Lcom/taobao/weex/ui/module/WXModalUIModule$1;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    .line 136
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okTitle":Ljava/lang/String;
    .end local v5    # "okTitle_f":Ljava/lang/String;
    :goto_2
    return-void

    .line 110
    .restart local v3    # "message":Ljava/lang/String;
    .restart local v4    # "okTitle":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "[WXModalUIModule] alert param parse error "

    invoke-static {v6, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v5, v4

    .line 120
    goto :goto_1

    .line 134
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "okTitle":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "[WXModalUIModule] when call alert mWXSDKInstance.getContext() must instanceof Activity"

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public confirm(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 9
    .param p1, "jsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v8, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-eqz v8, :cond_4

    .line 142
    const-string/jumbo v5, ""

    .line 143
    .local v5, "message":Ljava/lang/String;
    const-string/jumbo v6, "OK"

    .line 144
    .local v6, "okTitle":Ljava/lang/String;
    const-string/jumbo v2, "Cancel"

    .line 146
    .local v2, "cancelTitle":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 148
    :try_start_0
    const-string/jumbo v8, "message"

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    const-string/jumbo v8, "okTitle"

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    const-string/jumbo v8, "cancelTitle"

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 155
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 156
    const-string/jumbo v5, ""

    .line 158
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v8}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v7, "OK"

    .line 162
    .local v7, "okTitleFinal":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v3, "Cancel"

    .line 164
    .local v3, "cancelTitleFinal":Ljava/lang/String;
    :goto_2
    new-instance v8, Lcom/taobao/weex/ui/module/WXModalUIModule$2;

    invoke-direct {v8, p0, p2, v7}, Lcom/taobao/weex/ui/module/WXModalUIModule$2;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    new-instance v8, Lcom/taobao/weex/ui/module/WXModalUIModule$3;

    invoke-direct {v8, p0, p2, v3}, Lcom/taobao/weex/ui/module/WXModalUIModule$3;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 181
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 183
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    .line 187
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v3    # "cancelTitleFinal":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "okTitle":Ljava/lang/String;
    .end local v7    # "okTitleFinal":Ljava/lang/String;
    :goto_3
    return-void

    .line 151
    .restart local v2    # "cancelTitle":Ljava/lang/String;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v6    # "okTitle":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 152
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "[WXModalUIModule] confirm param parse error "

    invoke-static {v8, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v7, v6

    .line 161
    goto :goto_1

    .restart local v7    # "okTitleFinal":Ljava/lang/String;
    :cond_3
    move-object v3, v2

    .line 162
    goto :goto_2

    .line 185
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "okTitle":Ljava/lang/String;
    .end local v7    # "okTitleFinal":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "[WXModalUIModule] when call confirm mWXSDKInstance.getContext() must instanceof Activity"

    invoke-static {v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const-string/jumbo v0, "Dismiss the active dialog"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->activeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 266
    :cond_0
    return-void
.end method

.method public prompt(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 12
    .param p1, "jsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget-object v10, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v10

    instance-of v10, v10, Landroid/app/Activity;

    if-eqz v10, :cond_4

    .line 192
    const-string/jumbo v7, ""

    .line 193
    .local v7, "message":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 194
    .local v4, "defaultValue":Ljava/lang/String;
    const-string/jumbo v8, "OK"

    .line 195
    .local v8, "okTitle":Ljava/lang/String;
    const-string/jumbo v2, "Cancel"

    .line 197
    .local v2, "cancelTitle":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 199
    :try_start_0
    const-string/jumbo v10, "message"

    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 200
    const-string/jumbo v10, "okTitle"

    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    const-string/jumbo v10, "cancelTitle"

    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string/jumbo v10, "default"

    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 208
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 209
    const-string/jumbo v7, ""

    .line 211
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    new-instance v6, Landroid/widget/EditText;

    iget-object v10, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 215
    .local v6, "editText":Landroid/widget/EditText;
    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v9, "OK"

    .line 218
    .local v9, "okTitleFinal":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v3, "Cancel"

    .line 219
    .local v3, "cancelTitleFinal":Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/taobao/weex/ui/module/WXModalUIModule$5;

    invoke-direct {v10, p0, p2, v9, v6}, Lcom/taobao/weex/ui/module/WXModalUIModule$5;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/taobao/weex/ui/module/WXModalUIModule$4;

    invoke-direct {v11, p0, p2, v3, v6}, Lcom/taobao/weex/ui/module/WXModalUIModule$4;-><init>(Lcom/taobao/weex/ui/module/WXModalUIModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Landroid/widget/EditText;)V

    .line 229
    invoke-virtual {v10, v3, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 244
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/module/WXModalUIModule;->tracking(Landroid/app/Dialog;)V

    .line 248
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v3    # "cancelTitleFinal":Ljava/lang/String;
    .end local v4    # "defaultValue":Ljava/lang/String;
    .end local v6    # "editText":Landroid/widget/EditText;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "okTitle":Ljava/lang/String;
    .end local v9    # "okTitleFinal":Ljava/lang/String;
    :goto_3
    return-void

    .line 203
    .restart local v2    # "cancelTitle":Ljava/lang/String;
    .restart local v4    # "defaultValue":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .restart local v8    # "okTitle":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "[WXModalUIModule] confirm param parse error "

    invoke-static {v10, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v6    # "editText":Landroid/widget/EditText;
    :cond_2
    move-object v9, v8

    .line 217
    goto :goto_1

    .restart local v9    # "okTitleFinal":Ljava/lang/String;
    :cond_3
    move-object v3, v2

    .line 218
    goto :goto_2

    .line 246
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancelTitle":Ljava/lang/String;
    .end local v4    # "defaultValue":Ljava/lang/String;
    .end local v6    # "editText":Landroid/widget/EditText;
    .end local v7    # "message":Ljava/lang/String;
    .end local v8    # "okTitle":Ljava/lang/String;
    .end local v9    # "okTitleFinal":Ljava/lang/String;
    :cond_4
    const-string/jumbo v10, "when call prompt mWXSDKInstance.getContext() must instanceof Activity"

    invoke-static {v10}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public toast(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "jsObj"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 97
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string/jumbo v2, ""

    .line 68
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 69
    .local v0, "duration":I
    if-eqz p1, :cond_1

    .line 71
    :try_start_0
    const-string/jumbo v3, "message"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "duration"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string/jumbo v3, "duration"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 79
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    const-string/jumbo v3, "[WXModalUIModule] toast param parse is null "

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WXModalUIModule] alert param parse error "

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 85
    const/4 v0, 0x1

    .line 89
    :goto_2
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    if-nez v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    .line 95
    :goto_3
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 96
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 92
    :cond_4
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 93
    iget-object v3, p0, Lcom/taobao/weex/ui/module/WXModalUIModule;->toast:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
