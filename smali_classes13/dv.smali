.class public final Ldv;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldv$a;
    }
.end annotation


# static fields
.field private static final a:Ldv$a;

.field private static final b:Lfq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfq",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, Ldy;

    invoke-direct {v0}, Ldy;-><init>()V

    sput-object v0, Ldv;->a:Ldv$a;

    .line 62
    :goto_0
    new-instance v0, Lfq;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lfq;-><init>(I)V

    sput-object v0, Ldv;->b:Lfq;

    return-void

    .line 49
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 50
    invoke-static {}, Ldx;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    sput-object v0, Ldv;->a:Ldv$a;

    goto :goto_0

    .line 52
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 53
    new-instance v0, Ldw;

    invoke-direct {v0}, Ldw;-><init>()V

    sput-object v0, Ldv;->a:Ldv$a;

    goto :goto_0

    .line 55
    :cond_2
    new-instance v0, Ldz;

    invoke-direct {v0}, Ldz;-><init>()V

    sput-object v0, Ldv;->a:Ldv$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "style"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    sget-object v0, Ldv;->a:Ldv$a;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Ldv$a;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 133
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-eqz v6, :cond_0

    .line 134
    sget-object v0, Ldv;->b:Lfq;

    invoke-static {p1, p2, p4}, Ldv;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    return-object v6
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "style"    # I

    .prologue
    .line 144
    sget-object v0, Ldv;->a:Ldv$a;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p2, p3}, Ldv$a;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$a;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$a;Landroid/content/res/Resources;IILandroid/widget/TextView;)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$a;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "targetView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    instance-of v0, p1, Landroid/support/v4/content/res/FontResourcesParserCompat$d;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 111
    check-cast v6, Landroid/support/v4/content/res/FontResourcesParserCompat$d;

    .line 1086
    .local v6, "providerEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$d;
    iget-object v1, v6, Landroid/support/v4/content/res/FontResourcesParserCompat$d;->a:Lfc;

    .line 1090
    iget v3, v6, Landroid/support/v4/content/res/FontResourcesParserCompat$d;->c:I

    .line 1094
    iget v4, v6, Landroid/support/v4/content/res/FontResourcesParserCompat$d;->b:I

    move-object v0, p0

    move-object v2, p5

    move v5, p4

    .line 112
    invoke-static/range {v0 .. v5}, Landroid/support/v4/provider/FontsContractCompat;->a(Landroid/content/Context;Lfc;Landroid/widget/TextView;III)Landroid/graphics/Typeface;

    move-result-object v7

    .line 119
    .end local v6    # "providerEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$d;
    .end local p1    # "entry":Landroid/support/v4/content/res/FontResourcesParserCompat$a;
    .local v7, "typeface":Landroid/graphics/Typeface;
    :goto_0
    if-eqz v7, :cond_0

    .line 120
    sget-object v0, Ldv;->b:Lfq;

    invoke-static {p2, p3, p4}, Ldv;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-object v7

    .line 116
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    .restart local p1    # "entry":Landroid/support/v4/content/res/FontResourcesParserCompat$a;
    :cond_1
    sget-object v0, Ldv;->a:Ldv$a;

    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$b;

    .end local p1    # "entry":Landroid/support/v4/content/res/FontResourcesParserCompat$a;
    invoke-interface {v0, p0, p1, p2, p4}, Ldv$a;->a(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v7

    .restart local v7    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "style"    # I

    .prologue
    .line 86
    sget-object v0, Ldv;->b:Lfq;

    invoke-static {p0, p1, p2}, Ldv;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "style"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
