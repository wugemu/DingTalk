.class final Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;
.super Ljava/lang/Object;
.source "JSPluginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->b:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->b:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->b:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->b:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$6;->b:Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->d(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
