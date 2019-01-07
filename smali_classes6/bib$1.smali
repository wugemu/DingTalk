.class final Lbib$1;
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
        "Ljava/lang/Long;",
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
    .line 157
    iput-object p1, p0, Lbib$1;->a:Lbib;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 157
    .line 1160
    iget-object v0, p0, Lbib$1;->a:Lbib;

    invoke-static {v0}, Lbib;->a(Lbib;)V

    .line 157
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method
