.class final Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;
.super Ljava/lang/Object;
.source "EnterpriseOAListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldrh;

    .line 167
    .local v8, "filterModel":Ldrh;
    if-nez v8, :cond_1

    .line 177
    .end local v8    # "filterModel":Ldrh;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local v8    # "filterModel":Ldrh;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(JJZ)V

    .line 1022
    iget-object v0, v8, Ldrh;->a:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 171
    .local v0, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "appName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v1, v7, v6}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;Ljava/lang/String;Z)V

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;->d(Lcom/alibaba/android/dingtalkim/activities/EnterpriseOAListActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
