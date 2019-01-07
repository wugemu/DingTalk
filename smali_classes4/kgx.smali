.class public interface abstract Lkgx;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lkgy$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkgx$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\"\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/coroutines/experimental/ContinuationInterceptor;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "interceptContinuation",
        "Lkotlin/coroutines/experimental/Continuation;",
        "T",
        "continuation",
        "Key",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.1"
.end annotation


# static fields
.field public static final a:Lkgx$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkgx$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkgx$a;-><init>(B)V

    sput-object v0, Lkgx;->a:Lkgx$a;

    return-void
.end method


# virtual methods
.method public abstract a()Lkgw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkgw",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
