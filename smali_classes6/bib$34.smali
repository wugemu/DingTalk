.class final Lbib$34;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;",
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
    .line 190
    iput-object p1, p0, Lbib$34;->a:Lbib;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 190
    .line 1193
    iget-object v0, p0, Lbib$34;->a:Lbib;

    invoke-static {v0}, Lbib;->b(Lbib;)V

    .line 1194
    iget-object v0, p0, Lbib$34;->a:Lbib;

    invoke-static {v0}, Lbib;->c(Lbib;)V

    .line 190
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method
