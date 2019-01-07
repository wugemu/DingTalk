.class public Lcom/amap/api/services/a/cn$a;
.super Ljava/lang/Object;
.source "DynamicPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const-string/jumbo v0, "copy"

    iput-object v0, p0, Lcom/amap/api/services/a/cn$a;->f:Ljava/lang/String;

    .line 183
    iput-object p1, p0, Lcom/amap/api/services/a/cn$a;->a:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/amap/api/services/a/cn$a;->b:Ljava/lang/String;

    .line 185
    iput-object p3, p0, Lcom/amap/api/services/a/cn$a;->c:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Lcom/amap/api/services/a/cn$a;->d:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lcom/amap/api/services/a/cn$a;->e:Ljava/lang/String;

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/cn$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/cn$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/cn$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/cn$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/services/a/cn$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/cn$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/amap/api/services/a/cn$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/cn$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/services/a/cn$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/cn$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/amap/api/services/a/cn$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/amap/api/services/a/cn$a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/amap/api/services/a/cn$a;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/amap/api/services/a/cn$a;->f:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public a()Lcom/amap/api/services/a/cn;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/amap/api/services/a/cn;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/cn;-><init>(Lcom/amap/api/services/a/cn$a;)V

    return-object v0
.end method
