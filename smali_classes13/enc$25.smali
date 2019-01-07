.class final Lenc$25;
.super Lcmg;
.source "SearchAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenc;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lccf;",
        "Lccm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc;


# direct methods
.method constructor <init>(Lenc;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lenc;

    .prologue
    .line 980
    .local p2, "x0":Lcma;, "Lcma<Lccm;>;"
    iput-object p1, p0, Lenc$25;->a:Lenc;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 980
    check-cast p1, Lccf;

    .line 1983
    invoke-static {p1}, Lccm;->a(Lccf;)Lccm;

    move-result-object v0

    .line 980
    return-object v0
.end method
