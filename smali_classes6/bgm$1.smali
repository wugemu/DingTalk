.class public final Lbgm$1;
.super Lcmg;
.source "DidoReceptionRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Lbdk;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lbdk;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0

    .prologue
    .line 18
    .local p1, "x0":Lcma;, "Lcma<Ljava/util/List<Lbdk;>;>;"
    invoke-direct {p0, p1}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
