.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 4695
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->a:Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4698
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->a:Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->a:Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4699
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->a:Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4700
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 4701
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->m()V

    .line 4702
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$86;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->al(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4704
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
