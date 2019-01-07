.class public Lcom/laiwang/protocol/android/bi$b;
.super Ljava/lang/Object;
.source "Domains.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/laiwang/protocol/android/bi$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/laiwang/protocol/android/bi$b;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/laiwang/protocol/android/bi$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "sni"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/laiwang/protocol/android/bi$b;->b:Ljava/lang/String;

    .line 86
    return-void
.end method
