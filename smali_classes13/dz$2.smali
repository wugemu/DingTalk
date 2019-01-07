.class final Ldz$2;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Ldz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
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
        "Landroid/support/v4/content/res/FontResourcesParserCompat$c;",
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
    .line 126
    iput-object p1, p0, Ldz$2;->a:Ldz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 126
    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 2124
    iget-boolean v0, p1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->c:Z

    .line 126
    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 126
    check-cast p1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;

    .line 3120
    iget v0, p1, Landroid/support/v4/content/res/FontResourcesParserCompat$c;->b:I

    .line 126
    return v0
.end method
