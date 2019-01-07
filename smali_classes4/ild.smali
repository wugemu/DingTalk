.class public final Lild;
.super Ljava/lang/Object;
.source "BehavorloggerImpl.java"

# interfaces
.implements Likl;


# instance fields
.field private a:Lijz;

.field private b:Lilk;


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lild;->a:Lijz;

    .line 20
    new-instance v0, Lilk;

    invoke-direct {v0, p1}, Lilk;-><init>(Lijz;)V

    iput-object v0, p0, Lild;->b:Lilk;

    .line 21
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Likj;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 26
    .line 1448
    iget-object v0, p1, Likj;->e:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lild;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string/jumbo v0, "userbehavor"

    .line 30
    :cond_0
    iget-object v1, p0, Lild;->a:Lijz;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "BehavorLogger"

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 1493
    iget v5, p1, Likj;->h:I

    .line 30
    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    iget-object v5, p0, Lild;->b:Lilk;

    const-string/jumbo v6, "clicked"

    .line 31
    invoke-virtual {v5, v6, p1}, Lilk;->a(Ljava/lang/String;Likj;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 30
    invoke-interface {v1, v2}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;Likj;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 102
    .line 3448
    iget-object v0, p2, Likj;->e:Ljava/lang/String;

    .line 103
    invoke-static {v0}, Lild;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v0, "userbehavor"

    .line 106
    :cond_0
    iget-object v1, p0, Lild;->a:Lijz;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "BehavorLogger"

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 3493
    iget v5, p2, Likj;->h:I

    .line 106
    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    iget-object v5, p0, Lild;->b:Lilk;

    const/4 v6, 0x0

    .line 107
    invoke-virtual {v5, v6, p2}, Lilk;->a(Ljava/lang/String;Likj;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 106
    invoke-interface {v1, v2}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 108
    return-void
.end method

.method public final b(Likj;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 37
    .line 2448
    iget-object v0, p1, Likj;->e:Ljava/lang/String;

    .line 38
    invoke-static {v0}, Lild;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v0, "userbehavor"

    .line 41
    :cond_0
    iget-object v1, p0, Lild;->a:Lijz;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "BehavorLogger"

    new-instance v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 2493
    iget v5, p1, Likj;->h:I

    .line 41
    invoke-direct {v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    iget-object v5, p0, Lild;->b:Lilk;

    const-string/jumbo v6, "openPage"

    .line 42
    invoke-virtual {v5, v6, p1}, Lilk;->a(Ljava/lang/String;Likj;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 41
    invoke-interface {v1, v2}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 43
    return-void
.end method
