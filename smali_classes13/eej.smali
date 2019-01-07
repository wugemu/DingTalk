.class public Leej;
.super Ljava/lang/Object;
.source "OAActivityDatasourceImpl.java"

# interfaces
.implements Leei;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leej$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static h:Leei;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leej$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Leej;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leej;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v1, p0, Leej;->c:Z

    .line 47
    iput-boolean v1, p0, Leej;->d:Z

    .line 48
    iput v1, p0, Leej;->e:I

    .line 90
    invoke-static {}, Leej;->f()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Leej;->b:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Leej;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Leej;->b(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Leej;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Leej;

    invoke-direct {v0}, Leej;-><init>()V

    sput-object v0, Leej;->h:Leei;

    .line 69
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 13
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 99
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "adminOnly"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Leej;->c:Z

    .line 101
    const-string/jumbo v11, "show"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Leej;->d:Z

    .line 102
    const-string/jumbo v11, "version"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Leej;->e:I

    .line 103
    const-string/jumbo v11, "buttons"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 104
    .local v1, "buttonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 105
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Leej;->g:Ljava/util/List;

    .line 106
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 107
    .local v9, "len":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 108
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 109
    .local v3, "buttonObject":Lorg/json/JSONObject;
    new-instance v2, Leej$a;

    invoke-direct {v2, p0}, Leej$a;-><init>(Leej;)V

    .line 110
    .local v2, "buttonItem":Leej$a;
    const-string/jumbo v11, "title"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Leej$a;->a:Ljava/lang/String;

    .line 111
    const-string/jumbo v11, "actionUrl"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Leej$a;->b:Ljava/lang/String;

    .line 112
    iget-object v11, p0, Leej;->g:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "buttonItem":Leej$a;
    .end local v3    # "buttonObject":Lorg/json/JSONObject;
    .end local v7    # "i":I
    .end local v9    # "len":I
    :cond_0
    const-string/jumbo v11, "items"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 116
    .local v4, "contentArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 117
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Leej;->f:Ljava/util/List;

    .line 118
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 119
    .restart local v9    # "len":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    if-ge v7, v9, :cond_2

    .line 120
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 121
    .local v5, "contentObject":Lorg/json/JSONObject;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "image"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, "url":Ljava/lang/String;
    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_1

    .line 125
    :try_start_1
    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 130
    :cond_1
    :goto_2
    :try_start_2
    const-string/jumbo v11, "image"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v11, "title"

    const-string/jumbo v12, "title"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v11, "content"

    const-string/jumbo v12, "content"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v11, p0, Leej;->f:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 126
    :catch_0
    move-exception v6

    .line 127
    .local v6, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 136
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "buttonArray":Lorg/json/JSONArray;
    .end local v4    # "contentArray":Lorg/json/JSONArray;
    .end local v5    # "contentObject":Lorg/json/JSONObject;
    .end local v6    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v7    # "i":I
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "len":I
    .end local v10    # "url":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 137
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method

.method public static e()Leei;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Leej;->h:Leei;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Leej;

    invoke-direct {v0}, Leej;-><init>()V

    sput-object v0, Leej;->h:Leei;

    .line 58
    :cond_0
    sget-object v0, Leej;->h:Leei;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "OA_ACTIVITY_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "oa_activity_show_version"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Leej;->g()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Leej;->e:I

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method public final a(J)Z
    .locals 5
    .param p1, "oid"    # J

    .prologue
    .line 144
    iget-boolean v1, p0, Leej;->d:Z

    .line 146
    .local v1, "needShow":Z
    if-eqz v1, :cond_0

    .line 148
    iget-boolean v2, p0, Leej;->c:Z

    if-eqz v2, :cond_1

    invoke-static {}, Leel;->f()Leek;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Leek;->c(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Leej;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "hasShowVersion":I
    iget v2, p0, Leej;->e:I

    if-lt v0, v2, :cond_0

    .line 154
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Leej;->f:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Leej$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Leej;->g:Ljava/util/List;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    sput-object v0, Leej;->h:Leei;

    .line 163
    return-void
.end method
