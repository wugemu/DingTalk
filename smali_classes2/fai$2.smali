.class final Lfai$2;
.super Lcme;
.source "ChannelsAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfai;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcme",
        "<",
        "Ljava/util/List",
        "<",
        "Lfoj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lfai;


# direct methods
.method constructor <init>(Lfai;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfai;

    .prologue
    .line 140
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Lfoj;>;>;"
    iput-object p1, p0, Lfai$2;->b:Lfai;

    invoke-direct {p0, p2}, Lcme;-><init>(Lcma;)V

    return-void
.end method
