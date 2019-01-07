.class final Lguh$4;
.super Lcmg;
.source "RecruitmentDataRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lguh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lguk;",
        "Lguq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lguh;


# direct methods
.method constructor <init>(Lguh;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lguh;

    .prologue
    .line 86
    .local p2, "x0":Lcma;, "Lcma<Lguq;>;"
    iput-object p1, p0, Lguh$4;->a:Lguh;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, Lguk;

    .line 1089
    invoke-static {p1}, Lguq;->a(Lguk;)Lguq;

    move-result-object v0

    .line 86
    return-object v0
.end method
