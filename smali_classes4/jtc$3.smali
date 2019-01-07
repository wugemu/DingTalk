.class final Ljtc$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljtc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljtc;


# direct methods
.method constructor <init>(Ljtc;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Ljtc$3;->a:Ljtc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    .line 1159
    invoke-static {p1}, Ljtc;->c(Ljava/io/File;)I

    move-result v0

    invoke-static {p2}, Ljtc;->c(Ljava/io/File;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 154
    return v0
.end method
