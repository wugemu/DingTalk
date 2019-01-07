.class public abstract Lkyj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lkyi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lkyi;
.end method

.method public final b()Lkyi;
    .locals 1

    iget-object v0, p0, Lkyj;->a:Lkyi;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkyj;->a()Lkyi;

    move-result-object v0

    iput-object v0, p0, Lkyj;->a:Lkyi;

    :cond_0
    iget-object v0, p0, Lkyj;->a:Lkyi;

    return-object v0
.end method
