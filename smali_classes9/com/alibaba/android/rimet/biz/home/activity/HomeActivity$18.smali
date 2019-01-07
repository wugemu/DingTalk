.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 3
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1463
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    .line 1464
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1465
    .local v0, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    sget-object v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$18;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcjo$b;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1510
    .end local v0    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    return-void
.end method
