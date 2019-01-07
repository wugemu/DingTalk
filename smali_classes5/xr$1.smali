.class final Lxr$1;
.super Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;
.source "FrameworkConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxr;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxr;


# direct methods
.method constructor <init>(Lxr;)V
    .locals 0
    .param p1, "this$0"    # Lxr;

    .prologue
    .line 64
    iput-object p1, p0, Lxr$1;->a:Lxr;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/DefaultHttpClientFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;
    .locals 2
    .param p1, "hostAddress"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 68
    if-eqz p2, :cond_1

    iget v0, p2, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lxr$1;->a:Lxr;

    iget-object v0, v0, Lxr;->b:Lxx;

    if-eqz v0, :cond_0

    .line 70
    const/4 p1, 0x0

    .line 76
    .end local p1    # "hostAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "hostAddress":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lxr$1;->a:Lxr;

    iget-object v0, v0, Lxr;->a:Lxu;

    invoke-interface {v0, p1}, Lxu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
