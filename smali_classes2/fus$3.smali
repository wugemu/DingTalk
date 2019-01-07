.class final Lfus$3;
.super Ljava/lang/Object;
.source "CommonVerifyTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfus;


# direct methods
.method constructor <init>(Lfus;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfus;

    .prologue
    .line 256
    iput-object p1, p0, Lfus$3;->b:Lfus;

    iput-object p2, p0, Lfus$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lfus$3;->b:Lfus;

    .line 1035
    iget-object v0, v0, Lfus;->a:Lfur;

    .line 259
    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lfus$3;->b:Lfus;

    .line 2035
    iget-object v0, v0, Lfus;->a:Lfur;

    .line 260
    iget-object v1, p0, Lfus$3;->b:Lfus;

    iget-object v2, p0, Lfus$3;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lfur;->a(Lfus;Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method
