.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;

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
    .line 469
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 470
    .local v0, "builderTrace":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "getUserProfileExtensionObject&getAlias success:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 471
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 472
    const-string/jumbo v1, " time:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 474
    sget-object v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1$1;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->g(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V

    .line 476
    return-void
.end method
