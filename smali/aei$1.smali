.class final Laei$1;
.super Lcmi;
.source "MailSubscribeDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laei;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laei;


# direct methods
.method constructor <init>(Laei;)V
    .locals 0
    .param p1, "this$0"    # Laei;

    .prologue
    .line 89
    iput-object p1, p0, Laei$1;->a:Laei;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    const-string/jumbo v0, "getMailSubscribeList"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    iget-object v0, p0, Laei$1;->a:Laei;

    .line 1035
    iget-object v0, v0, Laei;->c:Lcma;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Laei$1;->a:Laei;

    .line 2035
    iget-object v0, v0, Laei;->c:Lcma;

    .line 100
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 89
    check-cast p1, Laap;

    .line 2092
    iget-object v1, p0, Laei$1;->a:Laei;

    .line 3281
    if-nez p1, :cond_1

    .line 3282
    const-string/jumbo v0, "getMailSubscribeList result is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 3283
    iget-object v0, v1, Laei;->c:Lcma;

    if-eqz v0, :cond_0

    .line 3284
    iget-object v0, v1, Laei;->c:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 3286
    :cond_0
    :goto_0
    return-void

    .line 3289
    :cond_1
    iget-object v0, p1, Laap;->a:Ljava/util/List;

    .line 3291
    iput-object v0, v1, Laei;->b:Ljava/util/List;

    .line 3293
    iget-object v0, v1, Laei;->a:Ljava/util/List;

    if-nez v0, :cond_2

    .line 3294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Laei;->a:Ljava/util/List;

    .line 3297
    :cond_2
    iget-object v0, v1, Laei;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3299
    iget-object v0, v1, Laei;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 3300
    iget-object v0, v1, Laei;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    .line 3301
    if-eqz v0, :cond_3

    .line 3305
    iget-object v3, v0, Lzt;->b:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    sget-object v4, Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;->SUB_STATUS_ON:Lcom/alibaba/alimei/idl/model/SubscribeStatusEnum;

    if-ne v3, v4, :cond_3

    .line 3306
    iget-object v3, v1, Laei;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3311
    :cond_4
    iget-object v0, v1, Laei;->c:Lcma;

    if-eqz v0, :cond_0

    .line 3312
    iget-object v0, v1, Laei;->c:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
