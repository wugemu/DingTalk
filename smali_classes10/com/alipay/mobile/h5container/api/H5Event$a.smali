.class public final Lcom/alipay/mobile/h5container/api/H5Event$a;
.super Ljava/lang/Object;
.source "H5Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Liob;

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/fastjson/JSONObject;

.field e:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "native_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$a;->c:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$a;->e:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$a;->f:Z

    .line 175
    const-string/jumbo v0, "call"

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Event$a;->g:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/h5container/api/H5Event;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/h5container/api/H5Event;-><init>(Lcom/alipay/mobile/h5container/api/H5Event$a;B)V

    return-object v0
.end method
