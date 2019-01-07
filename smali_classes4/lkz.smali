.class public final Llkz;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llkz$a;
    }
.end annotation


# static fields
.field private static final a:Llkz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Llkz$a;

    invoke-direct {v0}, Llkz$a;-><init>()V

    sput-object v0, Llkz;->a:Llkz$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Llgz;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Llkw;->a()Llkw;

    move-result-object v0

    return-object v0
.end method

.method public static a(Llhf;)Llgz;
    .locals 1
    .param p0, "unsubscribe"    # Llhf;

    .prologue
    .line 78
    invoke-static {p0}, Llkw;->a(Llhf;)Llkw;

    move-result-object v0

    return-object v0
.end method

.method public static b()Llgz;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Llkz;->a:Llkz$a;

    return-object v0
.end method
