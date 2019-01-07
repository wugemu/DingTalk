.class final Ldxy$13;
.super Lcmg;
.source "IMApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxy;->a(Ljava/lang/String;Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxy;


# direct methods
.method constructor <init>(Ldxy;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxy;

    .prologue
    .line 353
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    iput-object p1, p0, Ldxy$13;->a:Ldxy;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 353
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
