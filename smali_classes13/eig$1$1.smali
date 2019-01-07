.class final Leig$1$1;
.super Ljava/lang/Object;
.source "PhotoDealHelper.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leig$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leig$1;


# direct methods
.method constructor <init>(Leig$1;)V
    .locals 0
    .param p1, "this$0"    # Leig$1;

    .prologue
    .line 44
    iput-object p1, p0, Leig$1$1;->a:Leig$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "dingtalkbase"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "photo favorite fail code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " url:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Leig$1$1;->a:Leig$1;

    iget-object v4, v4, Leig$1;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f09026a

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 48
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f09026a

    .line 44
    check-cast p1, Lifx;

    .line 1052
    if-eqz p1, :cond_1

    .line 2026
    :try_start_0
    iget-object v0, p1, Lifx;->a:Ljava/lang/String;

    .line 1054
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    new-instance v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 1056
    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 1057
    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 1058
    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 1059
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v0

    iget-object v2, p0, Leig$1$1;->a:Leig$1;

    iget-object v2, v2, Leig$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 1060
    iget-object v0, p0, Leig$1$1;->a:Leig$1;

    iget-object v0, v0, Leig$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Leig$1$1;->a:Leig$1;

    iget-object v0, v0, Leig$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    const-string/jumbo v0, "dingtalkbase"

    const-string/jumbo v1, "photo favorite encode fail"

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1068
    :cond_1
    const-string/jumbo v0, "dingtalkbase"

    const-string/jumbo v1, "photo favorite upload rt null"

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
