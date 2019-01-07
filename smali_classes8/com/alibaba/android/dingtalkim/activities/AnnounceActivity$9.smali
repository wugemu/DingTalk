.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->remove()V

    .line 188
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$9;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 189
    return-void
.end method
