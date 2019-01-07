.class public final Lanet/channel/request/Request$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lanet/channel/request/Request$Method;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Lanet/channel/request/BodyEntry;

.field public g:Z

.field public h:I

.field i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Lanet/channel/statist/RequestStatistic;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    sget-object v0, Lanet/channel/request/Request$Method;->GET:Lanet/channel/request/Request$Method;

    iput-object v0, p0, Lanet/channel/request/Request$a;->b:Lanet/channel/request/Request$Method;

    .line 217
    iput-boolean v2, p0, Lanet/channel/request/Request$a;->g:Z

    .line 218
    iput v1, p0, Lanet/channel/request/Request$a;->h:I

    .line 219
    iput-boolean v2, p0, Lanet/channel/request/Request$a;->i:Z

    .line 222
    iput v1, p0, Lanet/channel/request/Request$a;->l:I

    .line 223
    iput v1, p0, Lanet/channel/request/Request$a;->m:I

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lanet/channel/request/Request$a;->n:Lanet/channel/statist/RequestStatistic;

    .line 227
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lanet/channel/request/Request$a;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$a;->c:Ljava/util/Map;

    .line 248
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-object p0
.end method

.method public final a()Lanet/channel/request/Request;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 317
    new-instance v0, Lanet/channel/request/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$a;B)V

    return-object v0
.end method
