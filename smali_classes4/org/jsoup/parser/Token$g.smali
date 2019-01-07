.class public abstract Lorg/jsoup/parser/Token$g;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lled;

.field private f:Ljava/lang/StringBuilder;

.field private g:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, v1}, Lorg/jsoup/parser/Token;-><init>(B)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    .line 72
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$g;->g:Z

    .line 73
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$g;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/jsoup/parser/Token$g;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method synthetic a()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$g;->h()Lorg/jsoup/parser/Token$g;

    move-result-object v0

    return-object v0
.end method

.method final a(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$g;->b(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method final a([C)V
    .locals 1
    .param p1, "append"    # [C

    .prologue
    .line 158
    .line 3163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$g;->g:Z

    .line 159
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 160
    return-void
.end method

.method final b(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$g;->c(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "append":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    .line 133
    return-void

    .line 132
    .restart local p1    # "append":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final c(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 153
    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$g;->g:Z

    .line 154
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "append":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    .line 141
    return-void

    .line 140
    .restart local p1    # "append":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 148
    .line 1163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$g;->g:Z

    .line 149
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method

.method public h()Lorg/jsoup/parser/Token$g;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$g;->a(Ljava/lang/StringBuilder;)V

    .line 81
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$g;->g:Z

    .line 82
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$g;->d:Z

    .line 83
    iput-object v1, p0, Lorg/jsoup/parser/Token$g;->e:Lled;

    .line 84
    return-object p0
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Lorg/jsoup/parser/Token$g;->e:Lled;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lled;

    invoke-direct {v1}, Lled;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/Token$g;->e:Lled;

    .line 91
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 93
    iget-boolean v1, p0, Lorg/jsoup/parser/Token$g;->g:Z

    if-nez v1, :cond_2

    .line 94
    new-instance v0, Llec;

    iget-object v1, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Llec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, "attribute":Llec;
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/Token$g;->e:Lled;

    invoke-virtual {v1, v0}, Lled;->a(Llec;)V

    .line 99
    .end local v0    # "attribute":Llec;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token$g;->a(Ljava/lang/StringBuilder;)V

    .line 101
    return-void

    .line 96
    :cond_2
    new-instance v0, Llec;

    iget-object v1, p0, Lorg/jsoup/parser/Token$g;->c:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/Token$g;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Llec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "attribute":Llec;
    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1053
    :goto_0
    if-eqz v0, :cond_2

    .line 1054
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lorg/jsoup/parser/Token$g;->b:Ljava/lang/String;

    return-object v0
.end method
