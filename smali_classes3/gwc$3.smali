.class final Lgwc$3;
.super Lcme;
.source "ShareAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgwc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lgwo;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Lgwn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lgwc;


# direct methods
.method constructor <init>(Lgwc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgwc;

    .prologue
    .line 66
    .local p2, "x0":Lcma;, "Lcma<Lgwn;>;"
    iput-object p1, p0, Lgwc$3;->b:Lgwc;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method