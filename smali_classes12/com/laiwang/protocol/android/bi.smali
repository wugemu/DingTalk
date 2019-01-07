.class public Lcom/laiwang/protocol/android/bi;
.super Ljava/lang/Object;
.source "Domains.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bi$b;,
        Lcom/laiwang/protocol/android/bi$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bi$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bi$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/laiwang/protocol/android/bi;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bi$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Lcom/laiwang/protocol/android/bi$a;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/android/bi;->a:Ljava/util/List;

    .line 18
    return-void
.end method
