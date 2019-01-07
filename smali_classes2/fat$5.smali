.class final Lfat$5;
.super Lcmg;
.source "OmpPolicyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfat;->a(JJLcma;)V
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
.field final synthetic a:Lfat;


# direct methods
.method constructor <init>(Lfat;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfat;

    .prologue
    .line 155
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfat$5;->a:Lfat;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 155
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
