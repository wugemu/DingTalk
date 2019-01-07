.class public Lcom/amap/api/mapcore/util/ay;
.super Ljava/lang/Object;
.source "OfflineInitBean.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ay;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/ay;->a:Z

    .line 13
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/ay;->a:Z

    return v0
.end method
