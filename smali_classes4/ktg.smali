.class public final Lktg;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/ByteArrayOutputStream;

.field public b:Lktk;

.field private final c:Lkto;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lktg;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lktg;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lkto;

    iget-object v1, p0, Lktg;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lkto;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lktg;->c:Lkto;

    iget-object v0, p0, Lktg;->c:Lkto;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lktr;)Lktk;

    move-result-object v0

    iput-object v0, p0, Lktg;->b:Lktk;

    return-void
.end method
