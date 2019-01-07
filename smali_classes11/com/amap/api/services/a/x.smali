.class public Lcom/amap/api/services/a/x;
.super Ljava/lang/Object;
.source "QueryFilterNum.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amap/api/services/a/x;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amap/api/services/a/x;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/amap/api/services/a/x;->c:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/amap/api/services/a/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/amap/api/services/a/x;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amap/api/services/a/x;->c:Ljava/lang/String;

    return-object v0
.end method
