.class final Lacu$j;
.super Ljava/lang/Object;
.source "CMailAllSearchAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lacu$i;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lacu$j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 398
    sget v0, Laxo$g;->cmail_all_search_more:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 394
    check-cast p2, Lacu$i;

    .line 1408
    const v0, 0x1020014

    iget-object v1, p2, Lacu$i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 394
    return-void
.end method