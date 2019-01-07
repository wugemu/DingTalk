.class final Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;
.super Lhdp;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

.field private b:Landroid/support/v7/app/AlertDialog;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-direct {p0}, Lhdp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    .prologue
    .line 1310
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)V

    return-void
.end method


# virtual methods
.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 1359
    invoke-super {p0}, Lhdp;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v1

    .line 1360
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1361
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1362
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 12
    .param p1, "message"    # Landroid/webkit/ConsoleMessage;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1320
    if-eqz p1, :cond_0

    .line 1321
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v7, "__nuvatrace__"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1323
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1324
    .local v4, "log":Ljava/lang/String;
    const-string/jumbo v7, "H5"

    const/4 v8, 0x0

    const-string/jumbo v9, "console trace"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    .end local v0    # "content":Ljava/lang/String;
    .end local v4    # "log":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v7

    sget-object v8, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    if-ne v7, v8, :cond_2

    .line 1330
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v6

    .line 1332
    .local v6, "tempMicroAppInfo":Lhfo$b;
    iget-object v7, v6, Lhfo$b;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Lhfo$b;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1333
    :cond_1
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitJsError(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 1336
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v5

    .line 1337
    .local v5, "sourceId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    .line 1339
    .local v3, "lineNumber":I
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v5, v3}, Lgvi;->jsErrorWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1341
    new-instance v2, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;

    invoke-direct {v2}, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;-><init>()V

    .line 1342
    .local v2, "jsError":Lcom/alibaba/lightapp/runtime/monitor/model/JsError;
    invoke-virtual {v2, v1}, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->setErrorMsg(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {v2, v5}, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->setSourceId(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->setLineNumber(I)V

    .line 1345
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->updateJsError(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/JsError;)V

    .line 1352
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "jsError":Lcom/alibaba/lightapp/runtime/monitor/model/JsError;
    .end local v3    # "lineNumber":I
    .end local v5    # "sourceId":Ljava/lang/String;
    .end local v6    # "tempMicroAppInfo":Lhfo$b;
    :cond_2
    invoke-super {p0, p1}, Lhdp;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v7

    return v7
.end method

.method public final onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 1485
    invoke-super {p0}, Lhdp;->onGeolocationPermissionsHidePrompt()V

    .line 1486
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->b:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 1489
    :cond_0
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
    .locals 5
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/uc/webview/export/GeolocationPermissions$Callback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1493
    invoke-super {p0, p1, p2}, Lhdp;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    .line 1494
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1495
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1496
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1497
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " wants to use your device\'s location"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1498
    const-string/jumbo v2, "Geolocation Permission"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1499
    const-string/jumbo v2, "Allow"

    new-instance v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$7;

    invoke-direct {v3, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$7;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1506
    const-string/jumbo v2, "Block"

    new-instance v3, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$8;

    invoke-direct {v3, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$8;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1513
    new-instance v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$9;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1520
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->b:Landroid/support/v7/app/AlertDialog;

    .line 1522
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public final onHideCustomView()V
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;->g()V

    .line 1536
    :cond_0
    return-void
.end method

.method public final onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1372
    invoke-super {p0, p1, p2, p3, p4}, Lhdp;->onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1374
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1375
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1376
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1377
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$1;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$1;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1384
    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$2;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$2;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1391
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1395
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public final onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/uc/webview/export/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/uc/webview/export/JsResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1400
    invoke-super {p0, p1, p2, p3, p4}, Lhdp;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1401
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1402
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1403
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1404
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1405
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$3;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$3;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1412
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$4;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$4;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1419
    new-instance v1, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$5;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$5;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Lcom/uc/webview/export/JsResult;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1426
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1431
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public final onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->i(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$c;->a(Landroid/view/View;)V

    .line 1529
    :cond_0
    return-void
.end method

.method public final onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z
    .locals 10
    .param p1, "webView"    # Lcom/uc/webview/export/WebView;
    .param p3, "fileChooserParams"    # Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/uc/webview/export/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1436
    const/4 v2, 0x0

    .line 1437
    .local v2, "acceptVideo":Z
    if-eqz p3, :cond_1

    .line 1438
    invoke-virtual {p3}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "acceptTypes":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 1440
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 1441
    .local v0, "acceptType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1442
    const-string/jumbo v6, "video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1443
    if-nez v2, :cond_1

    .line 1440
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1450
    .end local v0    # "acceptType":Ljava/lang/String;
    .end local v1    # "acceptTypes":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "H5"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RimetWebView"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "onShowFileChooser acceptVideo=>"

    aput-object v8, v7, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v3, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1451
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    new-instance v4, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d$6;-><init>(Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;Landroid/webkit/ValueCallback;)V

    invoke-static {v3, v4, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->a(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;Z)V

    .line 1459
    return v9
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 7
    .param p2, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1475
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1476
    .local v0, "acceptVideo":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1477
    const-string/jumbo v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1479
    :cond_0
    const-string/jumbo v1, "H5"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RimetWebView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "openFileChooser acceptVideo=>"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1480
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1, p1, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;Z)V

    .line 1481
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1465
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1466
    .local v0, "acceptVideo":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1467
    const-string/jumbo v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1469
    :cond_0
    const-string/jumbo v1, "H5"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "RimetWebView"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "openFileChooser with capture acceptVideo=>"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1470
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/webview/RimetWebView$d;->a:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    invoke-static {v1, p1, v0}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->b(Lcom/alibaba/lightapp/runtime/webview/RimetWebView;Landroid/webkit/ValueCallback;Z)V

    .line 1471
    return-void
.end method
