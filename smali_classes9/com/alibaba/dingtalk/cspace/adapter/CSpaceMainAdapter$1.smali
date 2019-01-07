.class final Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;
.super Ljava/lang/Object;
.source "CSpaceMainAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->e:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;

    iput-wide p4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->c:J

    iput-wide p6, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->c:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->e:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->e:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->c:J

    iget-wide v8, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->d:J

    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-boolean v10, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    invoke-interface/range {v0 .. v10}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;->a(JLjava/lang/String;JJJZ)V

    .line 119
    return-void
.end method
