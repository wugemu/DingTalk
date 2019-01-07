.class final Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;
.super Ljava/lang/Object;
.source "DocWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;->a:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;->a:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;->a:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->a(Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;Z)Z

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity$2;->a:Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    invoke-static {v0}, Lbrr;->b(Landroid/content/Context;)V

    .line 201
    :cond_0
    return-void
.end method
