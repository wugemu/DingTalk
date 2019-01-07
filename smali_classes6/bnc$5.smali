.class final Lbnc$5;
.super Lcmi;
.source "ApDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbnc;->a(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbnb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lbnc;


# direct methods
.method constructor <init>(Lbnc;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbnc;

    .prologue
    .line 152
    iput-object p1, p0, Lbnc$5;->c:Lbnc;

    iput-object p2, p0, Lbnc$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lbnc$5;->b:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 174
    const-string/jumbo v0, "ApDeviceService"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getPsk code = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", reason = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lbnc$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lbnc$5;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 152
    check-cast p1, Lbnb;

    .line 1155
    if-nez p1, :cond_1

    .line 1156
    const-string/jumbo v0, "ApDeviceService"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "userPskModel is null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    iget-object v1, p0, Lbnc$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbnh;->a(Ljava/lang/String;)V

    .line 1158
    iget-object v0, p0, Lbnc$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lbnc$5;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v2, p1, Lbnb;->a:Ljava/lang/String;

    .line 1164
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1165
    :goto_1
    const-string/jumbo v3, "ApDeviceService"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "psk length = "

    aput-object v5, v4, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    iget-object v1, p0, Lbnc$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lbnc$5;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lbnc$5;->b:Lcma;

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1164
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method
