.class final Lknf$1;
.super Lknf;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lknf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkmy;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lkmy;JLokio/BufferedSource;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lknf$1;->a:Lkmy;

    iput-wide p2, p0, Lknf$1;->b:J

    iput-object p4, p0, Lknf$1;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lknf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 230
    iget-wide v0, p0, Lknf$1;->b:J

    return-wide v0
.end method

.method public final c()Lokio/BufferedSource;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lknf$1;->c:Lokio/BufferedSource;

    return-object v0
.end method
