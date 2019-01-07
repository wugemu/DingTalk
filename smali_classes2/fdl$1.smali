.class final Lfdl$1;
.super Lcmg;
.source "CircleAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdl;->a(Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lfer;",
        "Lfer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfdl;


# direct methods
.method constructor <init>(Lfdl;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfdl;

    .prologue
    .line 230
    .local p2, "x0":Lcma;, "Lcma<Lfer;>;"
    iput-object p1, p0, Lfdl$1;->a:Lfdl;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 230
    check-cast p1, Lfer;

    return-object p1
.end method
