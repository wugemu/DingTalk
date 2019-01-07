.class public Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "PictureListActivity.java"


# instance fields
.field private a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

.field private b:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

.field private c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->d:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f040162

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->setContentView(I)V

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "showOrigin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->d:Z

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_encrypt_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->e:Z

    .line 1061
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->finish()V

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->updateSystemUiVisibility()V

    .line 50
    return-void

    .line 1067
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v1

    .line 1105
    iget-boolean v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->e:Z

    if-eqz v2, :cond_5

    .line 1106
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    if-nez v2, :cond_4

    .line 1107
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->c(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    .line 1110
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    .line 1070
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    new-instance v3, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1098
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1099
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1100
    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f110297

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    goto :goto_0

    .line 1112
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->b:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    if-nez v2, :cond_6

    .line 1113
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->c(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->b:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    .line 1116
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->b:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    iput-object v2, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "showOrigin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->d:Z

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_encrypt_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->e:Z

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PictureListActivity;->a:Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;->b(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method
