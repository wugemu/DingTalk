.class final Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;
.super Ljava/lang/Object;
.source "CommonSecondarySessionListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1113
    if-eqz p1, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "CommonSecondarySessionListActivity"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "getUserProfile error:code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 129
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 124
    return-void
.end method
