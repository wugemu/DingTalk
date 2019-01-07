.class final Ldxv$16;
.super Lcmg;
.source "GroupRobotServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxv;->e(Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxv;


# direct methods
.method constructor <init>(Ldxv;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxv;

    .prologue
    .line 443
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/String;>;"
    iput-object p1, p0, Ldxv$16;->a:Ldxv;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 443
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
