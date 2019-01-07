.class public final Lbso$1;
.super Lcmg;
.source "DeviceRpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lbse;",
        "Lbse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbso;


# direct methods
.method public constructor <init>(Lbso;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbso;

    .prologue
    .line 166
    .local p2, "x0":Lcma;, "Lcma<Lbse;>;"
    iput-object p1, p0, Lbso$1;->a:Lbso;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 166
    check-cast p1, Lbse;

    return-object p1
.end method
