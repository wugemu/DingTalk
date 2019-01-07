.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;
.super Landroid/content/BroadcastReceiver;
.source "ManageExternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1191
    if-nez p2, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    const-string/jumbo v13, "action_key_select_labels"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1195
    const-string/jumbo v13, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1196
    .local v4, "identifyFlag":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const-string/jumbo v14, "intent_key_label_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    goto :goto_0

    .line 1200
    .end local v4    # "identifyFlag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, "com.workapp.choose.people.from.contact"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1201
    invoke-static {}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "activity_identify"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "choose_user_identities"

    .line 1205
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1206
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1207
    if-eqz v12, :cond_3

    .line 1208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1211
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "choose_department_array"

    .line 1212
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1213
    .local v3, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1214
    if-eqz v3, :cond_4

    .line 1215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1218
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    goto/16 :goto_0

    .line 1219
    .end local v3    # "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const-string/jumbo v13, "IDENTIFIY_MANAGE_EXTERNAL"

    const-string/jumbo v14, "activity_identify"

    .line 1220
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->v(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "choose_user_identities"

    .line 1226
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1228
    .local v5, "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 1231
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1232
    .local v11, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v11, :cond_0

    .line 1236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v13

    iget-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v14}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setSelection(I)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v13

    iget-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v13

    iget-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->w(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v13

    iget-object v14, v11, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1242
    .end local v5    # "identityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v11    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_6
    const-string/jumbo v13, "com.workapp.action.poi_info"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1243
    const-string/jumbo v13, "poi_info_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/amap/api/services/core/PoiItem;

    .line 1244
    .local v10, "poiItem":Lcom/amap/api/services/core/PoiItem;
    if-eqz v10, :cond_0

    .line 1245
    const-string/jumbo v13, "map_longitude"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    .line 1246
    .local v8, "longitude":D
    const-wide/16 v14, 0x0

    cmpl-double v13, v8, v14

    if-nez v13, :cond_7

    .line 1247
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    .line 1249
    :cond_7
    const-string/jumbo v13, "map_latitude"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    .line 1250
    .local v6, "latitude":D
    const-wide/16 v14, 0x0

    cmpl-double v13, v6, v14

    if-nez v13, :cond_8

    .line 1251
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    .line 1253
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13, v8, v9}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;D)D

    .line 1254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13, v6, v7}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;D)D

    .line 1255
    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1256
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    const-string/jumbo v13, ""

    :goto_1
    aput-object v13, v14, v15

    const/4 v15, 0x1

    .line 1257
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    const-string/jumbo v13, ""

    :goto_2
    aput-object v13, v14, v15

    const/4 v15, 0x2

    .line 1258
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_b

    const-string/jumbo v13, ""

    :goto_3
    aput-object v13, v14, v15

    const/4 v15, 0x3

    .line 1259
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_c

    const-string/jumbo v13, ""

    :goto_4
    aput-object v13, v14, v15

    .line 1255
    invoke-static {v14}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    .local v2, "address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v13}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Z)V

    goto/16 :goto_0

    .line 1256
    .end local v2    # "address":Ljava/lang/String;
    :cond_9
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 1257
    :cond_a
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getCityName()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 1258
    :cond_b
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getAdName()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 1259
    :cond_c
    invoke-virtual {v10}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v13

    goto :goto_4
.end method
