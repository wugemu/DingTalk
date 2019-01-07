.class final Lddb$4;
.super Ljava/lang/Object;
.source "CategoryManagerPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddb;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/category/CategoryObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddb;


# direct methods
.method constructor <init>(Lddb;)V
    .locals 0
    .param p1, "this$0"    # Lddb;

    .prologue
    .line 254
    iput-object p1, p0, Lddb$4;->a:Lddb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 1024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 264
    invoke-interface {v0}, Ldda$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const-string/jumbo v0, "130030"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 2024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 266
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_im_category_invalid_name:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldda$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const-string/jumbo v0, "130036"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 3024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 268
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_im_category_name_too_length_AT:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "24"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldda$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_2
    const-string/jumbo v0, "130031"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 4024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 270
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_im_category_count_over_limits:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldda$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 5024
    iget-object v0, v0, Lddb;->a:Ldda$b;

    .line 272
    invoke-interface {v0, p1, p2}, Ldda$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 5257
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 6024
    iget-object v0, v0, Lddb;->b:Ljava/util/List;

    .line 5257
    if-eqz v0, :cond_0

    .line 5258
    iget-object v0, p0, Lddb$4;->a:Lddb;

    .line 7024
    iget-object v0, v0, Lddb;->b:Ljava/util/List;

    .line 5258
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    return-void
.end method
