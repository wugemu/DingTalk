.class final Lacu$l;
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
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lacu$l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 358
    sget v0, Laxo$g;->cmail_all_search_title:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 354
    check-cast p2, Ljava/lang/String;

    .line 1368
    sget v0, Laxo$f;->title:I

    invoke-virtual {p1, v0, p2}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 354
    return-void
.end method
