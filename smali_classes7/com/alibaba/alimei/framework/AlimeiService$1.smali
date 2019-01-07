.class final Lcom/alibaba/alimei/framework/AlimeiService$1;
.super Ljava/lang/Object;
.source "AlimeiService.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/framework/AlimeiService;->runCheckoutAccountAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/AlimeiService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/framework/AlimeiService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/framework/AlimeiService;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/alimei/framework/AlimeiService$1;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 251
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 242
    .line 1245
    const-string/jumbo v0, "refreshAllAccountToken success-->"

    invoke-static {v0}, Lyx;->b(Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/alibaba/alimei/framework/AlimeiService$1;->a:Lcom/alibaba/alimei/framework/AlimeiService;

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/framework/AlimeiService;->access$000(Lcom/alibaba/alimei/framework/AlimeiService;J)V

    .line 242
    return-void
.end method
