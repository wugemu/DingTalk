.class final Lfba$2;
.super Lcme;
.source "QrcodeAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfba;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
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
.field final synthetic b:Lfba;


# direct methods
.method constructor <init>(Lfba;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfba;

    .prologue
    .line 34
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfba$2;->b:Lfba;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
