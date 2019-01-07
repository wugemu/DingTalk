.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/ImageMagician;->clearDiskCache()Z

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->clearDiskCache()Z

    .line 322
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;->a:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/doraemon/cache/Cache;->clear()Z

    .line 323
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->clearWebViewCache()V

    .line 324
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->g()V

    .line 325
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f()V

    .line 326
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->r()V

    .line 327
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->d(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 328
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1$1;-><init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method
