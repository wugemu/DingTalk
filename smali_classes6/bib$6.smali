.class final Lbib$6;
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
        "Ljava/lang/Boolean;",
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
    .line 309
    iput-object p1, p0, Lbib$6;->a:Lbib;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 309
    .line 1312
    iget-object v0, p0, Lbib$6;->a:Lbib;

    invoke-static {v0}, Lbib;->i(Lbib;)V

    .line 309
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method
