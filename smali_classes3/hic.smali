.class public Lhic;
.super Ljava/lang/Object;
.source "HpmInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lhic;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Lorg/json/JSONObject;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhjb;)V
    .locals 5
    .param p1, "model"    # Lhjb;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lhic;->f:Lorg/json/JSONObject;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget-object v1, p1, Lhjb;->a:Ljava/lang/String;

    iput-object v1, p0, Lhic;->a:Ljava/lang/String;

    .line 54
    iget-object v1, p1, Lhjb;->f:Ljava/lang/String;

    iput-object v1, p0, Lhic;->b:Ljava/lang/String;

    .line 55
    iget-object v1, p1, Lhjb;->i:Ljava/lang/String;

    iput-object v1, p0, Lhic;->c:Ljava/lang/String;

    .line 56
    iget-object v1, p1, Lhjb;->h:Ljava/lang/String;

    iput-object v1, p0, Lhic;->d:Ljava/lang/String;

    .line 57
    iget-object v1, p1, Lhjb;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lhic;->e:J

    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lhjb;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhic;->f:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    :try_start_1
    iget-object v1, p0, Lhic;->f:Lorg/json/JSONObject;

    const-string/jumbo v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lhjb;->l:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_1
    iget-object v1, p1, Lhjb;->b:Ljava/lang/String;

    iput-object v1, p0, Lhic;->g:Ljava/lang/String;

    .line 72
    iget-object v1, p1, Lhjb;->e:Ljava/lang/String;

    iput-object v1, p0, Lhic;->h:Ljava/lang/String;

    .line 73
    iget-object v1, p1, Lhjb;->c:Ljava/lang/String;

    iput-object v1, p0, Lhic;->i:Ljava/lang/String;

    .line 75
    :cond_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 69
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lhic;->f:Lorg/json/JSONObject;

    .line 79
    if-eqz p1, :cond_1

    .line 80
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->a:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->b:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->c:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->d:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lhic;->e:J

    .line 85
    const-string/jumbo v0, "extendInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lhic;->f:Lorg/json/JSONObject;

    .line 86
    iget-object v0, p0, Lhic;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lhic;->f:Lorg/json/JSONObject;

    .line 89
    :cond_0
    const-string/jumbo v0, "createTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->g:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "modifiedTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->h:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhic;->i:Ljava/lang/String;

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lhic;)I
    .locals 13
    .param p1, "another"    # Lhic;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 116
    if-eqz p1, :cond_0

    iget-object v11, p1, Lhic;->c:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    move v2, v10

    .line 138
    :cond_1
    :goto_0
    return v2

    .line 118
    :cond_2
    iget-object v11, p0, Lhic;->c:Ljava/lang/String;

    const-string/jumbo v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "thisVerArr":[Ljava/lang/String;
    iget-object v11, p1, Lhic;->c:Ljava/lang/String;

    const-string/jumbo v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "thatVerArr":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 123
    .local v2, "result":I
    array-length v11, v7

    array-length v12, v6

    if-ge v11, v12, :cond_3

    array-length v3, v7

    .line 124
    .local v3, "size":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 126
    :try_start_0
    aget-object v11, v7, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 127
    .local v8, "thisVer":J
    aget-object v11, v6, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 128
    .local v4, "thatVer":J
    cmp-long v11, v8, v4

    if-eqz v11, :cond_5

    .line 129
    cmp-long v11, v8, v4

    if-lez v11, :cond_4

    move v2, v10

    :goto_3
    goto :goto_0

    .line 123
    .end local v1    # "i":I
    .end local v3    # "size":I
    .end local v4    # "thatVer":J
    .end local v8    # "thisVer":J
    :cond_3
    array-length v3, v6

    goto :goto_1

    .line 129
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "thatVer":J
    .restart local v8    # "thisVer":J
    :cond_4
    const/4 v2, -0x1

    goto :goto_3

    .line 133
    .end local v4    # "thatVer":J
    .end local v8    # "thisVer":J
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public final a()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "appId"

    iget-object v3, p0, Lhic;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lhic;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string/jumbo v2, "version"

    iget-object v3, p0, Lhic;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v2, "url"

    iget-object v3, p0, Lhic;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string/jumbo v2, "size"

    iget-wide v4, p0, Lhic;->e:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 104
    const-string/jumbo v2, "extend_info"

    iget-object v3, p0, Lhic;->f:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string/jumbo v2, "create_time"

    iget-object v3, p0, Lhic;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v2, "modified_time"

    iget-object v3, p0, Lhic;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v2, "desc"

    iget-object v3, p0, Lhic;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lhic;

    invoke-virtual {p0, p1}, Lhic;->a(Lhic;)I

    move-result v0

    return v0
.end method
