.class public final Lfar$2;
.super Lcmg;
.source "LabelAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lfar;


# direct methods
.method public constructor <init>(Lfar;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfar;

    .prologue
    .line 109
    .local p2, "x0":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iput-object p1, p0, Lfar$2;->a:Lfar;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 109
    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
