.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$12;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 382
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$12;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-static {}, Lcom/alibaba/dingtalk/projection/FocusInterface;->d()Lcom/alibaba/dingtalk/projection/FocusInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/projection/FocusInterface;->b()V

    .line 387
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_facebox_reenterlock_enable"

    .line 1083
    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 388
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$12;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const-string/jumbo v2, "f_facebox_reenterlock_enable"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 390
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_ant_face_detect_enable"

    .line 2083
    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 391
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$12;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const-string/jumbo v2, "f_ant_face_detect_enable"

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 392
    return-void
.end method
