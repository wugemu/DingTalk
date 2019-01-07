.class final Lbgm$2;
.super Lcmg;
.source "DidoReceptionRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgm;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lbdu;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lbdu;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 29
    .local p1, "x0":Lcma;, "Lcma<Ljava/util/List<Lbdu;>;>;"
    invoke-direct {p0, p1}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
