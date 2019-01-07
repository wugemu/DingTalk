.class final Lfyz$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfyz;


# direct methods
.method private constructor <init>(Lfyz;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lfyz$a;->a:Lfyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfyz;B)V
    .locals 0
    .param p1, "x0"    # Lfyz;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lfyz$a;-><init>(Lfyz;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lfyz$a;->a:Lfyz;

    invoke-static {v0}, Lfyz;->b(Lfyz;)V

    .line 277
    iget-object v0, p0, Lfyz$a;->a:Lfyz;

    invoke-static {v0}, Lfyz;->c(Lfyz;)V

    .line 278
    iget-object v0, p0, Lfyz$a;->a:Lfyz;

    invoke-static {v0}, Lfyz;->d(Lfyz;)V

    .line 279
    return-void
.end method
