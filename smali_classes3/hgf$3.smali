.class final Lhgf$3;
.super Lcmg;
.source "DeviceListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgf;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lhiv;",
        "Lhiv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgf;


# direct methods
.method constructor <init>(Lhgf;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhgf;

    .prologue
    .line 231
    .local p2, "x0":Lcma;, "Lcma<Lhiv;>;"
    iput-object p1, p0, Lhgf$3;->a:Lhgf;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 231
    check-cast p1, Lhiv;

    return-object p1
.end method
