.class final Ldyc$1;
.super Lcme;
.source "ImgResAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldyc;->a(Ljava/util/List;Lcma;)V
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
.field final synthetic b:Ldyc;


# direct methods
.method constructor <init>(Ldyc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldyc;

    .prologue
    .line 85
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iput-object p1, p0, Ldyc$1;->b:Ldyc;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
