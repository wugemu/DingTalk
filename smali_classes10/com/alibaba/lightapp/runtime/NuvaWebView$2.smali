.class final Lcom/alibaba/lightapp/runtime/NuvaWebView$2;
.super Lhdp;
.source "NuvaWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/NuvaWebView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/NuvaWebView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-direct {p0}, Lhdp;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "message"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 532
    invoke-super {p0, p1}, Lhdp;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
    .locals 13
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/uc/webview/export/JsPromptResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    const-string/jumbo v11, "nuva:exec"

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 548
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 549
    .local v9, "json":Lorg/json/JSONObject;
    const-string/jumbo v11, "interface"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "interfaceName":Ljava/lang/String;
    const-string/jumbo v11, "api"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "apiName":Ljava/lang/String;
    const-string/jumbo v11, "args"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 553
    .local v3, "args":Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->a(Lcom/alibaba/lightapp/runtime/NuvaWebView;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;

    .line 554
    .local v8, "jsInterface":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;
    if-eqz v8, :cond_0

    .line 555
    invoke-interface {v8, v2, v3}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;->invoke(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    .line 556
    .local v10, "res":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v10}, Lcom/uc/webview/export/JsPromptResult;->confirm(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v2    # "apiName":Ljava/lang/String;
    .end local v3    # "args":Lorg/json/JSONObject;
    .end local v7    # "interfaceName":Ljava/lang/String;
    .end local v8    # "jsInterface":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper$a;
    .end local v9    # "json":Lorg/json/JSONObject;
    .end local v10    # "res":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p5 .. p5}, Lcom/uc/webview/export/JsPromptResult;->cancel()V

    .line 564
    const/4 v11, 0x1

    .line 603
    :goto_1
    return v11

    .line 559
    :catch_0
    move-exception v5

    .line 560
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-super/range {p0 .. p5}, Lhdp;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 568
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/NuvaWebView$2;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 569
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    .line 570
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 571
    .local v6, "editText":Landroid/widget/EditText;
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 572
    .local v4, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 573
    invoke-virtual {v4, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 574
    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 575
    const v11, 0x1040013

    invoke-virtual {v1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;

    move-object/from16 v0, p5

    invoke-direct {v12, p0, v0, v6}, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$1;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView$2;Lcom/uc/webview/export/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 582
    const v11, 0x1040009

    invoke-virtual {v1, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$2;

    move-object/from16 v0, p5

    invoke-direct {v12, p0, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$2;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView$2;Lcom/uc/webview/export/JsPromptResult;)V

    invoke-virtual {v4, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 589
    new-instance v11, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$3;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView$2$3;-><init>(Lcom/alibaba/lightapp/runtime/NuvaWebView$2;Lcom/uc/webview/export/JsPromptResult;)V

    invoke-virtual {v4, v11}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 603
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v4    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v6    # "editText":Landroid/widget/EditText;
    :goto_2
    const/4 v11, 0x1

    goto :goto_1

    .line 598
    .restart local v1    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-interface/range {p5 .. p5}, Lcom/uc/webview/export/JsPromptResult;->cancel()V

    goto :goto_2

    .line 601
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_3
    invoke-interface/range {p5 .. p5}, Lcom/uc/webview/export/JsPromptResult;->cancel()V

    goto :goto_2
.end method
