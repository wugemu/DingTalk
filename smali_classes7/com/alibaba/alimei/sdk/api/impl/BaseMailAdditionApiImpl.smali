.class public abstract Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;
.super Lcom/alibaba/alimei/framework/api/AbsApiImpl;
.source "BaseMailAdditionApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/framework/api/AbsApiImpl;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public searchLocalContactsByPage(Ljava/lang/String;IILxv;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lagv;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 28
    .local p4, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Lagv;>;>;"
    new-instance v0, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl$1;-><init>(Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;Ljava/lang/String;Ljava/lang/String;II)V

    .line 39
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/String;Lagv;>;>;"
    invoke-virtual {p0, v0, p4}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 40
    return-void
.end method
