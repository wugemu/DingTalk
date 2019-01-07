.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;
.super Ljava/lang/Object;
.source "SelectOrgTypeActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/IndustryCategoryObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 226
    const-string/jumbo v0, "loadIndustryList"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    check-cast p1, Ljava/util/List;

    .line 1215
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string/jumbo v0, "loadIndustryList"

    const-string/jumbo v1, "data is empty!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Ljava/util/List;)Ljava/util/List;

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$5;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->f(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Ljava/util/List;)V

    goto :goto_0
.end method
