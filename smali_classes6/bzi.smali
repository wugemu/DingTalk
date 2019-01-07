.class public final Lbzi;
.super Ljava/lang/Object;
.source "RequestFlow.java"


# instance fields
.field final a:I

.field final b:[Ljava/lang/String;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "hashCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lbzi;->a:I

    .line 19
    iput-object p2, p0, Lbzi;->b:[Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbzi;->c:Ljava/util/List;

    .line 21
    return-void
.end method
