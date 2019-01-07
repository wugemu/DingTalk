.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1572
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 1573
    invoke-static {v4}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 1574
    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    .line 1573
    invoke-static {v4, v5, v6}, Lflr;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1575
    .local v1, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1576
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v4, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Z)Z

    .line 1577
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->E(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->x(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_0
    invoke-static {v4, v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->c(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Z)Z

    .line 1578
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 1579
    .local v0, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 1580
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1581
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->e(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1582
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->A(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1583
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->f(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1587
    .end local v0    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->F(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$14;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1593
    return-void

    :cond_2
    move v2, v3

    .line 1577
    goto :goto_0
.end method
