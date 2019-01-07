.class final Lcom/alibaba/android/user/login/VerifyContactActivity$5;
.super Ljava/lang/Object;
.source "VerifyContactActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyContactActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcge;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 239
    check-cast p1, Lcge;

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->dismissLoadingDialog()V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-object v1, p1, Lcge;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;I)I

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->f(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    sget v2, Lezg$l;->login_verify_contact_prompt:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c(Lcom/alibaba/android/user/login/VerifyContactActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    iget-object v1, p1, Lcge;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    iget-object v0, p1, Lcge;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1253
    iget-object v0, p1, Lcge;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgf;

    .line 1254
    if-eqz v0, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyContactActivity;->a(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/List;

    move-result-object v3

    .line 2017
    if-nez v0, :cond_1

    .line 2018
    const/4 v0, 0x0

    .line 1257
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2021
    :cond_1
    new-instance v1, Lfsb;

    invoke-direct {v1}, Lfsb;-><init>()V

    .line 2022
    iget-object v4, v0, Lcgf;->a:Ljava/lang/String;

    iput-object v4, v1, Lfsb;->a:Ljava/lang/String;

    .line 2023
    iget-object v4, v0, Lcgf;->b:Ljava/lang/String;

    iput-object v4, v1, Lfsb;->b:Ljava/lang/String;

    .line 2024
    iget-object v0, v0, Lcgf;->c:Ljava/lang/String;

    iput-object v0, v1, Lfsb;->c:Ljava/lang/String;

    .line 2025
    iput-boolean v5, v1, Lfsb;->d:Z

    move-object v0, v1

    .line 2026
    goto :goto_1

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->g(Lcom/alibaba/android/user/login/VerifyContactActivity;)Lfrc;

    move-result-object v0

    invoke-virtual {v0}, Lfrc;->notifyDataSetChanged()V

    .line 239
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->dismissLoadingDialog()V

    .line 274
    invoke-static {}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "get contact list onException:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const-string/jumbo v0, "11046"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/login/VerifyContactActivity;->b(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->d(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity$5;->a:Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->h(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 266
    return-void
.end method
