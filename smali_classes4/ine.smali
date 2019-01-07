.class final Line;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Linf;


# instance fields
.field final synthetic a:Lind;


# direct methods
.method constructor <init>(Lind;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Line;->a:Lind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Line;->a:Lind;

    iget-boolean v0, v0, Lind;->d:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Line;->a:Lind;

    invoke-static {v0}, Lind;->a(Lind;)V

    .line 49
    :cond_0
    return-void
.end method
