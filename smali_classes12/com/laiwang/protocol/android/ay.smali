.class public Lcom/laiwang/protocol/android/ay;
.super Ljava/lang/Object;
.source "SessionContext.java"


# instance fields
.field private a:Lcom/laiwang/lws/protocol/LwsSession;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/laiwang/protocol/android/ay;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/laiwang/lws/protocol/LwsSession;)V
    .locals 0
    .param p1, "lwsSession"    # Lcom/laiwang/lws/protocol/LwsSession;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/android/ay;->a:Lcom/laiwang/lws/protocol/LwsSession;

    .line 35
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "sni"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/laiwang/protocol/android/ay;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public b()Lcom/laiwang/lws/protocol/LwsSession;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/android/ay;->a:Lcom/laiwang/lws/protocol/LwsSession;

    return-object v0
.end method
