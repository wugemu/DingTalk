.class public final Lknc$a;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lknc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lkmw;

.field b:Ljava/lang/String;

.field public c:Lkmv$a;

.field d:Lknd;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lknc$a;->e:Ljava/util/Map;

    .line 129
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lknc$a;->b:Ljava/lang/String;

    .line 130
    new-instance v0, Lkmv$a;

    invoke-direct {v0}, Lkmv$a;-><init>()V

    iput-object v0, p0, Lknc$a;->c:Lkmv$a;

    .line 131
    return-void
.end method

.method constructor <init>(Lknc;)V
    .locals 2
    .param p1, "request"    # Lknc;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lknc$a;->e:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Lknc;->a:Lkmw;

    iput-object v0, p0, Lknc$a;->a:Lkmw;

    .line 135
    iget-object v0, p1, Lknc;->b:Ljava/lang/String;

    iput-object v0, p0, Lknc$a;->b:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lknc;->d:Lknd;

    iput-object v0, p0, Lknc$a;->d:Lknd;

    .line 137
    iget-object v0, p1, Lknc;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 139
    :goto_0
    iput-object v0, p0, Lknc$a;->e:Ljava/util/Map;

    .line 140
    iget-object v0, p1, Lknc;->c:Lkmv;

    invoke-virtual {v0}, Lkmv;->a()Lkmv$a;

    move-result-object v0

    iput-object v0, p0, Lknc$a;->c:Lkmv$a;

    .line 141
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lknc;->e:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lknc$a;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    const-string/jumbo v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_1
    :goto_0
    invoke-static {p1}, Lkmw;->d(Ljava/lang/String;)Lkmw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lknc$a;->a(Lkmw;)Lknc$a;

    move-result-object v0

    return-object v0

    .line 161
    :cond_2
    const-string/jumbo v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lknc$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lknc$a;->c:Lkmv$a;

    .line 1332
    invoke-static {p1, p2}, Lkmv$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0, p1}, Lkmv$a;->a(Ljava/lang/String;)Lkmv$a;

    .line 1334
    invoke-virtual {v0, p1, p2}, Lkmv$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    .line 185
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lknd;)Lknc$a;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lknd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 252
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lkoa;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    if-nez p2, :cond_5

    .line 2028
    const-string/jumbo v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PUT"

    .line 2029
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PATCH"

    .line 2030
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "PROPPATCH"

    .line 2031
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "REPORT"

    .line 2032
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 257
    :goto_0
    if-eqz v0, :cond_5

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2032
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 260
    :cond_5
    iput-object p1, p0, Lknc$a;->b:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lknc$a;->d:Lknd;

    .line 262
    return-object p0
.end method

.method public final a(Lkmw;)Lknc$a;
    .locals 2
    .param p1, "url"    # Lkmw;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 144
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iput-object p1, p0, Lknc$a;->a:Lkmw;

    .line 146
    return-object p0
.end method

.method public final a()Lknc;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Lknc$a;->a:Lkmw;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    new-instance v0, Lknc;

    invoke-direct {v0, p0}, Lknc;-><init>(Lknc$a;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lknc$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lknc$a;->c:Lkmv$a;

    invoke-virtual {v0, p1}, Lkmv$a;->a(Ljava/lang/String;)Lkmv$a;

    .line 203
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lknc$a;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lknc$a;->c:Lkmv$a;

    invoke-virtual {v0, p1, p2}, Lkmv$a;->a(Ljava/lang/String;Ljava/lang/String;)Lkmv$a;

    .line 197
    return-object p0
.end method
