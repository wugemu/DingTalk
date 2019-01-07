.class final Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;
.super Ljava/lang/Object;
.source "MyCustomerActivity.java"

# interfaces
.implements Lfmb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

.field final synthetic b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfmj;)V
    .locals 6
    .param p1, "extObject"    # Lfmj;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;

    move-result-object v1

    if-nez v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;Lfmj;)Lfmj;

    .line 274
    :cond_0
    if-eqz p1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->a:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    iget-boolean v2, p1, Lfmj;->b:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b(Z)V

    .line 276
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    iget-boolean v2, p1, Lfmj;->a:Z

    .line 1330
    if-eqz v2, :cond_2

    .line 1333
    const-string/jumbo v2, "pref_key_crm_guide"

    invoke-static {v1, v2, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 1334
    iget-object v3, v1, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    if-nez v2, :cond_2

    .line 1337
    :try_start_0
    sget v0, Lezg$h;->new_user_guide_homepage_arrow:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1338
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10102eb

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1341
    if-nez v1, :cond_3

    .line 278
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->supportInvalidateOptionsMenu()V

    .line 279
    return-void

    .line 1344
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 1345
    cmpl-float v1, v2, v5

    if-eqz v1, :cond_2

    .line 1348
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1349
    float-to-double v2, v2

    const-wide v4, 0x4004cccccccccccdL    # 2.6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1350
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    .line 1353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$3;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    return-void
.end method
