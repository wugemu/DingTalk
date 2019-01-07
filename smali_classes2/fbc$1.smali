.class public final Lfbc$1;
.super Lcmg;
.source "ReservationAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfqm;",
        "Lfqm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbc;


# direct methods
.method public constructor <init>(Lfbc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbc;

    .prologue
    .line 52
    .local p2, "x0":Lcma;, "Lcma<Lfqm;>;"
    iput-object p1, p0, Lfbc$1;->a:Lfbc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lfqm;

    return-object p1
.end method
