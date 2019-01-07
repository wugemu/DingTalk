.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7;->b:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$7$1$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 272
    return-void
.end method
