.class final Ldxh$1;
.super Lcmg;
.source "BirthdayServiceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldxh;->a(ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldxh;


# direct methods
.method constructor <init>(Ldxh;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldxh;

    .prologue
    .line 34
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Ldxh$1;->a:Ldxh;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
