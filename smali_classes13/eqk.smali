.class public final Leqk;
.super Leqi;
.source "LightAppSearchModel.java"


# instance fields
.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "desc"    # Ljava/lang/CharSequence;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "senderName"    # Ljava/lang/String;
    .param p6, "appId"    # J
    .param p8, "msgId"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Leqi;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 22
    iput-object p3, p0, Leqk;->f:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Leqk;->g:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Leqk;->h:Ljava/lang/String;

    .line 25
    iput-wide p6, p0, Leqk;->d:J

    .line 26
    iput-object p8, p0, Leqk;->e:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(Lchq;)Leqk;
    .locals 10
    .param p0, "sro"    # Lchq;

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_0

    iget-object v1, p0, Lchq;->h:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget-object v1, p0, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v0, p0, Lchq;->h:Ljava/util/Map;

    const-string/jumbo v1, "icon"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 41
    .local v4, "icon":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 46
    :goto_1
    new-instance v0, Leqk;

    iget-object v1, p0, Lchq;->b:Ljava/lang/String;

    iget-object v2, p0, Lchq;->c:Ljava/lang/String;

    iget-object v5, p0, Lchq;->d:Ljava/lang/String;

    iget-wide v6, p0, Lchq;->f:J

    iget-object v8, p0, Lchq;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Leqk;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 42
    :catch_0
    move-exception v9

    .line 43
    .local v9, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v9}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method
