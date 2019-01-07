.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 361
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->i(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->i(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->i(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 363
    .local v0, "position":I
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->k(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 364
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->l(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->j(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->l(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->m(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->m(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
