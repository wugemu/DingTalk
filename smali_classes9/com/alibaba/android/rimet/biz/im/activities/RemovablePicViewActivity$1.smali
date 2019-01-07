.class final Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;
.super Ljava/lang/Object;
.source "RemovablePicViewActivity.java"

# interfaces
.implements Lcom/alibaba/laiwang/photokit/picker/RemovablePicViewFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 118
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "total"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1, p2}, Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/RemovablePicViewActivity;II)V

    .line 109
    return-void
.end method
