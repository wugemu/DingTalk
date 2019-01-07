.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;->b:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;->a:Lcom/alibaba/wukong/im/Conversation;

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
    .line 299
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->remove()V

    .line 302
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$14;->b:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 303
    return-void
.end method
