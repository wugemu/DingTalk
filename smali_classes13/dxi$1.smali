.class final Ldxi$1;
.super Lcme;
.source "ChannelAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxi;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ljava/util/List",
        "<",
        "Lddm;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldxi;


# direct methods
.method constructor <init>(Ldxi;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxi;

    .prologue
    .line 78
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lddm;>;>;"
    iput-object p1, p0, Ldxi$1;->b:Ldxi;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
