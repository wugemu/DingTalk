.class final Ljkq$2;
.super Landroid/util/Property;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Ljkq;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljkq;


# direct methods
.method constructor <init>(Ljkq;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljkq;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    .local p2, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    iput-object p1, p0, Ljkq$2;->a:Ljkq;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, Ljkq;

    .line 1245
    iget v0, p1, Ljkq;->b:F

    .line 1143
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method public final synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 139
    check-cast p1, Ljkq;

    check-cast p2, Ljava/lang/Float;

    .line 2149
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2239
    iput v0, p1, Ljkq;->b:F

    .line 2240
    invoke-virtual {p1}, Ljkq;->invalidateSelf()V

    .line 139
    return-void
.end method
