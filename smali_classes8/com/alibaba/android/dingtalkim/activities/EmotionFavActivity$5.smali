.class final Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$5;
.super Ljava/lang/Object;
.source "EmotionFavActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string/jumbo v1, "send_origin_picture"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string/jumbo v1, "album_need_preview"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string/jumbo v1, "is_start_for_result"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity$5;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionFavActivity;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 240
    return-void
.end method
