.class public Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;
.super Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;
.source "SpaceLinkShareFragment.java"

# interfaces
.implements Lgex$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
        ">;",
        "Lgex$b;"
    }
.end annotation


# instance fields
.field private a:Lgex$a;

.field private b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

.field private c:Lgmb$a;

.field private d:Lfzr$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfzr$a",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->K:I

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)Lgmb$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->c:Lgmb$a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;Lgmb$a;)Lgmb$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;
    .param p1, "x1"    # Lgmb$a;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->c:Lgmb$a;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)Lgex$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a:Lgex$a;

    return-object v0
.end method

.method public static l()Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final I_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    .line 1315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 91
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v1, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    goto :goto_0
.end method

.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a()V

    .line 74
    sget v0, Lfzs$h;->dt_space_link_share_file_out:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->c(Z)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->e(Z)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->g(Z)V

    .line 78
    return-void
.end method

.method protected final a(I)V
    .locals 4
    .param p1, "loadType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 176
    .line 6315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 176
    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a:Lgex$a;

    if-eqz v2, :cond_0

    .line 183
    if-ne p1, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a:Lgex$a;

    invoke-interface {v2}, Lgex$a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->a(I)V

    .line 189
    const/16 v0, 0x1e

    .line 191
    .local v0, "finalSortType":I
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->H:I

    if-ne v2, v1, :cond_5

    .line 192
    const/16 v0, 0x1e

    .line 197
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a:Lgex$a;

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    :cond_4
    :goto_2
    invoke-interface {v2, v0, v1}, Lgex$a;->a(IZ)V

    goto :goto_0

    .line 193
    :cond_5
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->H:I

    if-ne v2, v3, :cond_3

    .line 194
    const/16 v0, 0xa

    goto :goto_1

    .line 197
    :cond_6
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 9202
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    .line 47
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 3
    .param p3, "hasMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "allData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;"
    .local p2, "moreData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;"
    const/4 v1, 0x1

    .line 124
    .line 4315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    .line 124
    if-nez v2, :cond_0

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    .line 129
    .local v0, "isEmpty":Z
    :goto_1
    invoke-virtual {p0, v0, p1, p3}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a(ZLjava/util/List;Z)V

    .line 130
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->I:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a(Ljava/util/List;Z)V

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    .line 128
    .end local v0    # "isEmpty":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    .line 3315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 109
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->g()V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 119
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final b(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->q()V

    goto :goto_0

    .line 144
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->m()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "deleteViewEnable"    # Z

    .prologue
    .line 319
    .line 8315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->h:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 299
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->K:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected final e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 304
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->setDefaultSort(I)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->b(Z)V

    .line 309
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->a(Z)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->E:Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceToolBarView;->c(Z)V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 163
    .line 5315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->m:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->cspace_link_share_list_empty_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->l:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_link_share_none_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->j:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_cspace_link_share_none_guide_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->j:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 171
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->k:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected final h()Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    .line 234
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    .line 254
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    .line 8061
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 100
    .line 2315
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 100
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method protected final m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 153
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->m()V

    .line 155
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->h:Landroid/widget/TextView;

    sget v1, Lfzs$h;->cspace_operate_delete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfzs$c;->cspace_bottom_delete_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 158
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    invoke-virtual {v0}, Lgez;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->b(Z)V

    .line 159
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final n()Lfzr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfzr",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->d:Lfzr$a;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->d:Lfzr$a;

    .line 224
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->d:Lfzr$a;

    .line 7109
    iget-object v2, v0, Lfzr;->b:Ljava/util/Set;

    monitor-enter v2

    .line 7110
    :try_start_0
    iget-object v0, v0, Lfzr;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7111
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v0

    return-object v0

    .line 7111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final o()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 262
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 264
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lfzs$h;->dt_space_link_share_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->sure:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$4;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$4;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)V

    .line 265
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;)V

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 282
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 330
    .local v0, "linkShareModel":Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->e:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    invoke-interface {v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;->a(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    .line 332
    const/4 v1, 0x1

    .line 335
    .end local v0    # "linkShareModel":Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    :goto_0
    return v1

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lgex$a;

    .line 10068
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgex$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareFragment;->a:Lgex$a;

    .line 47
    return-void
.end method
