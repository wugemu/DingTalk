.class public final Lihc;
.super Lihe;
.source "HandshakeImpl1Server.java"

# interfaces
.implements Lihg;


# instance fields
.field private a:S

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lihe;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lihc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lihc;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public final a(S)V
    .locals 0
    .param p1, "status"    # S

    .prologue
    .line 25
    iput-short p1, p0, Lihc;->a:S

    .line 26
    return-void
.end method
