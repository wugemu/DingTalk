.class final Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;
.super Lcq;
.source "AppsFileFilterFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;Lcn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
    .param p2, "fm"    # Lcn;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .line 183
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 184
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "fragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    check-cast v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .line 193
    .restart local v0    # "fragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    :cond_0
    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 207
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->a:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .line 1150
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d:Ljava/lang/String;

    .line 209
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 211
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method
