.class public final Lgon$65;
.super Lcmg;
.source "SpaceRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lgjq;",
        "Lgog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgon;


# direct methods
.method public constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 3412
    .local p2, "x0":Lcma;, "Lcma<Lgog;>;"
    iput-object p1, p0, Lgon$65;->a:Lgon;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3412
    check-cast p1, Lgjq;

    .line 4415
    invoke-static {p1}, Lgog;->a(Lgjq;)Lgog;

    move-result-object v0

    .line 3412
    return-object v0
.end method
