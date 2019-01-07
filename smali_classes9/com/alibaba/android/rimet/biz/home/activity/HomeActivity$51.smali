.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$51;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 2920
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$51;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2933
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 2920
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 2920
    .line 3923
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$51;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->f(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 3924
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$51;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->E(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3925
    const-string/jumbo v0, "user_set"

    sget-object v1, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "showWelcome"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    const-string/jumbo v0, "pref_create_org_h5"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3927
    const-string/jumbo v0, "role_pop"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2920
    :cond_0
    return-void
.end method
