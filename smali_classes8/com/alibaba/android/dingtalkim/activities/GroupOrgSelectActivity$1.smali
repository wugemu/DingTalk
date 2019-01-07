.class final Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;
.super Ljava/lang/Object;
.source "GroupOrgSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    move-object v0, v2

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 86
    .local v0, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->a(Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;-><init>()V

    .line 88
    .local v1, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgId:Ljava/lang/String;

    .line 89
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    .line 90
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->coopId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->corpId:Ljava/lang/String;

    .line 91
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->token:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->token:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)V

    goto :goto_0

    .line 95
    .end local v1    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    :cond_2
    if-eqz v0, :cond_0

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupOrgSelectActivity;->b(Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    goto :goto_0
.end method
