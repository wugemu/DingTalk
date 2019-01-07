.class public final Lgno$2;
.super Ljava/lang/Object;
.source "SpaceMenuSendHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgno;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcma;

.field final synthetic c:Lgno;


# direct methods
.method public constructor <init>(Lgno;Landroid/content/Context;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgno;

    .prologue
    .line 183
    iput-object p1, p0, Lgno$2;->c:Lgno;

    iput-object p2, p0, Lgno$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lgno$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 183
    move-object v2, p1

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1186
    if-nez v2, :cond_1

    .line 1187
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgno$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    iget-object v0, p0, Lgno$2;->c:Lgno;

    iget-object v1, p0, Lgno$2;->a:Landroid/content/Context;

    move-object v4, v3

    move-object v5, v3

    .line 2051
    invoke-virtual/range {v0 .. v5}, Lgno;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lgno$2;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lgno$2;->b:Lcma;

    invoke-interface {v0, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lgno$2;->b:Lcma;

    invoke-static {p1, p2, v0}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 203
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 198
    return-void
.end method
