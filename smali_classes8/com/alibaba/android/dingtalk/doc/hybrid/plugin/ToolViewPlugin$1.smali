.class final Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;
.super Ljava/lang/Object;
.source "ToolViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->showLinkEdit(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 76
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$000(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/content/Context;

    move-result-object v1

    .line 77
    .local v1, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    if-eqz v6, :cond_0

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {v1}, Lcms;->p(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "link"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "link":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "text"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "text":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "textPlaceholder"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "textHint":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "linkPlaceholder"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "linkHint":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$f;->dt_doc_insert_text_placeholder:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$f;->dt_doc_insert_address_placeholder:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_3
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$100(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/app/AlertDialog;

    move-result-object v6

    if-nez v6, :cond_5

    .line 97
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$200(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v6

    if-nez v6, :cond_4

    .line 99
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    new-instance v7, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    invoke-direct {v7, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$302(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    .line 101
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$f;->dt_doc_insert_approval_btn:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;

    invoke-direct {v7, p0, v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;-><init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;Landroid/content/Context;)V

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbqt$f;->dt_doc_btn_cancel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$2;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$2;-><init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;)V

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    new-instance v6, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$3;-><init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;)V

    .line 1175
    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->b:Landroid/content/DialogInterface$OnDismissListener;

    .line 127
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$102(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 130
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 131
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v6

    .line 2089
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2090
    iput-object v2, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a:Ljava/lang/String;

    .line 2091
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v7, :cond_6

    .line 2092
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2097
    iput-object v4, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->b:Ljava/lang/String;

    .line 2098
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v7, :cond_7

    .line 2099
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v8, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2103
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2104
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v7, :cond_8

    .line 2105
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v7, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2109
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2110
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v7, :cond_9

    .line 2111
    iget-object v6, v6, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v6, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 133
    :cond_9
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v6}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$100(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 135
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;-><init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
