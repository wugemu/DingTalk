.class final Landroid/support/v4/provider/FontsContractCompat$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->a(Landroid/content/Context;Lfc;Landroid/widget/TextView;III)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lfc;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lfc;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$1;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$1;->b:Lfc;

    iput p3, p0, Landroid/support/v4/provider/FontsContractCompat$1;->c:I

    iput-object p4, p0, Landroid/support/v4/provider/FontsContractCompat$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    .line 1224
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$1;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$1;->b:Lfc;

    iget v2, p0, Landroid/support/v4/provider/FontsContractCompat$1;->c:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/provider/FontsContractCompat;->a(Landroid/content/Context;Lfc;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1225
    if-eqz v0, :cond_0

    .line 1226
    invoke-static {}, Landroid/support/v4/provider/FontsContractCompat;->a()Lfq;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/provider/FontsContractCompat$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_0
    return-object v0
.end method
