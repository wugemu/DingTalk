.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Lcma;


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
        "Lcma",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->a:Ljava/util/List;

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
    .line 854
    check-cast p1, Ljava/util/Map;

    .line 1857
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 1858
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;Ljava/util/Map;)V

    .line 854
    return-void

    .line 1858
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

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
    .line 867
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->dismissLoadingDialog()V

    .line 868
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->b:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$8;->a:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;Ljava/util/Map;)V

    .line 869
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 863
    return-void
.end method
