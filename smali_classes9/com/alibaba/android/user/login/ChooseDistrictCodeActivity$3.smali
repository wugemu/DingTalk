.class final Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;
.super Ljava/lang/Object;
.source "ChooseDistrictCodeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 164
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "searchKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->f(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->g(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;->a:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    new-instance v2, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3$1;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 155
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 160
    return-void
.end method
