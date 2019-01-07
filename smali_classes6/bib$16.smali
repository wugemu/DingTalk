.class final Lbib$16;
.super Lckm$a;
.source "BasicDingViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 423
    iput-object p1, p0, Lbib$16;->a:Lbib;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 423
    .line 1426
    iget-object v0, p0, Lbib$16;->a:Lbib;

    invoke-static {v0}, Lbib;->h(Lbib;)V

    .line 423
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method
