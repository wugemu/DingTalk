.class public Lcom/amap/api/services/core/SuggestionCity;
.super Ljava/lang/Object;
.source "SuggestionCity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amap/api/services/core/SuggestionCity;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/amap/api/services/core/SuggestionCity;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amap/api/services/core/SuggestionCity;->c:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/amap/api/services/core/SuggestionCity;->d:I

    .line 31
    return-void
.end method


# virtual methods
.method public getAdCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/amap/api/services/core/SuggestionCity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/services/core/SuggestionCity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/services/core/SuggestionCity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionNum()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/amap/api/services/core/SuggestionCity;->d:I

    return v0
.end method

.method public setAdCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/amap/api/services/core/SuggestionCity;->c:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/amap/api/services/core/SuggestionCity;->b:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/amap/api/services/core/SuggestionCity;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSuggestionNum(I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/amap/api/services/core/SuggestionCity;->d:I

    .line 103
    return-void
.end method
