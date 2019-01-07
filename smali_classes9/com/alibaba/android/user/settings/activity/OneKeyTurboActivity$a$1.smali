.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 280
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/doraemon/image/ImageMagician;->getDiskCacheSize()J

    move-result-wide v4

    add-long v0, v2, v4

    .line 281
    .local v0, "size":J
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/audio/AudioMagician;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/doraemon/audio/AudioMagician;->getDiskCacheSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 282
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v4}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/cache/Cache;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/doraemon/cache/Cache;->getCacheSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 283
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v4, :cond_0

    .line 286
    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$1;->a:Lcom/alibaba/wukong/Callback;

    const-wide/32 v6, 0x100000

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .end local v0    # "size":J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 288
    :cond_0
    return-void

    .restart local v0    # "size":J
    :cond_1
    move-wide v0, v2

    .line 286
    goto :goto_0
.end method
