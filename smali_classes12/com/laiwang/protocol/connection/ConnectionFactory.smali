.class public Lcom/laiwang/protocol/connection/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.java"


# static fields
.field private static a:Lcom/laiwang/protocol/connection/ConnectionFactory;


# instance fields
.field private b:Lcom/laiwang/protocol/android/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/laiwang/protocol/connection/ConnectionFactory;

    invoke-direct {v0}, Lcom/laiwang/protocol/connection/ConnectionFactory;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/connection/ConnectionFactory;->a:Lcom/laiwang/protocol/connection/ConnectionFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/laiwang/protocol/connection/ConnectionFactory;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/laiwang/protocol/connection/ConnectionFactory;->a:Lcom/laiwang/protocol/connection/ConnectionFactory;

    return-object v0
.end method


# virtual methods
.method a()Lcom/laiwang/protocol/android/ax;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/protocol/connection/ConnectionFactory;->b:Lcom/laiwang/protocol/android/ax;

    return-object v0
.end method

.method public create(Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)Lcom/laiwang/protocol/connection/LWPConnection;
    .locals 2
    .param p1, "type"    # Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    new-instance v0, Lcom/laiwang/protocol/connection/LWPConnection;

    iget-object v1, p0, Lcom/laiwang/protocol/connection/ConnectionFactory;->b:Lcom/laiwang/protocol/android/ax;

    invoke-direct {v0, v1, p1}, Lcom/laiwang/protocol/connection/LWPConnection;-><init>(Lcom/laiwang/protocol/android/ax;Lcom/laiwang/protocol/connection/LWPConnection$ConnectionType;)V

    return-object v0
.end method

.method public init(Lcom/laiwang/protocol/android/ax;)V
    .locals 0
    .param p1, "p"    # Lcom/laiwang/protocol/android/ax;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/laiwang/protocol/connection/ConnectionFactory;->b:Lcom/laiwang/protocol/android/ax;

    .line 20
    return-void
.end method
