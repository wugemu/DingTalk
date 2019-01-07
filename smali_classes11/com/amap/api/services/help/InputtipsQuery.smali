.class public Lcom/amap/api/services/help/InputtipsQuery;
.super Ljava/lang/Object;
.source "InputtipsQuery.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->c:Z

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->d:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/amap/api/services/help/InputtipsQuery;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityLimit()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->c:Z

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amap/api/services/help/InputtipsQuery;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCityLimit(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->c:Z

    .line 60
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amap/api/services/help/InputtipsQuery;->d:Ljava/lang/String;

    .line 44
    return-void
.end method
