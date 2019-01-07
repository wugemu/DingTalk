.class public final Lacc$1;
.super Ljava/lang/Object;
.source "AlimeiSearchFacede.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcma;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lacc$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lacc$1;->b:Ljava/lang/String;

    iput p3, p0, Lacc$1;->c:I

    iput p4, p0, Lacc$1;->d:I

    iput-object p5, p0, Lacc$1;->e:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lacc$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lacc$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p0, Lacc$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lacc$1;->c:I

    iget v4, p0, Lacc$1;->d:I

    new-instance v5, Lacc$1$1;

    invoke-direct {v5, p0}, Lacc$1$1;-><init>(Lacc$1;)V

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->searchMailFromServer(Ljava/lang/String;IIILxv;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lacc$1;->e:Lcma;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lacc$1;->e:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
