.class final Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;
.super Ljava/lang/Object;
.source "ToolViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcms;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1$4;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;->b:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->getEditTextFocusView()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lbrr;->a(Landroid/view/View;)V

    .line 141
    :cond_0
    return-void
.end method
