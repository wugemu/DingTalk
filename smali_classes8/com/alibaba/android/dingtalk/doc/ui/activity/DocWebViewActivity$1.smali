.class final Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;
.super Ljava/lang/Object;
.source "DocWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->b(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;->b:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;->b:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;->a:Ljava/util/HashMap;

    const-string/jumbo v2, "toolbarToggle"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, "isToolbarToggle":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;->b:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcms;->p(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$1;->b:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "isToolbarToggle":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/DTControlContainerLayout;->a(Z)V

    .line 127
    :cond_0
    return-void
.end method
