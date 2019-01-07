.class final Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;
.super Ljava/lang/Object;
.source "ToolViewPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->getInsertLinkResult()Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$400(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 113
    .end local v0    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 114
    return-void

    .line 110
    .restart local v0    # "result":Lorg/json/JSONObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbqt$f;->dt_doc_no_content:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
