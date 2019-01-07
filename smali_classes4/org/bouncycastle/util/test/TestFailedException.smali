.class public Lorg/bouncycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private _result:Llbk;


# direct methods
.method public constructor <init>(Llbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Llbk;

    return-void
.end method


# virtual methods
.method public getResult()Llbk;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Llbk;

    return-object v0
.end method
