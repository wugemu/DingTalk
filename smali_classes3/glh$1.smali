.class final Lglh$1;
.super Ljava/lang/Object;
.source "SpaceCommonTransfer.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglh;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lglh;


# direct methods
.method constructor <init>(Lglh;)V
    .locals 0
    .param p1, "this$0"    # Lglh;

    .prologue
    .line 94
    iput-object p1, p0, Lglh$1;->a:Lglh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 94
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 3097
    if-eqz p1, :cond_1

    .line 3098
    iget-object v0, p0, Lglh$1;->a:Lglh;

    .line 4031
    invoke-virtual {v0, p1}, Lglh;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 3100
    :cond_1
    iget-object v0, p0, Lglh$1;->a:Lglh;

    .line 5031
    iget-object v0, v0, Lglh;->c:Lcma;

    .line 3100
    if-eqz v0, :cond_0

    .line 3101
    iget-object v0, p0, Lglh$1;->a:Lglh;

    .line 6031
    iget-object v0, v0, Lglh;->c:Lcma;

    .line 3101
    const-string/jumbo v1, ""

    iget-object v2, p0, Lglh$1;->a:Lglh;

    .line 7031
    iget-object v2, v2, Lglh;->a:Landroid/content/Context;

    .line 3101
    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lglh$1;->a:Lglh;

    .line 1031
    iget-object v0, v0, Lglh;->c:Lcma;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lglh$1;->a:Lglh;

    .line 2031
    iget-object v0, v0, Lglh;->c:Lcma;

    .line 114
    const-string/jumbo v1, ""

    iget-object v2, p0, Lglh$1;->a:Lglh;

    .line 3031
    iget-object v2, v2, Lglh;->a:Landroid/content/Context;

    .line 115
    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 109
    return-void
.end method
