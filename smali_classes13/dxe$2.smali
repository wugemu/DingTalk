.class final Ldxe$2;
.super Lcme;
.source "AnnounceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxe;->b(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldxe;


# direct methods
.method constructor <init>(Ldxe;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxe;

    .prologue
    .line 49
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Ldxe$2;->b:Ldxe;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
