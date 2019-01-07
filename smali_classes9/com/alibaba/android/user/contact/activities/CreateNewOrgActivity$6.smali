.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 727
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 713
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 713
    check-cast p1, Ljava/util/List;

    .line 1717
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 1719
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$6;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)V

    .line 713
    return-void
.end method
