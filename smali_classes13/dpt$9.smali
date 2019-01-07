.class final Ldpt$9;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt;->d(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldpt;


# direct methods
.method constructor <init>(Ldpt;J)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 350
    iput-object p1, p0, Ldpt$9;->b:Ldpt;

    iput-wide p2, p0, Ldpt$9;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    invoke-static {}, Ldhe;->a()Ldhe;

    move-result-object v0

    invoke-virtual {v0}, Ldhe;->c()Ldhi;

    move-result-object v0

    iget-wide v2, p0, Ldpt$9;->a:J

    invoke-interface {v0, v2, v3}, Ldhi;->a(J)Z

    .line 354
    return-void
.end method
