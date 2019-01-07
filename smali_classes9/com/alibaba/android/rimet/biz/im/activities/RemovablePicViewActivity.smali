.class public Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "RemovablePicViewActivity.java"


# instance fields
.field private a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    return-object v0
.end method

.method private a(II)V
    .locals 3
    .param p1, "selected"    # I
    .param p2, "total"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, "result":Landroid/content/Intent;
    const-string/jumbo v1, "album_preview_items"

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->finish()V

    .line 172
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    .prologue
    .line 33
    .line 4157
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    if-eqz v0, :cond_0

    .line 4158
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .line 5128
    iget v0, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a:I

    .line 4158
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(II)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 103
    instance-of v0, p1, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V

    .line 3142
    iput-object v1, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->e:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;

    .line 133
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a:Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    .line 4133
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->b:Ljava/util/List;

    .line 177
    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Ljava/util/List;)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f040170

    invoke-virtual {p0, v2}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->setContentView(I)V

    .line 48
    if-nez p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1057
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1058
    if-eqz v2, :cond_0

    .line 1059
    const-string/jumbo v3, "preview_picture_objects"

    const-string/jumbo v4, "album_preview_items"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1060
    const-string/jumbo v3, "current_preview_picture_index"

    const-string/jumbo v4, "album_preview_index"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;->a(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;

    move-result-object v1

    .line 52
    .local v1, "fragment":Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f110297

    const-string/jumbo v4, "removable_pic_view"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 54
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const v8, 0x7f0b01b5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 82
    .line 1066
    const/4 v2, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v6, [I

    const v5, 0x7f010093

    aput v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1068
    if-eqz v3, :cond_0

    .line 1069
    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1070
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1073
    :cond_0
    new-instance v1, Lecw;

    const v3, 0x7f0923d3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lecw;-><init>(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 1074
    invoke-static {v8}, Leda;->d(I)I

    move-result v2

    .line 2070
    iput v2, v1, Lecw;->a:I

    .line 1075
    invoke-static {v8}, Leda;->d(I)I

    move-result v2

    .line 2079
    iput v2, v1, Lecw;->b:I

    .line 83
    .local v1, "optionsMenuIcon":Lecw;
    const v2, 0x7f090986

    invoke-interface {p1, v7, v6, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 85
    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->onBackPressed()V

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 2136
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2137
    const v2, 0x7f0918a9

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2138
    const v2, 0x7f091f40

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$2;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2152
    const v2, 0x7f09033d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2153
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
