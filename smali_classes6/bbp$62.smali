.class public final Lbbp$62;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbcf;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbcf;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 509
    iput-object p1, p0, Lbbp$62;->b:Lbbp;

    iput-object p2, p0, Lbbp$62;->a:Lbcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 512
    iget-object v0, p0, Lbbp$62;->a:Lbcf;

    .line 3307
    if-eqz v0, :cond_0

    .line 4018
    if-eqz v0, :cond_0

    .line 4026
    if-eqz v0, :cond_0

    .line 4030
    iget-object v1, v0, Lbcf;->b:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 4031
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4035
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbjt$1;

    invoke-direct {v3, v0}, Lbjt$1;-><init>(Lbcf;)V

    invoke-virtual {v1, v2, v3}, Lbbp;->d(Ljava/lang/String;Lcma;)V

    .line 513
    :cond_0
    return-void
.end method
