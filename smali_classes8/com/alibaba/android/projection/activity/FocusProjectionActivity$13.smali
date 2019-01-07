.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1240
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1242
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v3, v4, :cond_1

    .line 1243
    const/4 v0, 0x1

    .line 1247
    .local v0, "isExtra":Z
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1248
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "event-type"

    const-string/jumbo v4, "add"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string/jumbo v3, "_field_event_id"

    const-string/jumbo v4, "2101"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string/jumbo v3, "log_ding_version"

    const-string/jumbo v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "Page_Focus_set_focus_code"

    const-string/jumbo v5, "Page_Focus_set_focus_code_add"

    invoke-interface {v3, v4, v5, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1252
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    const/4 v4, -0x1

    invoke-static {v3, v0, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;ZI)V

    .line 1268
    .end local v0    # "isExtra":Z
    :goto_1
    return-void

    .line 1245
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isExtra":Z
    goto :goto_0

    .line 1254
    .end local v0    # "isExtra":Z
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 1255
    .local v1, "object":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .restart local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "event-type"

    const-string/jumbo v4, "del"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    if-eqz v1, :cond_3

    .line 1258
    const-string/jumbo v3, "event-type"

    iget-wide v4, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1260
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->E(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Legp;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v4

    .line 2058
    invoke-virtual {v3, v4}, Legn;->a(Ljava/util/List;)V

    .line 1261
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->F(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lehw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lehw;->a(Lcom/alibaba/android/projection/data/FocusDeviceObject;)V

    .line 1263
    :cond_3
    const-string/jumbo v3, "_field_event_id"

    const-string/jumbo v4, "2101"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const-string/jumbo v3, "log_ding_version"

    const-string/jumbo v4, "1.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    const/4 v3, 0x0

    const-string/jumbo v4, "code_add"

    const-string/jumbo v5, "a2q0r.11900331.1.code_add"

    invoke-static {v3, v4, v2, v5}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1266
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$13;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->b(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;)V

    goto :goto_1
.end method
