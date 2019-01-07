.class final Lbwu$5;
.super Ljava/lang/Object;
.source "FullPlayerPresenter.java"

# interfaces
.implements Ljjx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwu;


# direct methods
.method constructor <init>(Lbwu;)V
    .locals 0
    .param p1, "this$0"    # Lbwu;

    .prologue
    .line 252
    iput-object p1, p0, Lbwu$5;->a:Lbwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lbwu$5;->a:Lbwu;

    .line 2055
    iget-object v0, v0, Lbwu;->a:Lbwt$b;

    .line 270
    invoke-interface {v0}, Lbwt$b;->j()V

    .line 271
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 256
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 261
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "peerId"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lbwu$5;->a:Lbwu;

    .line 1055
    iget-object v0, v0, Lbwu;->a:Lbwt$b;

    .line 265
    invoke-interface {v0}, Lbwt$b;->i()V

    .line 266
    return-void
.end method
