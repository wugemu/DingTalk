.class final Lfzx$1;
.super Ljava/lang/Object;
.source "CSpaceAddMenuAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzx;-><init>(Landroid/content/Context;Ljava/util/List;)V
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
        "Lfzx$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfzx;


# direct methods
.method constructor <init>(Lfzx;)V
    .locals 0
    .param p1, "this$0"    # Lfzx;

    .prologue
    .line 90
    iput-object p1, p0, Lfzx$1;->a:Lfzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 90
    check-cast p1, Lfzx$a;

    check-cast p2, Lfzx$a;

    .line 1093
    if-nez p1, :cond_0

    move v1, v0

    .line 1094
    :goto_0
    if-nez p2, :cond_1

    .line 1095
    :goto_1
    sub-int v0, v1, v0

    .line 90
    return v0

    .line 2057
    :cond_0
    iget v1, p1, Lfzx$a;->b:I

    goto :goto_0

    .line 3057
    :cond_1
    iget v0, p2, Lfzx$a;->b:I

    goto :goto_1
.end method
