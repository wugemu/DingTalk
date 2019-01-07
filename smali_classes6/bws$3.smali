.class public final Lbws$3;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbws;


# direct methods
.method public constructor <init>(Lbws;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbws;

    .prologue
    .line 455
    iput-object p1, p0, Lbws$3;->b:Lbws;

    iput-object p2, p0, Lbws$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 458
    iget-object v0, p0, Lbws$3;->b:Lbws;

    iget-object v1, p0, Lbws$3;->b:Lbws;

    iget-object v2, p0, Lbws$3;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lbws;->a(Lbws;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbws;->a(Lbws;[Ljava/lang/String;)[Ljava/lang/String;

    .line 459
    return-void
.end method
