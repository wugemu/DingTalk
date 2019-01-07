.class final Lebs$4;
.super Ljava/lang/Object;
.source "BaseVideoHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebs;->e()V
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
    .line 132
    iput-object p1, p0, Lebs$4;->a:Lebs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lebs$4;->a:Lebs;

    iget-object v0, v0, Lebs;->a:Lebs$a;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lebs$4;->a:Lebs;

    iget-object v0, v0, Lebs;->a:Lebs$a;

    invoke-interface {v0}, Lebs$a;->a()V

    .line 138
    :cond_0
    return-void
.end method
