.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;
.super Ljava/lang/Object;
.source "SelectOrgTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;
    .param p2, "mIndustry"    # Ljava/lang/String;
    .param p3, "mIndustryObject"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;->a:Ljava/lang/String;

    .line 411
    iput-object p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$b;->b:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 412
    return-void
.end method
