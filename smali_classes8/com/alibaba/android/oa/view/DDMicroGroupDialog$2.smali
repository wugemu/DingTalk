.class final Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;
.super Ljava/lang/Object;
.source "DDMicroGroupDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/view/DDMicroGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

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
    .line 176
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->b(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)Lcqu;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcqu;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 177
    .local v4, "microAPP":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v4, :cond_2

    iget-wide v2, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    const-wide/16 v8, -0x4d

    cmp-long v0, v2, v8

    if-eqz v0, :cond_2

    .line 178
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, v4}, Leek;->c(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    const/4 v2, 0x0

    .line 1284
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;ZZ)V

    .line 182
    :cond_0
    invoke-static {}, Leel;->f()Leek;

    move-result-object v0

    invoke-interface {v0, v4}, Leek;->b(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "micro_app_show_update"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-wide v8, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    .line 184
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 183
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->hintVersion:I

    invoke-static {v0, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-static {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->b(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)Lcqu;

    move-result-object v0

    invoke-virtual {v0}, Lcqu;->notifyDataSetChanged()V

    .line 187
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v2, Lble;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->update(Ljava/lang/String;)V

    .line 190
    :cond_1
    invoke-static {v4}, Legf;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->getDialogActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2$1;

    invoke-direct {v2, p0, v4}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2$1;-><init>(Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Legf;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    .line 203
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v6, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "category_id"

    iget-wide v2, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "orgid"

    iget-object v2, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-static {v2}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->c(Lcom/alibaba/android/oa/view/DDMicroGroupDialog;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v0, "agentid"

    iget-wide v2, v4, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->agent:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "oa_category_click"

    invoke-interface {v0, v2, v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/oa/view/DDMicroGroupDialog$2;->a:Lcom/alibaba/android/oa/view/DDMicroGroupDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/view/DDMicroGroupDialog;->dismiss()V

    .line 214
    .end local v1    # "url":Ljava/lang/String;
    .end local v6    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
