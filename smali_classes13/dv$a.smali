.class interface abstract Ldv$a;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Landroid/support/v4/provider/FontsContractCompat$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method