.class public final Lke$b;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:[Lke$a;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Z

.field public final p:I

.field public final q:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string/jumbo v5, "host"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lke$b;->a:Ljava/lang/String;

    .line 78
    const-string/jumbo v5, "ttl"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lke$b;->b:I

    .line 79
    const-string/jumbo v5, "safeAisles"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lke$b;->c:Ljava/lang/String;

    .line 80
    const-string/jumbo v5, "cname"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lke$b;->d:Ljava/lang/String;

    .line 81
    const-string/jumbo v5, "hrStrategy"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lke$b;->g:Ljava/lang/String;

    .line 82
    const-string/jumbo v5, "hrIntervalTime"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lke$b;->h:I

    .line 83
    const-string/jumbo v5, "hrUrlPath"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lke$b;->i:Ljava/lang/String;

    .line 84
    const-string/jumbo v5, "hrNum"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lke$b;->j:I

    .line 85
    const-string/jumbo v5, "parallelConNum"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lke$b;->k:I

    .line 86
    const-string/jumbo v5, "idc"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lke$b;->l:Z

    .line 87
    const-string/jumbo v5, "isHot"

    const/4 v8, -0x1

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lke$b;->p:I

    .line 88
    const-string/jumbo v5, "clear"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lke$b;->m:Z

    .line 89
    const-string/jumbo v5, "etag"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lke$b;->n:Ljava/lang/String;

    .line 90
    const-string/jumbo v5, "notModified"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_1

    :goto_1
    iput-boolean v6, p0, Lke$b;->o:Z

    .line 91
    const-string/jumbo v5, "effectNow"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lke$b;->q:Z

    .line 93
    const-string/jumbo v5, "ips"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 94
    .local v3, "ipArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 95
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 96
    .local v4, "length":I
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lke$b;->e:[Ljava/lang/String;

    .line 97
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 98
    iget-object v5, p0, Lke$b;->e:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v3    # "ipArray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :cond_0
    move v5, v7

    .line 88
    goto :goto_0

    :cond_1
    move v6, v7

    .line 90
    goto :goto_1

    .line 101
    .restart local v3    # "ipArray":Lorg/json/JSONArray;
    :cond_2
    iput-object v9, p0, Lke$b;->e:[Ljava/lang/String;

    .line 104
    :cond_3
    const-string/jumbo v5, "aisles"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 105
    .local v0, "aislesArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 107
    .local v1, "arrayLength":I
    new-array v5, v1, [Lke$a;

    iput-object v5, p0, Lke$b;->f:[Lke$a;

    .line 108
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_5

    .line 109
    iget-object v5, p0, Lke$b;->f:[Lke$a;

    new-instance v6, Lke$a;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lke$a;-><init>(Lorg/json/JSONObject;)V

    aput-object v6, v5, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 112
    .end local v1    # "arrayLength":I
    .end local v2    # "i":I
    :cond_4
    iput-object v9, p0, Lke$b;->f:[Lke$a;

    .line 114
    :cond_5
    return-void
.end method
