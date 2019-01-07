.class public final Lke$c;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Lke$b;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const-string/jumbo v3, "ip"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lke$c;->a:Ljava/lang/String;

    .line 128
    const-string/jumbo v3, "unit"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lke$c;->b:Ljava/lang/String;

    .line 129
    const-string/jumbo v3, "uid"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lke$c;->d:Ljava/lang/String;

    .line 130
    const-string/jumbo v3, "utdid"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lke$c;->e:Ljava/lang/String;

    .line 131
    const-string/jumbo v3, "cv"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lke$c;->f:I

    .line 132
    const-string/jumbo v3, "fcl"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lke$c;->g:I

    .line 133
    const-string/jumbo v3, "fct"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lke$c;->h:I

    .line 134
    const-string/jumbo v3, "dns"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 135
    .local v0, "dnsArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 137
    .local v2, "length":I
    new-array v3, v2, [Lke$b;

    iput-object v3, p0, Lke$c;->c:[Lke$b;

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 139
    iget-object v3, p0, Lke$c;->c:[Lke$b;

    new-instance v4, Lke$b;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lke$b;-><init>(Lorg/json/JSONObject;)V

    aput-object v4, v3, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    iput-object v4, p0, Lke$c;->c:[Lke$b;

    .line 144
    :cond_1
    return-void
.end method
