.class final Ldha$1;
.super Ljava/lang/Object;
.source "CooperationGroupAddMemberHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldha;->a(Ljava/util/List;)V
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
        "Ldqz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldha;


# direct methods
.method constructor <init>(Ldha;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldha;

    .prologue
    .line 70
    iput-object p1, p0, Ldha$1;->b:Ldha;

    iput-object p2, p0, Ldha$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 70
    check-cast p1, Ldqz;

    .line 2073
    iget-object v0, p0, Ldha$1;->b:Ldha;

    invoke-static {v0}, Ldha;->a(Ldha;)V

    .line 2074
    if-eqz p1, :cond_4

    .line 2075
    iget-object v0, p1, Ldqz;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Ldqz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2076
    iget-object v0, p0, Ldha$1;->b:Ldha;

    iget-object v1, p0, Ldha$1;->a:Ljava/util/List;

    .line 3182
    if-eqz p1, :cond_0

    iget-object v2, p1, Ldqz;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Ldqz;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 3183
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2080
    :cond_0
    :goto_0
    return-void

    .line 3186
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Ldqz;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3187
    iget-object v0, v0, Ldha;->a:Landroid/app/Activity;

    sget v1, Lctk$i;->dt_im_coop_add_user_not_auth_org:I

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 3190
    :cond_2
    new-instance v2, Lech;

    iget-object v3, v0, Ldha;->a:Landroid/app/Activity;

    iget-object v4, p1, Ldqz;->a:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lech;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, v0, Ldha;->e:Lech;

    .line 3191
    iget-object v2, v0, Ldha;->e:Lech;

    new-instance v3, Ldha$4;

    invoke-direct {v3, v0, v1, p1}, Ldha$4;-><init>(Ldha;Ljava/util/List;Ldqz;)V

    .line 3285
    iput-object v3, v2, Lech;->b:Lech$a;

    .line 3210
    iget-object v1, v0, Ldha;->e:Lech;

    new-instance v2, Ldha$5;

    invoke-direct {v2, v0}, Ldha$5;-><init>(Ldha;)V

    invoke-virtual {v1, v2}, Lech;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3216
    iget-object v1, v0, Ldha;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_ccop_no_cert_use_AT:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Ldqz;->a:Ljava/util/List;

    .line 3217
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3216
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3218
    iget-object v2, v0, Ldha;->e:Lech;

    invoke-virtual {v2, v6, v1, v6}, Lech;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    iget-object v1, v0, Ldha;->e:Lech;

    iget-object v0, v0, Ldha;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Lech;->a(Landroid/view/View;)V

    goto :goto_0

    .line 2078
    :cond_3
    iget-object v0, p1, Ldqz;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Ldqz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2079
    iget-object v0, p0, Ldha$1;->b:Ldha;

    iget-object v1, p0, Ldha$1;->a:Ljava/util/List;

    invoke-static {v0, p1, v1}, Ldha;->a(Ldha;Ldqz;Ljava/util/List;)V

    goto :goto_0

    .line 2083
    :cond_4
    iget-object v0, p0, Ldha$1;->b:Ldha;

    iget-object v1, p0, Ldha$1;->a:Ljava/util/List;

    invoke-static {v0, v1, v6}, Ldha;->a(Ldha;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v0, p0, Ldha$1;->b:Ldha;

    invoke-static {v0}, Ldha;->a(Ldha;)V

    .line 94
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CooperationGroupAddMemberHelper]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "handleAddMembers cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Ldha$1;->b:Ldha;

    .line 1036
    iget-object v4, v4, Ldha;->b:Ljava/lang/String;

    .line 95
    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " error, code:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object p2, v2, v3

    .line 94
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "140017"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "140018"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Ldha$1;->b:Ldha;

    .line 2036
    iget-object v0, v0, Ldha;->a:Landroid/app/Activity;

    .line 100
    invoke-static {v0, p2}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 89
    return-void
.end method
