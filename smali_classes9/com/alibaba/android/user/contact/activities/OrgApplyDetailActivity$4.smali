.class final Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;
.super Ljava/lang/Object;
.source "OrgApplyDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Landroid/widget/LinearLayout;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 464
    .local v2, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 465
    .local v3, "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 467
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$4;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    const/4 v7, 0x0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZZZLandroid/os/Bundle;)V

    .line 469
    return-void
.end method
