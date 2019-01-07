.class final Ldpy$11;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldpy;


# direct methods
.method constructor <init>(Ldpy;)V
    .locals 0
    .param p1, "this$0"    # Ldpy;

    .prologue
    .line 504
    iput-object p1, p0, Ldpy$11;->a:Ldpy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Ldpy$11;->a:Ldpy;

    invoke-static {v0}, Ldpy;->e(Ldpy;)V

    .line 509
    return-void
.end method
