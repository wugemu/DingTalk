.class public final Lkom$a;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lokio/BufferedSource;

.field public d:Lokio/BufferedSink;

.field public e:Lkom$b;

.field f:Lkor;

.field g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    sget-object v0, Lkom$b;->l:Lkom$b;

    iput-object v0, p0, Lkom$a;->e:Lkom$b;

    .line 546
    sget-object v0, Lkor;->a:Lkor;

    iput-object v0, p0, Lkom$a;->f:Lkor;

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkom$a;->g:Z

    .line 556
    return-void
.end method
