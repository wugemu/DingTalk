.class public final Lanw;
.super Ljava/lang/Object;
.source "BindingXPropertyInterceptor.java"


# static fields
.field private static c:Lanw;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lanw;

    invoke-direct {v0}, Lanw;-><init>()V

    sput-object v0, Lanw;->c:Lanw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lanw;->a:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lanw;->b:Ljava/util/LinkedList;

    .line 44
    return-void
.end method

.method public static a()Lanw;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lanw;->c:Lanw;

    return-object v0
.end method

.method static synthetic a(Lanw;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lanw;

    .prologue
    .line 37
    iget-object v0, p0, Lanw;->b:Ljava/util/LinkedList;

    return-object v0
.end method
