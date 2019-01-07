.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;
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
        "Lcom/alibaba/android/user/model/OrgDetailObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1300
    check-cast p1, Lcom/alibaba/android/user/model/OrgDetailObject;

    .line 2303
    if-eqz p1, :cond_0

    .line 2304
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/util/List;)Ljava/util/List;

    .line 2305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfgi;->a(Ljava/util/List;)V

    .line 2306
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v1

    invoke-virtual {v1}, Lfgi;->getCount()I

    move-result v1

    .line 2619
    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(I)V

    .line 2308
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p1, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 2311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->l(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V

    .line 2317
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2318
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 2320
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    .line 2321
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    .line 2323
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$13;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 1300
    :cond_2
    return-void

    .line 2323
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1334
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1329
    return-void
.end method
