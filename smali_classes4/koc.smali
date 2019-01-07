.class public final Lkoc;
.super Lknf;
.source "RealResponseBody.java"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:J

.field private final c:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/BufferedSource;)V
    .locals 0
    .param p1, "contentTypeString"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentLength"    # J
    .param p4, "source"    # Lokio/BufferedSource;

    .prologue
    .line 33
    invoke-direct {p0}, Lknf;-><init>()V

    .line 34
    iput-object p1, p0, Lkoc;->a:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, Lkoc;->b:J

    .line 36
    iput-object p4, p0, Lkoc;->c:Lokio/BufferedSource;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    iget-wide v0, p0, Lkoc;->b:J

    return-wide v0
.end method

.method public final c()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lkoc;->c:Lokio/BufferedSource;

    return-object v0
.end method
