.class public Lcom/laiwang/protocol/android/bw;
.super Ljava/lang/Object;
.source "UpResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/laiwang/protocol/android/bw;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "upIdx"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/laiwang/protocol/android/bw;->b:I

    .line 31
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/laiwang/protocol/android/bw;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/laiwang/protocol/android/bw;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "upFrag"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/laiwang/protocol/android/bw;->c:I

    .line 39
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/laiwang/protocol/android/bw;->d:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/laiwang/protocol/android/bw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "hd"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/laiwang/protocol/android/bw;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/laiwang/protocol/android/bw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/laiwang/protocol/android/bw;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/laiwang/protocol/android/bw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/laiwang/protocol/android/bw;->g:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/laiwang/protocol/android/bw;->g:Ljava/lang/String;

    return-object v0
.end method
