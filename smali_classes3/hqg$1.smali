.class final Lhqg$1;
.super Ljava/lang/Object;
.source "PreloadHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhqg$b;

.field final synthetic b:Lhqg;


# direct methods
.method constructor <init>(Lhqg;Lhqg$b;)V
    .locals 0
    .param p1, "this$0"    # Lhqg;

    .prologue
    .line 29
    iput-object p1, p0, Lhqg$1;->b:Lhqg;

    iput-object p2, p0, Lhqg$1;->a:Lhqg$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lhqg$1;->a:Lhqg$b;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lhqg$1;->a:Lhqg$b;

    invoke-interface {v0}, Lhqg$b;->a()V

    .line 35
    :cond_0
    return-void
.end method
