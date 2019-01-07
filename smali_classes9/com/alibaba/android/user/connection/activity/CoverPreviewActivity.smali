.class public Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CoverPreviewActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)Ljava/util/List;
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 69
    const/4 v8, 0x0

    .line 71
    .local v8, "coverObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;>;"
    :try_start_0
    const-string/jumbo v2, "params_cover_list"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 79
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    :cond_0
    const/4 v10, 0x0

    .line 88
    :cond_1
    return-object v10

    .line 72
    :catch_0
    move-exception v9

    .line 73
    .local v9, "e":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    const-string/jumbo v2, "Circle"

    const-string/jumbo v3, "CoverPreview"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "get covers error,"

    aput-object v7, v6, v1

    const/4 v7, 0x1

    .line 76
    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v2, v3, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v10, "imageItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;

    .line 84
    .local v11, "obj":Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;
    new-instance v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    iget-object v2, v11, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;->originUrl:Ljava/lang/String;

    iget-object v3, v11, Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;->mediaId:Ljava/lang/String;

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;-><init>(ILjava/lang/String;Ljava/lang/String;JJ)V

    .line 85
    .local v0, "item":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->a:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 52
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->finish()V

    .line 66
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :goto_0
    return-void

    .line 57
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    :cond_1
    sget v4, Lezg$j;->activity_connection_cover_preview:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "params_preview_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "index":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "preview_picture_objects"

    check-cast v3, Ljava/io/Serializable;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    const-string/jumbo v4, "current_preview_picture_index"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    move-result-object v1

    .line 65
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    invoke-virtual {v4}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lezg$h;->fragment_container:I

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 93
    const/4 v1, 0x0

    sget v2, Lezg$l;->dt_circle_action_set_cover:I

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 94
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1108
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->a:Z

    if-nez v0, :cond_0

    .line 1111
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    sget v2, Lezg$h;->fragment_container:I

    invoke-virtual {v0, v2}, Lcn;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    if-eqz v2, :cond_0

    .line 1114
    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .line 2128
    iget v2, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    .line 2133
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    .line 1117
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 1118
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    .line 1120
    iput-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;->a:Z

    .line 1121
    invoke-static {}, Lfdl;->a()Lfdl;

    move-result-object v3

    .line 1122
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/CoverPreviewActivity;Ljava/lang/String;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v2, v0}, Lfdj;->a(Ljava/lang/String;Lcma;)V

    :cond_0
    move v0, v1

    .line 104
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
