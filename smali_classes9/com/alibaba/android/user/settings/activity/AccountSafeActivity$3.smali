.class final Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;
.super Ljava/lang/Object;
.source "AccountSafeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

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
    .line 201
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FaceIdObject;

    .line 1204
    if-eqz p1, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->b(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3$1;-><init>(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity$3;->a:Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;->a(Lcom/alibaba/android/user/settings/activity/AccountSafeActivity;Z)V

    .line 201
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 218
    return-void
.end method
