.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;
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
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iput p2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$3;->a:I

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 378
    :cond_0
    return-void
.end method
