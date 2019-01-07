.class final Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->b:Ljava/lang/String;

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
    .line 357
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2$2;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a$2;->b:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Z)Z

    .line 362
    return-void
.end method
