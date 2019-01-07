.class public final Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult$FontResultStatus;
    }
.end annotation


# instance fields
.field final a:I

.field final b:[Landroid/support/v4/provider/FontsContractCompat$a;


# direct methods
.method public constructor <init>(I[Landroid/support/v4/provider/FontsContractCompat$a;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput p1, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->a:I

    .line 383
    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->b:[Landroid/support/v4/provider/FontsContractCompat$a;

    .line 384
    return-void
.end method
