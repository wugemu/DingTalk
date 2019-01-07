.class final Laei$3;
.super Lcmi;
.source "MailSubscribeDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laei;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laax;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laay;

.field final synthetic b:Laei;


# direct methods
.method constructor <init>(Laei;Laay;)V
    .locals 0
    .param p1, "this$0"    # Laei;

    .prologue
    .line 203
    iput-object p1, p0, Laei$3;->b:Laei;

    iput-object p2, p0, Laei$3;->a:Laay;

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
    .line 224
    const-string/jumbo v0, "submitMailSubscribe on"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    iget-object v0, p0, Laei$3;->b:Laei;

    .line 1035
    iget-object v0, v0, Laei;->c:Lcma;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Laei$3;->b:Laei;

    .line 2035
    iget-object v0, v0, Laei;->c:Lcma;

    .line 227
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 203
    check-cast p1, Laax;

    .line 2208
    if-eqz p1, :cond_0

    .line 2209
    iget-object v1, p1, Laax;->a:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 2209
    if-eqz v1, :cond_0

    .line 2210
    const/4 v0, 0x1

    .line 2211
    iget-object v1, p0, Laei$3;->b:Laei;

    iget-object v2, p0, Laei$3;->a:Laay;

    invoke-static {v1, v2}, Laei;->a(Laei;Laay;)V

    .line 2215
    :cond_0
    if-nez v0, :cond_1

    .line 2216
    iget-object v0, p0, Laei$3;->b:Laei;

    .line 3035
    iget-object v0, v0, Laei;->c:Lcma;

    .line 2216
    if-eqz v0, :cond_1

    .line 2217
    iget-object v0, p0, Laei$3;->b:Laei;

    .line 4035
    iget-object v0, v0, Laei;->c:Lcma;

    .line 2217
    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "cancel subscribe failure"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    return-void
.end method
