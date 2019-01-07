.class final Lbso$6;
.super Lcmg;
.source "DeviceRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbso;->a(Lbrz;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lbsa;",
        "Lbsa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbso;


# direct methods
.method constructor <init>(Lbso;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbso;

    .prologue
    .line 59
    .local p2, "x0":Lcma;, "Lcma<Lbsa;>;"
    iput-object p1, p0, Lbso$6;->a:Lbso;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lbsa;

    return-object p1
.end method
