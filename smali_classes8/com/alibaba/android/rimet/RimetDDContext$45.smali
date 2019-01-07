.class final Lcom/alibaba/android/rimet/RimetDDContext$45;
.super Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initDingtalkMiddle()V
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
    .line 574
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1169
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string/jumbo v0, "com.alibaba.android.rimet"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1315
    invoke-static {}, Leix;->a()Leix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Leix;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1330
    invoke-static {}, Leko;->a()Leko;

    invoke-static {p1, p2, p3}, Leko;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1120
    invoke-static {}, Lejv;->a()Lejv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lejv;->a(II)V

    .line 1121
    return-void
.end method

.method public final a(IILcmi;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcmi",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p3, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 1247
    const-class v1, Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;

    .line 1248
    .local v0, "service":Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/alibaba/android/rimet/biz/idl/service/CsConfigIService;->log(Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 1249
    return-void
.end method

.method public final a(ILandroid/app/Notification;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lekg;->a(ILandroid/app/Notification;I)V

    .line 1093
    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 4
    .param p1, "orgId"    # J
    .param p3, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 1498
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$200(Lcom/alibaba/android/rimet/RimetDDContext;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$45$9;

    const-wide/16 v2, 0x1

    invoke-direct {v1, p0, p3, v2, v3}, Lcom/alibaba/android/rimet/RimetDDContext$45$9;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 919
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getTempToken()Ljava/lang/String;

    move-result-object v1

    .line 920
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getKickOutMsg()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 922
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    .line 927
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 928
    return-void

    .line 925
    :cond_0
    invoke-static {p1, v1, v0}, Leme;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;III)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tab"    # I
    .param p3, "unreadCount"    # I
    .param p4, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1076
    instance-of v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    if-eqz v0, :cond_1

    .line 1078
    check-cast p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 6590
    .end local p1    # "activity":Landroid/app/Activity;
    iget-object v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    if-eqz v0, :cond_0

    .line 6591
    iget-object v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->h:Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTab;->a(I)Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p3}, Lcom/alibaba/android/rimet/biz/home/widget/HomeBottomTabButton;->a(III)V

    .line 6592
    iput p3, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d:I

    .line 6594
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    if-eqz v0, :cond_1

    .line 6595
    iget-object v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->j:Lejq;

    .line 7126
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 7127
    new-instance v2, Lejq$2;

    invoke-direct {v2, v0}, Lejq$2;-><init>(Lejq;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1083
    :cond_1
    return-void
.end method

.method public final a(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 665
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 666
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 667
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 668
    return-void
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "senderId"    # J

    .prologue
    .line 1191
    invoke-static {p1, p2, p3}, Legf;->a(Landroid/app/Activity;J)V

    .line 1192
    return-void
.end method

.method public final a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "msgId"    # J
    .param p4, "fileIcon"    # I
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "fileSize"    # Ljava/lang/String;
    .param p7, "fileUrl"    # Ljava/lang/String;
    .param p8, "fileType"    # Ljava/lang/String;
    .param p9, "orgId"    # J

    .prologue
    .line 902
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v11

    const-string/jumbo v12, "https://qr.dingtalk.com/file/download.html"

    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$45$3;

    move-object v1, p0

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/android/rimet/RimetDDContext$45$3;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v11, v12, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 915
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1174
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1175
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 618
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    iget-object v2, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    .line 619
    invoke-virtual {v2}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/rimet/RimetDDContext$45$1;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/rimet/RimetDDContext$45$1;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 629
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;ZZZLjava/lang/String;Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "hideListBtn"    # Z
    .param p4, "showOriginBtn"    # Z
    .param p5, "cacheList"    # Z
    .param p6, "cacheKey"    # Ljava/lang/String;
    .param p7, "fetcher"    # Ljava/lang/Object;
    .param p8, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 782
    const-string/jumbo v0, "hide_list_button"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 783
    const-string/jumbo v0, "is_cache_list"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    const-string/jumbo v0, "cache_key"

    invoke-virtual {p2, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    check-cast p7, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;

    .end local p7    # "fetcher":Ljava/lang/Object;
    move-object v2, p7

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/rimet/RimetDDContext$45;->a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 786
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "hideListBtn"    # Z
    .param p4, "showOriginBtn"    # Z
    .param p5, "photoArray"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 769
    const-string/jumbo v0, "hide_list_button"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 770
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/rimet/RimetDDContext$45;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 771
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "hideListBtn"    # Z
    .param p4, "showOriginBtn"    # Z
    .param p5, "photoArray"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p6, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 776
    const-string/jumbo v0, "hide_list_button"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move-object v5, p2

    .line 777
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/rimet/RimetDDContext$45;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 778
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "encryptPhotoObjectsFetcher"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 842
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pic_list.html"

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45$15;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/alibaba/android/rimet/RimetDDContext$45$15;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 855
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;ZLandroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fetcher"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "showOriginBtn"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 734
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/gallery.html"

    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$45$12;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/rimet/RimetDDContext$45$12;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Z)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 752
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fetcher"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    .param p3, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p4, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 827
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pic_list.html"

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45$14;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/alibaba/android/rimet/RimetDDContext$45$14;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 838
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fetcher"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    .param p3, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p4, "showOriginBtn"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 713
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/gallery.html"

    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$45$11;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/rimet/RimetDDContext$45$11;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;Landroid/app/Activity;Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 730
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 864
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/enterprise/settings.html"

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45$2;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/rimet/RimetDDContext$45$2;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 873
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "jump2ConversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 932
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$45$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/rimet/RimetDDContext$45$4;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lekw;->a(Lcom/alibaba/wukong/Callback;)V

    .line 954
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 672
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/album.html"

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45$8;

    invoke-direct {v2, p0, p3}, Lcom/alibaba/android/rimet/RimetDDContext$45$8;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, p2, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 681
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "targetAction"    # Ljava/lang/String;
    .param p4, "maxSelection"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1125
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/common/filepicker.html"

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45$6;

    invoke-direct {v2, p0, p3, p4}, Lcom/alibaba/android/rimet/RimetDDContext$45$6;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p2, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1137
    return-void
.end method

.method public final a(Landroid/app/Activity;ZZZLjava/lang/String;IZZZZLcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "save"    # Z
    .param p3, "origin"    # Z
    .param p4, "forResult"    # Z
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "requestCode"    # I
    .param p7, "preCompress"    # Z
    .param p8, "preDecode"    # Z
    .param p9, "includeVideo"    # Z
    .param p10, "compressVideo"    # Z
    .param p11, "videoCompressWorker"    # Lcom/alibaba/laiwang/photokit/picker/VideoCompressWorker;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 649
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/biz/im/activities/AlbumActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "completed_back_to_target_action"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string/jumbo v1, "send_origin_picture"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 652
    const-string/jumbo v1, "album_need_save"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    const-string/jumbo v1, "is_start_for_result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    const-string/jumbo v1, "album_need_pre_compress"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    const-string/jumbo v1, "album_need_pre_decode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    const-string/jumbo v1, "album_show_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 657
    const-string/jumbo v1, "video_compress"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    const-string/jumbo v1, "video_compress_worker"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 660
    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 661
    return-void
.end method

.method public final a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "datas"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p4, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 812
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pic_list.html"

    new-instance v2, Lcom/alibaba/android/rimet/RimetDDContext$45$13;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/alibaba/android/rimet/RimetDDContext$45$13;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 823
    return-void
.end method

.method public final a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "datas"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p4, "showOriginBtn"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 692
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v7

    const-string/jumbo v8, "https://qr.dingtalk.com/gallery.html"

    new-instance v0, Lcom/alibaba/android/rimet/RimetDDContext$45$10;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/rimet/RimetDDContext$45$10;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Landroid/os/Bundle;Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 709
    return-void
.end method

.method public final a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZZZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "photoArray"    # [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "current"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p4, "showOriginButton"    # Z
    .param p5, "showFavoriteButton"    # Z
    .param p6, "showSave2SpaceButton"    # Z
    .param p7, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 791
    new-instance v6, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 793
    .local v6, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "favorite_enter_hide"

    const-string/jumbo v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string/jumbo v0, "save_space_enter_hide"

    const-string/jumbo v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    array-length v1, p2

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v7, p2, v0

    .line 800
    .local v7, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v7, :cond_0

    .line 801
    iput-object v6, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 799
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 805
    .end local v7    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_1
    iput-object v6, p3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 807
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/rimet/RimetDDContext$45;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 808
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1263
    iget-object v3, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1265
    .local v0, "context":Landroid/content/Context;
    const v3, 0x13783

    const/high16 v4, 0x10000000

    invoke-static {v0, v3, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1268
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1269
    .local v1, "mgr":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1271
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 1272
    return-void
.end method

.method public final a(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    .line 1088
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 958
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/RimetDDContext$45$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/rimet/RimetDDContext$45$5;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Lekw;->a(Lcom/alibaba/wukong/Callback;)V

    .line 1019
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;Z)V
    .locals 20
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "unreadAllEncrypt"    # Z

    .prologue
    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v2}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v3

    .line 7170
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v2

    invoke-virtual {v2}, Lccq;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7173
    if-eqz p1, :cond_1

    .line 8027
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8029
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v4, 0x12d

    if-eq v2, v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v4, 0x12c

    if-ne v2, v4, :cond_2

    .line 8030
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c(J)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v2

    .line 8031
    if-eqz v2, :cond_2

    iget-wide v4, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v6, 0x9e

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    .line 8032
    const/4 v2, 0x1

    .line 7176
    :goto_0
    if-eqz v2, :cond_3

    .line 7177
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lekg;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 8081
    :cond_1
    :goto_1
    return-void

    .line 8036
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 7179
    :cond_3
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7182
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v9

    .line 7183
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lekg;->a(Ljava/lang/String;)I

    move-result v8

    .line 7184
    invoke-virtual {v3, v8}, Lekg;->a(I)Lekg$a;

    move-result-object v6

    .line 7185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7186
    iput-wide v4, v6, Lekg$a;->a:J

    .line 7187
    invoke-static {}, Lekh;->a()Lekh;

    move-result-object v10

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    new-instance v2, Lekg$4;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v9}, Lekg$4;-><init>(Lekg;JLekg$a;Lcom/alibaba/wukong/im/Message;II)V

    .line 8059
    if-eqz v11, :cond_4

    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8060
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    .line 8061
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->NOTIFICATION:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v12

    .line 8062
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v13

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v16

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v18

    new-instance v4, Lekh$1;

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object v10, v2

    invoke-direct/range {v4 .. v10}, Lekh$1;-><init>(Lekh;Landroid/content/Context;Lcom/alibaba/wukong/im/Message;ZILcom/alibaba/wukong/Callback;)V

    move-object v6, v13

    move-object v7, v14

    move-wide/from16 v8, v16

    move-wide/from16 v10, v18

    move-object v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_1

    .line 8083
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v2

    .line 5649
    iget-object v0, v2, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 5651
    iget-object v0, v2, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 5652
    if-eqz v0, :cond_2

    .line 5653
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5654
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5655
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5656
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5658
    if-eqz v0, :cond_1

    iget-object v1, v2, Lekg;->b:Landroid/app/NotificationManager;

    if-eqz v1, :cond_1

    .line 5660
    :try_start_0
    iget-object v1, v2, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5665
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5661
    :catch_0
    move-exception v0

    .line 5662
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1059
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "mid"    # J

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    .line 8281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8282
    invoke-virtual {v0, p1}, Lekg;->a(Ljava/lang/String;)I

    move-result v1

    .line 8283
    invoke-virtual {v0, v1}, Lekg;->a(I)Lekg$a;

    move-result-object v2

    .line 8284
    iget-wide v4, v2, Lekg$a;->b:J

    cmp-long v3, v4, p2

    if-nez v3, :cond_0

    .line 8286
    :try_start_0
    iget-object v3, v0, Lekg;->b:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 8287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lekg$a;->a:J

    .line 8288
    iget-object v0, v0, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8292
    :cond_0
    :goto_0
    return-void

    .line 8290
    :catch_0
    move-exception v0

    .line 8291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Liyv;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1205
    .local p2, "callback":Liyv;, "Liyv<Ljava/lang/String;>;"
    const-string/jumbo v3, "main"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1206
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lekm$a;->a(Landroid/os/IBinder;)Lekm;

    move-result-object v2

    .line 1208
    .local v2, "service":Lekm;
    :try_start_0
    new-instance v3, Lcom/alibaba/android/rimet/RimetDDContext$45$7;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/android/rimet/RimetDDContext$45$7;-><init>(Lcom/alibaba/android/rimet/RimetDDContext$45;Liyv;)V

    invoke-interface {v2, p1, v3}, Lekm;->a(Ljava/lang/String;Lekl;)V

    .line 1232
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcja;->c()V

    .line 1235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "bridge"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lciz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 578
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    const/4 v1, 0x0

    .line 5175
    iput-boolean v1, v0, Lekg;->c:Z

    .line 579
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1325
    invoke-static {}, Leko;->a()Leko;

    .line 11072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11073
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v0, v1, :cond_2

    .line 11074
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "module and key should not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11079
    :cond_1
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11080
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11081
    invoke-static {v0, p3}, Leko;->a(Ljava/lang/String;Z)Z

    move-result p3

    .line 11095
    .end local p3    # "defValue":Z
    :cond_2
    :goto_0
    return p3

    .line 11084
    .restart local p3    # "defValue":Z
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 11085
    if-eqz v0, :cond_4

    .line 11086
    const/4 p3, 0x1

    goto :goto_0

    .line 11093
    :cond_4
    invoke-static {}, Leix;->a()Leix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Leix;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11094
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 11095
    invoke-static {v0, p3}, Leko;->a(Ljava/lang/String;Z)Z

    move-result p3

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getWKUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1023
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(Landroid/app/Activity;)V

    .line 1024
    return-void
.end method

.method public final b(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 685
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 687
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 688
    return-void
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 882
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 886
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 887
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    .line 8266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8267
    invoke-virtual {v0, p1}, Lekg;->a(Ljava/lang/String;)I

    move-result v1

    .line 8268
    invoke-virtual {v0, v1}, Lekg;->a(I)Lekg$a;

    move-result-object v2

    .line 8270
    :try_start_0
    iget-object v3, v0, Lekg;->b:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 8271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lekg$a;->a:J

    .line 8272
    iget-object v0, v0, Lekg;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8276
    :cond_0
    :goto_0
    return-void

    .line 8274
    :catch_0
    move-exception v0

    .line 8275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Liyv;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgtp;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1241
    .local p2, "callback":Liyv;, "Liyv<Lgtp;>;"
    const-class v1, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;

    .line 1242
    .local v0, "service":Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;->checkUrl(Ljava/lang/String;Liyv;)V

    .line 1243
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x4db9

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lekg;->a(Landroid/content/Context;)Lekg;

    move-result-object v0

    .line 11681
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11686
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 11689
    .end local p1    # "title":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11690
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 11694
    .end local p2    # "content":Ljava/lang/String;
    :cond_1
    iget v1, v0, Lekg;->g:I

    if-ge v1, v3, :cond_5

    .line 11695
    iput v3, v0, Lekg;->g:I

    .line 11699
    :goto_0
    iget v1, v0, Lekg;->g:I

    const/16 v2, 0x4dc6

    if-le v1, v2, :cond_2

    .line 11700
    iput v3, v0, Lekg;->g:I

    .line 11704
    :cond_2
    :try_start_0
    iget-object v1, v0, Lekg;->a:Landroid/content/Context;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Calendar:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v1, v2}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;

    move-result-object v4

    .line 11707
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11708
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11709
    const-string/jumbo v3, "to_page"

    const-string/jumbo v5, "to_common"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11710
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11711
    const-string/jumbo v3, "/ding/home.html"

    invoke-static {v3, v2}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11712
    iget-object v2, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11713
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11714
    iget-object v2, v0, Lekg;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 11715
    new-instance v2, Landroid/support/v4/app/NotificationCompat$a$a;

    const v3, 0x7f020dfe

    invoke-direct {v2, v3, p1, v1}, Landroid/support/v4/app/NotificationCompat$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 11718
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$a$a;->a()Landroid/support/v4/app/NotificationCompat$a;

    move-result-object v1

    .line 11721
    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 11722
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 11723
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, v0, Lekg;->a:Landroid/content/Context;

    .line 11724
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020dfe

    invoke-static {v3, v5}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f020dff

    .line 11725
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 11726
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, -0xffff01

    const/16 v5, 0x3e8

    const/16 v6, 0x3e8

    .line 11727
    invoke-virtual {v2, v3, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$o;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$o;-><init>()V

    .line 11728
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$o;->a(Landroid/support/v4/app/NotificationCompat$a;)Landroid/support/v4/app/NotificationCompat$o;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$e;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 11731
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 11732
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11733
    const-string/jumbo v3, "to_page"

    const-string/jumbo v5, "to_common"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11734
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11735
    const-string/jumbo v3, "/ding/home.html"

    invoke-static {v3, v2}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 11736
    iget-object v2, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11737
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11738
    iget-object v2, v0, Lekg;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 11739
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 11740
    invoke-virtual {v0, v4}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 11741
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 11744
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v1

    invoke-virtual {v1}, Lcmp;->d()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lekg;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 11745
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->e()Lchj;

    move-result-object v1

    invoke-virtual {v1}, Lchj;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11746
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 11748
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->e()Lchj;

    move-result-object v1

    .line 12029
    iget v1, v1, Lchj;->a:I

    .line 11749
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v2

    invoke-virtual {v2}, Lccq;->e()Lchj;

    move-result-object v2

    invoke-virtual {v2}, Lchj;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11750
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lccq;->a(II)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v4, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 11758
    :goto_1
    const/16 v1, 0xc80

    const/4 v2, 0x0

    iget v3, v0, Lekg;->g:I

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lekg;->a(ILjava/lang/String;ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11761
    :cond_4
    :goto_2
    return-void

    .line 11697
    :cond_5
    iget v1, v0, Lekg;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lekg;->g:I

    goto/16 :goto_0

    .line 11752
    :cond_6
    :try_start_1
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 11759
    :catch_0
    move-exception v0

    .line 11760
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 11755
    :cond_7
    :try_start_2
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v4, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final b(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/alibaba/android/rimet/utils/UrlUtils;->c(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1184
    instance-of v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    if-eqz v0, :cond_0

    .line 1185
    check-cast p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 8523
    .end local p1    # "activity":Landroid/app/Activity;
    iget-object v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    .line 1185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 1187
    :cond_0
    return-void
.end method

.method public final c(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 891
    if-eqz p1, :cond_1

    .line 892
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/rimet/biz/im/activities/BackgroundAudioActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 893
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 894
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 896
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 898
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1276
    if-eqz p1, :cond_0

    const-string/jumbo v5, "http://mtl3.alibaba-inc.com/rpc/apatch/get_data_via_id.json"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1278
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "dynamicdeploy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1280
    .local v0, "dynamicdeploy":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 1294
    .end local v0    # "dynamicdeploy":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return v4

    .line 1283
    .restart local v0    # "dynamicdeploy":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v5, "url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1284
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1287
    iget-object v5, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v5, v3}, Lcom/alibaba/android/rimet/RimetDDContext;->access$100(Lcom/alibaba/android/rimet/RimetDDContext;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    const/4 v4, 0x1

    goto :goto_0

    .line 1289
    .end local v0    # "dynamicdeploy":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1290
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final d(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1476
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    if-eqz v0, :cond_0

    .line 1477
    check-cast p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .line 12783
    .end local p1    # "activity":Landroid/app/Activity;
    iget v0, p1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->i:I

    .line 1479
    :goto_0
    return v0

    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 603
    const-string/jumbo v0, "/bokui_transfer.html"

    .line 5225
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 603
    return-object v0
.end method

.method public final d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1154
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1155
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1301
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1302
    .local v3, "uri":Landroid/net/Uri;
    const-string/jumbo v5, "ver"

    invoke-static {v3, v5}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1303
    .local v4, "version":Ljava/lang/String;
    const-string/jumbo v5, "url"

    invoke-static {v3, v5}, Lcom/alibaba/android/rimet/utils/UrlUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    .local v2, "tmpUrl":Ljava/lang/String;
    new-instance v1, Lejj;

    invoke-direct {v1}, Lejj;-><init>()V

    .line 1305
    .local v1, "fastConfigInterface":Leiw;
    invoke-interface {v1, v2, v4}, Leiw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    const/4 v5, 0x1

    .end local v1    # "fastConfigInterface":Leiw;
    .end local v2    # "tmpUrl":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "version":Ljava/lang/String;
    :goto_0
    return v5

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1308
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    const-string/jumbo v0, "com.alibaba.android.rimet.category.TRANSFER"

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1320
    invoke-static {}, Leix;->a()Leix;

    move-result-object v0

    .line 10097
    const-string/jumbo v1, "urlsetting"

    invoke-virtual {v0, v1, p1}, Leix;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10098
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10099
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 10102
    :cond_0
    const-string/jumbo v0, "FastConfigEngine"

    const-string/jumbo v2, "getUrlsettingKeyValue, before, value"

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10103
    const-string/jumbo v0, "{{corpid}}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 10104
    const-string/jumbo v2, "\\{\\{corpid\\}\\}"

    .line 11022
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 11024
    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    .line 10104
    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10107
    :goto_2
    const-string/jumbo v1, "{{userid}}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 10108
    const-string/jumbo v2, "\\{\\{userid\\}\\}"

    .line 11029
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 11031
    if-nez v1, :cond_4

    const-string/jumbo v1, ""

    .line 10108
    :goto_3
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10111
    :cond_1
    const-string/jumbo v1, "{{dingtalkid}}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 10112
    const-string/jumbo v2, "\\{\\{dingtalkid\\}\\}"

    .line 11035
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 11036
    if-nez v1, :cond_5

    const-string/jumbo v1, ""

    .line 10112
    :goto_4
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10114
    :cond_2
    const-string/jumbo v1, "FastConfigEngine"

    const-string/jumbo v2, "getUrlsettingKeyValue, after, value"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11024
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11031
    :cond_4
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    goto :goto_3

    .line 11036
    :cond_5
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method public final f()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$45;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getCurrentUid()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 1196
    invoke-static {}, Lele;->d()Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;
    .locals 1

    .prologue
    .line 1201
    invoke-static {}, Lekw;->b()Lekw;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1258
    invoke-static {}, Leii;->a()Leii;

    move-result-object v0

    const-string/jumbo v1, "oa_user"

    .line 9120
    iget-object v2, v0, Leii;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9124
    invoke-static {v1}, Leii;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 9125
    new-instance v4, Lejx;

    invoke-direct {v4}, Lejx;-><init>()V

    .line 9126
    iput-object v1, v4, Lejx;->b:Ljava/lang/String;

    .line 9127
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lejx;->a:Ljava/lang/Long;

    .line 9128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9129
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9131
    invoke-virtual {v0, v1}, Leii;->b(Ljava/util/List;)V

    .line 1259
    :cond_0
    return-void
.end method

.method public final init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 1165
    return-void
.end method

.method public final j()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1489
    invoke-static {}, Leim;->a()Leim;

    invoke-static {}, Leim;->b()J

    move-result-wide v0

    .line 1490
    .local v0, "orgId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1491
    const/4 v2, 0x0

    .line 1493
    :goto_0
    return v2

    :cond_0
    invoke-static {}, Leim;->a()Leim;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leim;->c(J)Z

    move-result v2

    goto :goto_0
.end method
