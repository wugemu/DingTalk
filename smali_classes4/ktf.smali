.class public final Lktf;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lktk;

.field public final b:Lktq;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/thrift/protocol/a$a;

    invoke-direct {v0}, Lorg/apache/thrift/protocol/a$a;-><init>()V

    invoke-direct {p0, v0}, Lktf;-><init>(Lorg/apache/thrift/protocol/g;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/thrift/protocol/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lktq;

    invoke-direct {v0}, Lktq;-><init>()V

    iput-object v0, p0, Lktf;->b:Lktq;

    iget-object v0, p0, Lktf;->b:Lktq;

    invoke-interface {p1, v0}, Lorg/apache/thrift/protocol/g;->a(Lktr;)Lktk;

    move-result-object v0

    iput-object v0, p0, Lktf;->a:Lktk;

    return-void
.end method
