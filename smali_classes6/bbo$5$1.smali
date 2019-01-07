.class final Lbbo$5$1;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo$5;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lbbo$5;


# direct methods
.method constructor <init>(Lbbo$5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lbbo$5;

    .prologue
    .line 1707
    iput-object p1, p0, Lbbo$5$1;->c:Lbbo$5;

    iput-object p2, p0, Lbbo$5$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbbo$5$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1710
    iget-object v0, p0, Lbbo$5$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lbbo$5$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    return-void
.end method
