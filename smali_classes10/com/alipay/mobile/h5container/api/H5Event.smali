.class public final Lcom/alipay/mobile/h5container/api/H5Event;
.super Ljava/lang/Object;
.source "H5Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/h5container/api/H5Event$a;,
        Lcom/alipay/mobile/h5container/api/H5Event$Error;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Liob;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lcom/alibaba/fastjson/JSONObject;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Object;

.field public i:Z

.field private j:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field private k:Lioa;

.field private l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event$a;)V
    .locals 2
    .param p1, "builder"    # Lcom/alipay/mobile/h5container/api/H5Event$a;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->e:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 27
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->j:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 2157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->a:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 3157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->c:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 4157
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->d:Z

    .line 31
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->k:Lioa;

    .line 6157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->g:Ljava/lang/String;

    .line 7157
    iget-boolean v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->f:Z

    .line 33
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->f:Z

    .line 8157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 34
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 9157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->b:Liob;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 36
    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->h:Ljava/lang/Object;

    .line 11157
    iget-boolean v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->h:Z

    .line 37
    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->i:Z

    .line 12157
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event$a;->i:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->l:Ljava/lang/String;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/h5container/api/H5Event$a;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/h5container/api/H5Event$a;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/alipay/mobile/h5container/api/H5Event;-><init>(Lcom/alipay/mobile/h5container/api/H5Event$a;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    instance-of v3, v3, Liop;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 101
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    check-cast v1, Liop;

    .line 94
    .local v1, "page":Liop;
    invoke-interface {v1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v2

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    .local v0, "context":Landroid/content/Context;
    instance-of v3, v0, Landroid/app/Activity;

    if-nez v3, :cond_2

    move-object v0, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public final b()Liop;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    instance-of v0, v0, Liop;

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    check-cast v0, Liop;

    goto :goto_0
.end method
