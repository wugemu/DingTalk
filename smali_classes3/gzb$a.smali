.class public final Lgzb$a;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/reflect/Type;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final d:Lgzb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgzb$a",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Object;ILgzb$a;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TV;I",
            "Lgzb$a",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lgzb$a;, "Lgzb$a<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lgzb$a;, "Lgzb$a<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lgzb$a;->b:Ljava/lang/reflect/Type;

    .line 97
    iput-object p2, p0, Lgzb$a;->c:Ljava/lang/Object;

    .line 98
    iput-object p4, p0, Lgzb$a;->d:Lgzb$a;

    .line 99
    iput p3, p0, Lgzb$a;->a:I

    .line 100
    return-void
.end method
