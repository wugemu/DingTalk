.class final Lfyz$2;
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
    .line 45
    iput-object p1, p0, Lfyz$2;->a:Lfyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lfyz$2;->a:Lfyz;

    invoke-static {v0}, Lfyz;->a(Lfyz;)V

    .line 49
    return-void
.end method
