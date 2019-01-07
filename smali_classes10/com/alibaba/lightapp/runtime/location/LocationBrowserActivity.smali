.class public Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LocationBrowserActivity.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

.field private b:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

.field private c:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:D

.field private h:D

.field private i:Ljava/lang/String;

.field private j:Z

.field private final k:I

.field private final l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->j:Z

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->k:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->l:I

    return-void
.end method

.method private a(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    const-class v2, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    .line 171
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    :cond_0
    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/GMapBrowserFragment;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    .line 175
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    :cond_1
    return-object v0
.end method

.method private b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 181
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const-class v3, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcn;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    .line 185
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    :cond_0
    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Lcom/alibaba/lightapp/runtime/location/MapBrowserFragment;->c()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    check-cast v0, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    .line 189
    .restart local v0    # "fragment":Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;
    :cond_1
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 190
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "SmartWork"

    const-string/jumbo v3, "google_map"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 192
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_COARSE_LOCATION"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Lcir;Z)Lcom/amap/api/location/AMapLocationClient;

    .line 242
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lhdn$i;->activity_location_browser_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->setContentView(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1070
    const-string/jumbo v0, "location_select_marker"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    .line 1071
    const-string/jumbo v0, "location_current_marker"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->c:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    .line 1072
    const-string/jumbo v0, "location_text"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->d:Ljava/lang/String;

    .line 1073
    const-string/jumbo v0, "message_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->e:J

    .line 1074
    const-string/jumbo v0, "intent_key_menu_seed"

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->f:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->f:J

    .line 1075
    const-string/jumbo v0, "location_latitude"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->g:D

    .line 1076
    const-string/jumbo v0, "location_longitude"

    invoke-virtual {v3, v0, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->h:D

    .line 1077
    const-string/jumbo v0, "location_image"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->i:Ljava/lang/String;

    .line 1078
    const-string/jumbo v0, "location_hide_right_menu"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->j:Z

    .line 1079
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->supportInvalidateOptionsMenu()V

    .line 1083
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    :cond_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v3, "f_sw_gmap_manager"

    .line 2083
    invoke-virtual {v0, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1090
    if-eqz v0, :cond_8

    .line 1091
    invoke-static {p0}, Lhdo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1094
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->restoreLocationCache(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationCache;

    move-result-object v3

    .line 1095
    if-eqz v3, :cond_4

    .line 2200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 1095
    :goto_0
    if-eqz v0, :cond_4

    move v0, v1

    .line 1096
    :goto_1
    if-nez v0, :cond_6

    .line 1097
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1098
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    .line 1104
    :goto_2
    invoke-static {p0, p1}, Lhkr;->a(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;)V

    .line 1113
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lhdn$h;->fragment_container:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 1114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    if-eqz v0, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v1, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v2, v2, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v3, v3, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->a(IFF)V

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->c:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    if-eqz v0, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->c:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v1, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->c:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v2, v2, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->c:Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    iget v3, v3, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->b(IFF)V

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->g:D

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->h:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->a(DD)V

    .line 1121
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;->a(Ljava/lang/String;)V

    .line 66
    return-void

    :cond_3
    move v0, v2

    .line 2200
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1095
    goto :goto_1

    .line 1100
    :cond_5
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    goto :goto_2

    .line 3196
    :cond_6
    iget v0, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLatitude:F

    float-to-double v0, v0

    iget v2, v3, Lcom/alibaba/android/dingtalkbase/amap/LocationCache;->mLongitude:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/location/CoordinateConverter;->isAMapDataAvailable(DD)Z

    move-result v0

    .line 1106
    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    move-result-object v0

    goto :goto_4

    .line 1110
    :cond_8
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->b(Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a:Lcom/alibaba/lightapp/runtime/location/AbstractMapBrowserFragment;

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 129
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->j:Z

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x1

    sget v2, Lhdn$k;->more:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 131
    .local v0, "subMenu":Landroid/view/SubMenu;
    sget v1, Lhdn$k;->forward:I

    invoke-interface {v0, v3, v4, v3, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 132
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lhdn$g;->menu_overflow:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 134
    .end local v0    # "subMenu":Landroid/view/SubMenu;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 160
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 141
    :pswitch_0
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->e:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "intent_key_menu_seed"

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->f:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->e:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 146
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 147
    .local v2, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/16 v4, 0x68

    iput v4, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 148
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;-><init>()V

    .line 149
    .local v1, "geoMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->g:D

    iput-wide v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->latitude:D

    .line 150
    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->h:D

    iput-wide v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->longitude:D

    .line 151
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->d:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->locationName:Ljava/lang/String;

    .line 152
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->i:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$GeoMessageObject;->thumbUrl:Ljava/lang/String;

    .line 153
    iput-object v1, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v3, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 247
    invoke-static {p0, p1, p3}, Lhkr;->a(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;I[I)V

    .line 248
    return-void
.end method
