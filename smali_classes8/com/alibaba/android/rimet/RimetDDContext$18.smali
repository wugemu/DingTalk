.class final Lcom/alibaba/android/rimet/RimetDDContext$18;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 2374
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$18;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 10
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2377
    if-nez p1, :cond_1

    .line 2425
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    iget v7, p1, Lcjo$b;->b:I

    const/16 v8, 0x3e9

    if-ne v7, v8, :cond_2

    .line 2381
    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 2382
    .local v1, "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    if-eqz v1, :cond_0

    .line 2383
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(J)V

    goto :goto_0

    .line 2385
    .end local v1    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    :cond_2
    iget v7, p1, Lcjo$b;->b:I

    const/16 v8, 0x3ea

    if-ne v7, v8, :cond_0

    .line 2387
    iget-object v6, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v6, Lcgk;

    .line 2388
    .local v6, "userProfileModel":Lcgk;
    if-eqz v6, :cond_0

    .line 2389
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 2390
    .local v3, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v7, v6, Lcgk;->a:Ljava/lang/Long;

    .line 3044
    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2391
    .local v4, "uid":J
    iget-object v0, v6, Lcgk;->s:Ljava/lang/String;

    .line 2392
    .local v0, "email":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    cmp-long v7, v8, v4

    if-nez v7, :cond_0

    .line 2394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2396
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 2397
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    .line 2398
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2399
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/rimet/RimetDDContext$18$1;

    invoke-direct {v8, p0, v3}, Lcom/alibaba/android/rimet/RimetDDContext$18$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$18;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2409
    :cond_3
    const/4 v7, 0x0

    iput-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 2410
    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mIsEmailBind:Z

    .line 2411
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2412
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/rimet/RimetDDContext$18$2;

    invoke-direct {v8, p0, v3}, Lcom/alibaba/android/rimet/RimetDDContext$18$2;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$18;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2419
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "action_mail_force_out_account"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2420
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/alibaba/android/rimet/RimetDDContext$18;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v7}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    invoke-virtual {v7, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
