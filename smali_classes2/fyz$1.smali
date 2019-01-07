.class final Lfyz$1;
.super Ljava/lang/Object;
.source "TempEventMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfyz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfyz;


# direct methods
.method constructor <init>(Lfyz;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lfyz$1;->a:Lfyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfyz$1;->a:Lfyz;

    invoke-virtual {v0}, Lfyz;->e()V

    .line 43
    return-void
.end method
