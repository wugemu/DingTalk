.class final Llkm$14;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Llhk;


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
        "Llhk",
        "<",
        "Llhf;",
        "Llhf;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    check-cast p1, Llhf;

    .line 1154
    invoke-static {}, Llkp;->a()Llkp;

    move-result-object v0

    invoke-virtual {v0}, Llkp;->f()Llkq;

    invoke-static {p1}, Llkq;->a(Llhf;)Llhf;

    move-result-object v0

    .line 151
    return-object v0
.end method
