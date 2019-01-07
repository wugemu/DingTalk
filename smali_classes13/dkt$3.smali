.class final Ldkt$3;
.super Ljava/lang/Object;
.source "BaseConversationAggregation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkt;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ldkt;


# direct methods
.method constructor <init>(Ldkt;Z)V
    .locals 0
    .param p1, "this$0"    # Ldkt;

    .prologue
    .line 326
    iput-object p1, p0, Ldkt$3;->b:Ldkt;

    iput-boolean p2, p0, Ldkt$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 329
    iget-object v0, p0, Ldkt$3;->b:Ldkt;

    iget-boolean v1, p0, Ldkt$3;->a:Z

    invoke-static {v0, v1}, Ldkt;->c(Ldkt;Z)V

    .line 330
    return-void
.end method
