.class final Lfbg$9;
.super Lcme;
.source "UserProfileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbg;->a(Lfrs;Lcma;)V
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
.field final synthetic b:Lfbg;


# direct methods
.method constructor <init>(Lfbg;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbg;

    .prologue
    .line 410
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfbg$9;->b:Lfbg;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
