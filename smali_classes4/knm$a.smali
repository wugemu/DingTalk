.class public final Lknm$a;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lknm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lknc;

.field final c:Lkne;

.field d:Ljava/util/Date;

.field e:Ljava/lang/String;

.field f:Ljava/util/Date;

.field g:Ljava/lang/String;

.field h:Ljava/util/Date;

.field i:J

.field j:J

.field k:Ljava/lang/String;

.field l:I


# direct methods
.method public constructor <init>(JLknc;Lkne;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lknc;
    .param p4, "cacheResponse"    # Lkne;

    .prologue
    const/4 v8, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput v8, p0, Lknm$a;->l:I

    .line 141
    iput-wide p1, p0, Lknm$a;->a:J

    .line 142
    iput-object p3, p0, Lknm$a;->b:Lknc;

    .line 143
    iput-object p4, p0, Lknm$a;->c:Lkne;

    .line 145
    if-eqz p4, :cond_5

    .line 1260
    iget-wide v6, p4, Lkne;->k:J

    .line 146
    iput-wide v6, p0, Lknm$a;->i:J

    .line 1269
    iget-wide v6, p4, Lkne;->l:J

    .line 147
    iput-wide v6, p0, Lknm$a;->j:J

    .line 2136
    iget-object v1, p4, Lkne;->f:Lkmv;

    .line 149
    .local v1, "headers":Lkmv;
    const/4 v2, 0x0

    .line 3077
    .local v2, "i":I
    iget-object v5, v1, Lkmv;->a:[Ljava/lang/String;

    array-length v5, v5

    div-int/lit8 v3, v5, 0x2

    .line 149
    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 150
    invoke-virtual {v1, v2}, Lkmv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lkmv;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    invoke-static {v4}, Lkny;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lknm$a;->d:Ljava/util/Date;

    .line 154
    iput-object v4, p0, Lknm$a;->e:Ljava/lang/String;

    .line 149
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_1
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-static {v4}, Lkny;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lknm$a;->h:Ljava/util/Date;

    goto :goto_1

    .line 157
    :cond_2
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    invoke-static {v4}, Lkny;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lknm$a;->f:Ljava/util/Date;

    .line 159
    iput-object v4, p0, Lknm$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_3
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    iput-object v4, p0, Lknm$a;->k:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_4
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    invoke-static {v4, v8}, Lknz;->b(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lknm$a;->l:I

    goto :goto_1

    .line 167
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lkmv;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    return-void
.end method
