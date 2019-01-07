.class public final Ldmu$1;
.super Ljava/lang/Object;
.source "LuckyTimeBannerPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldmu;


# direct methods
.method public constructor <init>(Ldmu;Z)V
    .locals 0
    .param p1, "this$0"    # Ldmu;

    .prologue
    .line 38
    iput-object p1, p0, Ldmu$1;->b:Ldmu;

    iput-boolean p2, p0, Ldmu$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .line 1041
    iget-object v0, p0, Ldmu$1;->b:Ldmu;

    iget-object v0, v0, Ldmu;->a:Ldms$b;

    iget-boolean v1, p0, Ldmu$1;->a:Z

    invoke-interface {v0, v1}, Ldms$b;->updateAlert(Z)V

    .line 1043
    iget-object v0, p0, Ldmu$1;->b:Ldmu;

    .line 2024
    invoke-virtual {v0}, Ldmu;->a()Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1045
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v1

    iget-boolean v2, p0, Ldmu$1;->a:Z

    invoke-virtual {v1, v0, v2}, Lcnh;->c(Ljava/lang/String;Z)V

    .line 1048
    :cond_0
    iget-boolean v0, p0, Ldmu$1;->a:Z

    if-eqz v0, :cond_1

    .line 1049
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_redenvelop_pick_remind:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;I)V

    .line 38
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "subscribePlan onException reason "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 56
    return-void
.end method
