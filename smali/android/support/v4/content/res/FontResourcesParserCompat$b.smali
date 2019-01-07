.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$b;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Landroid/support/v4/content/res/FontResourcesParserCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Landroid/support/v4/content/res/FontResourcesParserCompat$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/support/v4/content/res/FontResourcesParserCompat$c;)V
    .locals 0
    .param p1, "entries"    # [Landroid/support/v4/content/res/FontResourcesParserCompat$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$b;->a:[Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 140
    return-void
.end method
