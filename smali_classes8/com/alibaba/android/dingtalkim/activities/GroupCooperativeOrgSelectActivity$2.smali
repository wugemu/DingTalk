.class final Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;
.super Ljava/lang/Object;
.source "GroupCooperativeOrgSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 109
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->b(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    if-nez v4, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 114
    .local v1, "orgIdNameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v1, :cond_0

    .line 115
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "orgIdNameObjectSelect":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    const/4 v3, 0x0

    .line 118
    .local v3, "selectCount":I
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->c(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 119
    .local v0, "nameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    if-eqz v0, :cond_2

    .line 124
    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    iget-wide v8, v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 125
    iget-boolean v4, v1, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    .line 126
    move-object v2, v0

    .line 128
    :cond_3
    iget-boolean v4, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    if-eqz v4, :cond_2

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 132
    .end local v0    # "nameObject":Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    :cond_5
    const/16 v4, 0xa

    if-lt v3, v4, :cond_7

    .line 133
    if-eqz v2, :cond_6

    iget-boolean v4, v2, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    if-eqz v4, :cond_6

    .line 134
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->select:Z

    .line 136
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    sget v5, Lctk$i;->dt_group_cooperative_orgs_limit_desc_AT:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "10"

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)Lcvz;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 142
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->d(Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;)Lcvz;

    move-result-object v4

    invoke-virtual {v4}, Lcvz;->notifyDataSetChanged()V

    .line 144
    :cond_8
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/GroupCooperativeOrgSelectActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_0
.end method
