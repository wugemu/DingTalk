.class public final Lkkq;
.super Ljava/lang/Object;
.source "AppAuthConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkkq$a;
    }
.end annotation


# static fields
.field public static final a:Lkkq;


# instance fields
.field public final b:Lklm;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lklo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lkkq$a;

    invoke-direct {v0}, Lkkq$a;-><init>()V

    .line 35
    invoke-virtual {v0}, Lkkq$a;->a()Lkkq;

    move-result-object v0

    sput-object v0, Lkkq;->a:Lkkq;

    .line 34
    return-void
.end method

.method private constructor <init>(Lklm;Lklo;)V
    .locals 0
    .param p1, "browserMatcher"    # Lklm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "connectionBuilder"    # Lklo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lkkq;->b:Lklm;

    .line 47
    iput-object p2, p0, Lkkq;->c:Lklo;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lklm;Lklo;B)V
    .locals 0
    .param p1, "x0"    # Lklm;
    .param p2, "x1"    # Lklo;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lkkq;-><init>(Lklm;Lklo;)V

    return-void
.end method
