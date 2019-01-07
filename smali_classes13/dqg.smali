.class public abstract Ldqg;
.super Ljava/lang/Object;
.source "Step.java"


# instance fields
.field private a:Ljava/lang/String;

.field public c:Ldqh;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ldqg;->a:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Ldqg;->a:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 1
    .param p1, "isCancel"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Ldqg;->c:Ldqh;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Ldqg;->c:Ldqh;

    invoke-interface {v0}, Ldqh;->b()V

    .line 88
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ldqg;->c:Ldqh;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Ldqg;->c:Ldqh;

    invoke-interface {v0}, Ldqh;->a()V

    .line 79
    :cond_0
    return-void
.end method
