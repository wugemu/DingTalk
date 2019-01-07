.class public final Lesm$4;
.super Ljava/lang/Object;
.source "RecommendCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lesi;

.field final synthetic b:Lesm;


# direct methods
.method public constructor <init>(Lesm;Lesi;)V
    .locals 0
    .param p1, "this$0"    # Lesm;

    .prologue
    .line 239
    iput-object p1, p0, Lesm$4;->b:Lesm;

    iput-object p2, p0, Lesm$4;->a:Lesi;

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
    .line 242
    iget-object v0, p0, Lesm$4;->b:Lesm;

    iget-object v1, p0, Lesm$4;->a:Lesi;

    invoke-static {v0, v1}, Lesm;->a(Lesm;Lesi;)V

    .line 243
    return-void
.end method
