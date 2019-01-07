.class public final Lanm$2;
.super Ljava/lang/Object;
.source "AdsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanm;


# direct methods
.method public constructor <init>(Lanm;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lanm;

    .prologue
    .line 371
    iput-object p1, p0, Lanm$2;->b:Lanm;

    iput-object p2, p0, Lanm$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lanm$2;->b:Lanm;

    invoke-static {v0}, Lanm;->a(Lanm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanm$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lanm$2;->b:Lanm;

    invoke-static {v0}, Lanm;->c(Lanm;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lanm$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method
