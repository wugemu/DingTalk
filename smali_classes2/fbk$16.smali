.class final Lfbk$16;
.super Lcmg;
.source "UserProfileRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbk;


# direct methods
.method constructor <init>(Lfbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 689
    .local p2, "x0":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lfbk$16;->a:Lfbk;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 689
    check-cast p1, Ljava/util/Map;

    return-object p1
.end method
