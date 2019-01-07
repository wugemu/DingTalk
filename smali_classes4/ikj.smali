.class public Likj;
.super Ljava/lang/Object;
.source "Behavor.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field private i:Ljava/util/Map;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-string/jumbo v0, "u"

    iput-object v0, p0, Likj;->e:Ljava/lang/String;

    .line 250
    const-string/jumbo v0, "c"

    iput-object v0, p0, Likj;->f:Ljava/lang/String;

    .line 294
    const/4 v0, 0x2

    iput v0, p0, Likj;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Likj;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Likj;->i:Ljava/util/Map;

    .line 403
    :cond_0
    iget-object v0, p0, Likj;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Likj;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Likj;->i:Ljava/util/Map;

    .line 410
    :cond_0
    iget-object v0, p0, Likj;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method
