.class final Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;
.super Ljava/lang/Object;
.source "ManageStaffActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1872
    check-cast p1, Ljava/lang/String;

    .line 2876
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2881
    const-string/jumbo v0, "data is empty"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2882
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 2883
    :cond_0
    :goto_0
    return-void

    .line 2885
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "@"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2886
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;->a:Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1896
    const-string/jumbo v0, "getOrgDomain failed,code=%s,reason=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1897
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1892
    return-void
.end method
