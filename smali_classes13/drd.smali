.class public Ldrd;
.super Ljava/lang/Object;
.source "EmotionObject.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldrd;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 5
    .param p1, "enableDisplayingGif"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x12c

    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Ldrd;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    if-eqz p1, :cond_1

    iget-object v2, p0, Ldrd;->b:Ljava/lang/String;

    invoke-static {v2}, Ldkj;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 72
    invoke-static {v1, v4, v4}, Lebb;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 77
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 67
    .restart local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v4, v4, v3}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
