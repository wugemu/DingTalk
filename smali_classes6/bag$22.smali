.class final Lbag$22;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->a(Ljava/util/List;Z)V
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
        "Lbcj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbag;


# direct methods
.method constructor <init>(Lbag;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 542
    iput-object p1, p0, Lbag$22;->b:Lbag;

    iput-object p2, p0, Lbag$22;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 542
    .line 1545
    iget-object v0, p0, Lbag$22;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    sget v0, Laxp$i;->dt_ding_add_receiver_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 542
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 557
    iget-object v0, p0, Lbag$22;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 560
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lbag;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 561
    iget-object v0, p0, Lbag$22;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    iget-object v1, p0, Lbag$22;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, p2, v1, v2}, Lbaf$b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lbag$22;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    const-string/jumbo v1, ""

    if-nez p2, :cond_2

    .line 564
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_add_receiver_fail:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 563
    .end local p2    # "reason":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, v1, p2}, Lbaf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 553
    return-void
.end method
