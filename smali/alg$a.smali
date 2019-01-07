.class final Lalg$a;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lalg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lalg$a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lalg$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lalg;->i(Landroid/content/Context;)V

    .line 283
    iget-object v0, p0, Lalg$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lalf;->b(Landroid/content/Context;)V

    .line 285
    iget-object v0, p0, Lalg$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lani;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
