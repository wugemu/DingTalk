.class public Lcom/alibaba/android/user/connection/activity/CoverListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CoverListActivity.java"


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Lfcf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CoverListActivity;Lfer;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CoverListActivity;
    .param p1, "x1"    # Lfer;

    .prologue
    .line 48
    .line 5116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5117
    if-eqz p1, :cond_0

    iget-object v0, p1, Lfer;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5118
    iget-object v0, p1, Lfer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5119
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;-><init>()V

    .line 5121
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5122
    iput-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;->mediaId:Ljava/lang/String;

    .line 5123
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_1200x1200.jpg"

    aput-object v6, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;->originUrl:Ljava/lang/String;

    .line 5124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "_150x150.jpg"

    aput-object v5, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;->thumbnailUrl:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5129
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5125
    :catch_0
    move-exception v0

    .line 5126
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 5132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->b:Lfcf;

    .line 6058
    iput-object v1, v0, Lfcf;->a:Ljava/util/List;

    .line 6059
    invoke-virtual {v0}, Lfcf;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CoverListActivity;Ljava/util/List;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CoverListActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 48
    .line 5085
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5086
    const-string/jumbo v1, "params_preview_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5087
    const-string/jumbo v1, "params_cover_list"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5089
    const/16 v1, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 169
    if-ne p2, v1, :cond_4

    .line 170
    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    .line 171
    invoke-virtual {p0, v1, p3}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->finish()V

    .line 3193
    :goto_0
    return-void

    .line 174
    :cond_0
    const/16 v0, 0x201

    if-ne p1, v0, :cond_4

    .line 3185
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3186
    if-nez v0, :cond_1

    .line 3187
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CoverList"

    const-string/jumbo v2, "check select photo result fail, extra is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3190
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3191
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3192
    :cond_2
    const-string/jumbo v0, "Circle"

    const-string/jumbo v1, "CoverList"

    const-string/jumbo v2, "check select photo result fail, result empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3195
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 3198
    new-instance v1, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 3199
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 4058
    iput-object v0, v1, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 4090
    iput-boolean v2, v1, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 3201
    sget-object v0, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->NO_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 3203
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/connection/activity/CoverListActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/CoverListActivity;)V

    .line 4128
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0

    .line 181
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lezg$j;->activity_connection_cover_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->setContentView(I)V

    .line 61
    sget v0, Lezg$l;->dt_circle_action_change_cover:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->setTitle(I)V

    .line 1069
    sget v0, Lezg$h;->recycler_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 1071
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1072
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1074
    new-instance v0, Lfcf;

    invoke-direct {v0, p0}, Lfcf;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->b:Lfcf;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->b:Lfcf;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/CoverListActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/CoverListActivity;)V

    .line 1109
    iput-object v1, v0, Lfcf;->b:Lfcf$b;

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->b:Lfcf;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 2093
    invoke-static {}, Lfdl;->a()Lfdl;

    move-result-object v1

    .line 2095
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/connection/activity/CoverListActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/CoverListActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v0}, Lfdj;->a(Lcma;)V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 152
    .line 2136
    const/4 v2, 0x0

    .line 2137
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v6, [I

    sget v5, Lecj$a;->ui_common_base_ui_attr_toolbarForegroundColor:I

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2138
    if-eqz v3, :cond_0

    .line 2139
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 2140
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2143
    :cond_0
    new-instance v1, Lecw;

    sget v3, Lezg$l;->icon_camera_fill:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 2144
    sget v2, Lezg$f;->dp24:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    .line 3070
    iput v2, v1, Lecw;->a:I

    .line 2145
    sget v2, Lezg$f;->dp24:I

    invoke-static {v2}, Leda;->d(I)I

    move-result v2

    .line 3079
    iput v2, v1, Lecw;->b:I

    .line 153
    .local v1, "optionsMenuIcon":Lecw;
    sget v2, Lezg$l;->dt_circle_action_post:I

    invoke-interface {p1, v7, v6, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 154
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 155
    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 161
    new-instance v1, Lcom/alibaba/android/user/connection/dialog/CircleCoverSelectDialog;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/dialog/CircleCoverSelectDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/dialog/CircleCoverSelectDialog;->show()V

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
