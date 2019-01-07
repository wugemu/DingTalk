.class final Ljow$8;
.super Ljava/lang/Object;
.source "NormalVideoView.java"

# interfaces
.implements Ljon$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljow;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljow;


# direct methods
.method constructor <init>(Ljow;)V
    .locals 0
    .param p1, "this$0"    # Ljow;

    .prologue
    .line 155
    iput-object p1, p0, Ljow$8;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Ljow$8;->a:Ljow;

    .line 1017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Ljow$8;->a:Ljow;

    .line 2017
    iget-object v0, v0, Ljow;->d:Ljov$a;

    .line 159
    div-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Ljov$a;->b(J)V

    .line 161
    :cond_0
    return-void
.end method
