.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;

    .prologue
    .line 2986
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53$1;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

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
    .line 2989
    new-instance v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53$1;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;-><init>(Landroid/content/Context;)V

    .line 2990
    .local v0, "overlay":Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$53$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 3133
    iput-object v1, v0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a:Ljava/lang/String;

    .line 2991
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->show()V

    .line 2992
    const-string/jumbo v1, "pref_key_show_anim_overlay"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2993
    return-void
.end method
