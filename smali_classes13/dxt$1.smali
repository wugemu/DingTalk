.class public final Ldxt$1;
.super Lcmg;
.source "GroupRingAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldxt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Ldxt;


# direct methods
.method public constructor <init>(Ldxt;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxt;

    .prologue
    .line 48
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/String;>;"
    iput-object p1, p0, Ldxt$1;->a:Ldxt;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
