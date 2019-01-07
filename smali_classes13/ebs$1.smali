.class final Lebs$1;
.super Ljava/lang/Object;
.source "BaseVideoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebs;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lebs;


# direct methods
.method constructor <init>(Lebs;)V
    .locals 0
    .param p1, "this$0"    # Lebs;

    .prologue
    .line 88
    iput-object p1, p0, Lebs$1;->a:Lebs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lebs$1;->a:Lebs;

    iget-object v0, v0, Lebs;->a:Lebs$a;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lebs$1;->a:Lebs;

    iget-object v0, v0, Lebs;->a:Lebs$a;

    invoke-interface {v0}, Lebs$a;->b()V

    .line 94
    :cond_0
    return-void
.end method
