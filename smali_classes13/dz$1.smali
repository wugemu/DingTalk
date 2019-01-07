.class final Ldz$1;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Ldz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldz;->a([Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/support/v4/provider/FontsContractCompat$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldz$a",
        "<",
        "Landroid/support/v4/provider/FontsContractCompat$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldz;


# direct methods
.method constructor <init>(Ldz;)V
    .locals 0
    .param p1, "this$0"    # Ldz;

    .prologue
    .line 72
    iput-object p1, p0, Ldz$1;->a:Ldz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 72
    check-cast p1, Landroid/support/v4/provider/FontsContractCompat$a;

    .line 1333
    iget-boolean v0, p1, Landroid/support/v4/provider/FontsContractCompat$a;->d:Z

    .line 72
    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 72
    check-cast p1, Landroid/support/v4/provider/FontsContractCompat$a;

    .line 2326
    iget v0, p1, Landroid/support/v4/provider/FontsContractCompat$a;->c:I

    .line 72
    return v0
.end method
