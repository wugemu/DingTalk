.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;
.super Ljava/lang/Object;
.source "LocalContactFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->b(Ljava/util/List;)V
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
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 413
    check-cast p1, Ljava/util/List;

    .line 1416
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->c(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)Lfjm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->c(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;)Lfjm;

    move-result-object v1

    .line 2072
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment$6;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactFragment;->H()V

    .line 413
    :cond_1
    return-void

    .line 2075
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lfjm;->f:Ljava/util/HashMap;

    .line 2076
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2077
    if-eqz v0, :cond_3

    .line 2078
    iget-object v3, v1, Lfjm;->f:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 424
    return-void
.end method
