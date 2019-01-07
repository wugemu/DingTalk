.class final Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$1;
.super Ljava/lang/Object;
.source "JSPluginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$1;->a:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onHelpIconClick()V

    .line 108
    :cond_0
    return-void
.end method
