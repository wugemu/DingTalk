.class public final Ldi;
.super Ldk$a;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldi$b;,
        Ldi$d;,
        Ldi$c;,
        Ldi$a;
    }
.end annotation


# static fields
.field public static final d:Ldk$a$a;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final h:Ldi$a;


# instance fields
.field public final a:[Ljava/lang/CharSequence;

.field public final b:Z

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/CharSequence;

.field private final g:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 395
    new-instance v0, Ldi$b;

    invoke-direct {v0}, Ldi$b;-><init>()V

    sput-object v0, Ldi;->h:Ldi$a;

    .line 405
    :goto_0
    new-instance v0, Ldi$1;

    invoke-direct {v0}, Ldi$1;-><init>()V

    sput-object v0, Ldi;->d:Ldk$a$a;

    return-void

    .line 396
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 397
    new-instance v0, Ldi$d;

    invoke-direct {v0}, Ldi$d;-><init>()V

    sput-object v0, Ldi;->h:Ldi$a;

    goto :goto_0

    .line 399
    :cond_1
    new-instance v0, Ldi$c;

    invoke-direct {v0}, Ldi$c;-><init>()V

    sput-object v0, Ldi;->h:Ldi$a;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/util/Set;)V
    .locals 0
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "choices"    # [Ljava/lang/CharSequence;
    .param p4, "allowFreeFormTextInput"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Z",
            "Landroid/os/Bundle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p6, "allowedDataTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ldk$a;-><init>()V

    .line 58
    iput-object p1, p0, Ldi;->e:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Ldi;->f:Ljava/lang/CharSequence;

    .line 60
    iput-object p3, p0, Ldi;->a:[Ljava/lang/CharSequence;

    .line 61
    iput-boolean p4, p0, Ldi;->b:Z

    .line 62
    iput-object p5, p0, Ldi;->g:Landroid/os/Bundle;

    .line 63
    iput-object p6, p0, Ldi;->c:Ljava/util/Set;

    .line 64
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ldi;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ldi;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ldi;->a:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Ldi;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Ldi;->b:Z

    return v0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ldi;->g:Landroid/os/Bundle;

    return-object v0
.end method
