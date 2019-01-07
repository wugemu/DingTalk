.class final Ldyk$2;
.super Lcme;
.source "PublicAccountAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyk;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ldyk;


# direct methods
.method constructor <init>(Ldyk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyk;

    .prologue
    .line 54
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iput-object p1, p0, Ldyk$2;->b:Ldyk;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
