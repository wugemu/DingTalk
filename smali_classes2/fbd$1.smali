.class public final Lfbd$1;
.super Lcmg;
.source "SecurityAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfqn;",
        "Lfqn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbd;


# direct methods
.method public constructor <init>(Lfbd;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbd;

    .prologue
    .line 84
    .local p2, "x0":Lcma;, "Lcma<Lfqn;>;"
    iput-object p1, p0, Lfbd$1;->a:Lfbd;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lfqn;

    return-object p1
.end method
