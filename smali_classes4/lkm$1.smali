.class final Llkm$1;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Llhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llhg",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Throwable;

    .line 1104
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->b()Llkl;

    .line 101
    return-void
.end method